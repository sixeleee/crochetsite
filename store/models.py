from django.contrib import admin
from django.utils.html import format_html
from django.urls import path
from django.shortcuts import render, redirect
from django.contrib import messages
from django.utils import timezone
from django.db import models
from django.core.mail import send_mail
from django.conf import settings

from django.db import models
from django.core.mail import send_mail
from django.conf import settings

from django.contrib.auth.models import User

class Product(models.Model):
    name = models.CharField(max_length=200)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    description = models.TextField()
    image = models.ImageField(upload_to='products/', blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        ordering = ['-created_at']
    
    def __str__(self):
        return self.name

class Inquiry(models.Model):
    STATUS_CHOICES = [
        ('pending', 'Pending'),
        ('responded', 'Responded'),
        ('resolved', 'Resolved'),
    ]

    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='inquiries')
    name = models.CharField(max_length=100)
    email = models.EmailField()
    message = models.TextField()
    date_sent = models.DateTimeField(auto_now_add=True)

    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='pending')
    admin_response = models.TextField(blank=True, help_text="Your response to the customer")
    response_date = models.DateTimeField(null=True, blank=True)

    class Meta:
        ordering = ['-date_sent']
        verbose_name_plural = 'Inquiries'

    def __str__(self):
        return f"Inquiry from {self.name} about {self.product.name} - {self.status}"

    def send_response_email(self):
        """Send email notification to customer when admin responds"""
        if self.admin_response and self.email:
            subject = f"Response to your inquiry about {self.product.name}"
            message = f"""
Hello {self.name},

Thank you for your inquiry about {self.product.name}.

Your Original Message:
{self.message}

Our Response:
{self.admin_response}

If you have any further questions, please don't hesitate to contact us.

Best regards,
Crochet Corner Team
            """

            try:
                send_mail(
                    subject=subject,
                    message=message,
                    from_email=settings.DEFAULT_FROM_EMAIL,
                    recipient_list=[self.email],
                    fail_silently=False,
                )
                return True
            except Exception as e:
                print(f"Error sending email: {e}")
                return False
        return False
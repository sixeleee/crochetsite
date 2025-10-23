from django.db import models
from django.contrib.auth.models import User

class Favorite(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='favorites')
    pattern = models.ForeignKey('patterns.Pattern', on_delete=models.CASCADE, null=True, blank=True, related_name='favorited_by')
    product = models.ForeignKey('store.Product', on_delete=models.CASCADE, null=True, blank=True, related_name='favorited_by')
    date_added = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        ordering = ['-date_added']
        unique_together = [
            ['user', 'pattern'],
            ['user', 'product']
        ]
    
    def __str__(self):
        if self.pattern:
            return f"{self.user.username} - {self.pattern.title}"
        elif self.product:
            return f"{self.user.username} - {self.product.name}"
        return f"{self.user.username} - Favorite"
    
    def clean(self):
        from django.core.exceptions import ValidationError
        if not self.pattern and not self.product:
            raise ValidationError('Either pattern or product must be set.')
        if self.pattern and self.product:
            raise ValidationError('Cannot favorite both pattern and product at the same time.')
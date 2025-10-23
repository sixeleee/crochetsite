from django.db import models

class Pattern(models.Model):
    CATEGORY_CHOICES = [
        ('amigurumi', 'Amigurumi'),
        ('clothing', 'Clothing'),
        ('accessories', 'Accessories'),
        ('home_decor', 'Home Decor'),
        ('blankets', 'Blankets'),
        ('toys', 'Toys'),
        ('other', 'Other'),
    ]
    
    DIFFICULTY_CHOICES = [
        ('beginner', 'Beginner'),
        ('intermediate', 'Intermediate'),
        ('advanced', 'Advanced'),
    ]
    
    title = models.CharField(max_length=200)
    category = models.CharField(max_length=50, choices=CATEGORY_CHOICES, default='other')
    difficulty = models.CharField(max_length=20, choices=DIFFICULTY_CHOICES, default='beginner')
    description = models.TextField(help_text="Short description (3-5 sentences)")
    
    materials = models.TextField(help_text="List of materials needed", blank=True)
    tutorial_steps = models.TextField(help_text="Step-by-step instructions", blank=True)
    
    youtube_link = models.URLField(help_text="YouTube video URL", blank=True, null=True)
    image = models.ImageField(upload_to='patterns/', blank=True, null=True)
    
    estimated_time = models.CharField(max_length=100, blank=True, help_text="e.g., '2-3 hours'")
    finished_size = models.CharField(max_length=100, blank=True, help_text="e.g., '10 inches tall'")
    
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        ordering = ['-created_at']
    
    def __str__(self):
        return self.title
    
    def get_youtube_embed_url(self):
        if 'watch?v=' in self.youtube_link:
            video_id = self.youtube_link.split('watch?v=')[1].split('&')[0]
            return f'https://www.youtube.com/embed/{video_id}'
        elif 'youtu.be/' in self.youtube_link:
            video_id = self.youtube_link.split('youtu.be/')[1].split('?')[0]
            return f'https://www.youtube.com/embed/{video_id}'
        return self.youtube_link

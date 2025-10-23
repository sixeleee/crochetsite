from django.contrib import admin
from .models import Pattern

@admin.register(Pattern)
class PatternAdmin(admin.ModelAdmin):
    list_display = ['title', 'category', 'difficulty', 'created_at']
    list_filter = ['category', 'difficulty', 'created_at']
    search_fields = ['title', 'description']
    list_per_page = 20
    
    fieldsets = (
        ('Basic Information', {
            'fields': ('title', 'category', 'difficulty', 'image')
        }),
        ('Description', {
            'fields': ('description',)
        }),
        ('Tutorial Content', {
            'fields': ('materials', 'tutorial_steps'),
            'description': 'Add detailed written instructions that users can download'
        }),
        ('Video', {
            'fields': ('youtube_link',)
        }),
        ('Additional Info', {
            'fields': ('estimated_time', 'finished_size'),
            'classes': ('collapse',)
        }),
    )
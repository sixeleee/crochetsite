from django.contrib import admin
from .models import Favorite

@admin.register(Favorite)
class FavoriteAdmin(admin.ModelAdmin):
    list_display = ['user', 'get_item', 'date_added']
    list_filter = ['date_added']
    search_fields = ['user__username', 'pattern__title', 'product__name']
    list_per_page = 20
    
    def get_item(self, obj):
        if obj.pattern:
            return f"Pattern: {obj.pattern.title}"
        elif obj.product:
            return f"Product: {obj.product.name}"
        return "Unknown"
    get_item.short_description = 'Favorited Item'
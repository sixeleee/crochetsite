from django.shortcuts import render, get_object_or_404
from django.core.paginator import Paginator
from django.db.models import Q
from django.http import HttpResponse
from .models import Pattern
import datetime

def pattern_list(request):
    patterns = Pattern.objects.all()
    
    search_query = request.GET.get('search', '')
    if search_query:
        patterns = patterns.filter(
            Q(title__icontains=search_query) | 
            Q(description__icontains=search_query)
        )
    
    category = request.GET.get('category', '')
    if category:
        patterns = patterns.filter(category=category)
    
    difficulty = request.GET.get('difficulty', '')
    if difficulty:
        patterns = patterns.filter(difficulty=difficulty)
    
    paginator = Paginator(patterns, 9)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    
    categories = Pattern.CATEGORY_CHOICES
    difficulties = Pattern.DIFFICULTY_CHOICES
    
    context = {
        'page_obj': page_obj,
        'categories': categories,
        'difficulties': difficulties,
        'search_query': search_query,
        'selected_category': category,
        'selected_difficulty': difficulty,
    }
    return render(request, 'patterns/pattern_list.html', context)

def pattern_detail(request, pk):
    pattern = get_object_or_404(Pattern, pk=pk)
    is_favorited = False
    
    if request.user.is_authenticated:
        from accounts.models import Favorite
        is_favorited = Favorite.objects.filter(
            user=request.user, 
            pattern=pattern
        ).exists()
    
    context = {
        'pattern': pattern,
        'is_favorited': is_favorited,
    }
    return render(request, 'patterns/pattern_detail.html', context)

def download_tutorial(request, pk):
    """Download pattern tutorial as a text file"""
    pattern = get_object_or_404(Pattern, pk=pk)
    
    content = f"""
{'='*70}
{pattern.title.upper()}
{'='*70}

Category: {pattern.get_category_display()}
Difficulty Level: {pattern.get_difficulty_display()}
{f'Estimated Time: {pattern.estimated_time}' if pattern.estimated_time else ''}
{f'Finished Size: {pattern.finished_size}' if pattern.finished_size else ''}

{'='*70}
DESCRIPTION
{'='*70}

{pattern.description}

{'='*70}
MATERIALS NEEDED
{'='*70}

{pattern.materials if pattern.materials else 'Materials list not available.'}

{'='*70}
STEP-BY-STEP INSTRUCTIONS
{'='*70}

{pattern.tutorial_steps if pattern.tutorial_steps else 'Written instructions not available. Please watch the video tutorial.'}

{'='*70}
VIDEO TUTORIAL
{'='*70}

Watch the full video tutorial at:
{pattern.youtube_link}

{'='*70}

Downloaded from Crochet Corner
Date: {datetime.datetime.now().strftime('%B %d, %Y')}

Happy Crocheting! 🧶
    """
    response = HttpResponse(content, content_type='text/plain')
    filename = f"{pattern.title.replace(' ', '_')}_Tutorial.txt"
    response['Content-Disposition'] = f'attachment; filename="{filename}"'
    
    return response

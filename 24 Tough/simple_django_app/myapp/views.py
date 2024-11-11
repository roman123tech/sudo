# myapp/views.py
from django.shortcuts import render, redirect

def login_view(request):
    if request.method == 'POST':
        # Get username and password from POST data (no authentication logic)
        username = request.POST.get('username')
        password = request.POST.get('password')
        return redirect('success')
    return render(request, 'login.html')

def success_view(request):
    return render(request, 'success.html')


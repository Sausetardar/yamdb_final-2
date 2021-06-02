from django.contrib import admin
from django.urls import path, include
from django.views.generic import TemplateView

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('api.urls')),
    path('redoc/', TemplateView.as_view(template_name='redoc.html'),
         extra_context={'schema_url': 'openapi-schema'},
         name='redoc'),
]

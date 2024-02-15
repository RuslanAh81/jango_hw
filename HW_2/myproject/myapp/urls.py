from django.urls import path
from . views import CreateProduct, OrderedProducts, ReadProduct




# urlpatterns = [
#     path('ordered-products/<int:customer_id>/', OrderedProducts.as_view(), name='ordered_products'),
#     path('create-product/', CreateProduct.as_view(), name='create_product'),
#     path('product/<int:product_id>/', ReadProduct.as_view(), name='read_product'),
# ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
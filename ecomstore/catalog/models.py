from django.db import models
from django.urls import reverse

class Category(models.Model):
    name = models.CharField(max_length=50)
    slug = models.SlugField(max_length=50, unique=True, 
            help_text= 'Unique value for product page URL, created from the name.')
    description = models.TextField()
    is_active = models.BooleanField(default=True)
    meta_keywords = models.CharField( "Meta Keywords", max_length=255,
            help_text='Comma-delimited set of SEO keywords for meta tag')
    meta_description = models.CharField("Meta Description", max_length=255, 
            help_text='Content for description meta tag')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta :
        db_table = 'categories'
        ordering = ['-created_at'] #sort by created_at, "-" mean reverse order
        verbose_name_plural = 'Categories'

    def __str__(self) :
        return self.name
    
    def get_absolute_url(self):
        return reverse('catalog_category', args=[ self.slug])
        # return ('catalog_category', (), { 'category_slug' : self.slug })
    
class Product(models.Model):
    name = models.CharField(max_length=255, unique=True)
    slug = models.SlugField(max_length=255, unique=True, 
                help_text= 'Unique value for product page URL, created from the name.')
    brand = models.CharField(max_length=50)
    sku = models.CharField(max_length=50)
    price = models.DecimalField(max_digits=9, decimal_places=2)
    old_price = models.DecimalField(max_digits=9, decimal_places=2, 
                blank=True, default=0.00) #9 999 999.99
    image = models.ImageField(upload_to='images/products/main')
    is_active = models.BooleanField(default=True)
    is_bestseller = models.BooleanField(default=False)
    is_featured = models.BooleanField(default=False)
    quantity = models.IntegerField()
    description = models.TextField()
    meta_keywords = models.CharField( "Meta Keywords", max_length=255,
            help_text='Comma-delimited set of SEO keywords for meta tag')
    meta_description = models.CharField("Meta Description", max_length=255, 
            help_text='Content for description meta tag')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    categories = models.ManyToManyField(Category)

    class Meta :
        db_table = 'products'
        ordering = ['-created_at']
    
    def __str__(self) :
        return self.name
    
    
    def get_absolute_url(self):
        return reverse('catalog_product', args=[ self.slug])

    def sale_price(self):
        if self.old_price > self.price:
            return self.price
        else: return None


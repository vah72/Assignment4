# Generated by Django 4.1.7 on 2023-03-07 08:40

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('catalog', '0002_alter_product_image'),
    ]

    operations = [
        migrations.CreateModel(
            name='Order',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('status', models.IntegerField(choices=[(1, 'Submitted'), (2, 'Processed'), (3, 'Shipped'), (4, 'Cancelled')], default=1)),
                ('last_updated', models.DateTimeField(auto_now=True)),
                ('transaction_id', models.CharField(max_length=20)),
                ('email', models.EmailField(max_length=50)),
                ('phone', models.CharField(max_length=20)),
                ('shipping_name', models.CharField(max_length=50)),
                ('shipping_address_1', models.CharField(max_length=50)),
                ('shipping_address_2', models.CharField(blank=True, max_length=50)),
                ('shipping_city', models.CharField(max_length=50)),
                ('shipping_state', models.CharField(max_length=2)),
                ('shipping_country', models.CharField(max_length=50)),
                ('shipping_zip', models.CharField(max_length=10)),
                ('billing_name', models.CharField(max_length=50)),
                ('billing_address_1', models.CharField(max_length=50)),
                ('billing_address_2', models.CharField(blank=True, max_length=50)),
                ('billing_city', models.CharField(max_length=50)),
                ('billing_state', models.CharField(max_length=2)),
                ('billing_country', models.CharField(max_length=50)),
                ('billing_zip', models.CharField(max_length=10)),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='OrderItem',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('quantity', models.IntegerField(default=1)),
                ('price', models.DecimalField(decimal_places=2, max_digits=9)),
                ('order', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='checkout.order')),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='catalog.product')),
            ],
        ),
    ]

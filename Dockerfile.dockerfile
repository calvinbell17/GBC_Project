FROM wordpress:latest

# Set environment variables
ENV WORDPRESS_DB_HOST=your_rds_endpoint
ENV WORDPRESS_DB_USER=your_database_user
ENV WORDPRESS_DB_PASSWORD=your_database_password
ENV WORDPRESS_DB_NAME=your_database_name

# Copy necessary files
COPY wp-config.php /var/www/html/wp-config.php
COPY theme/hello-world.php /var/www/html/wp-content/themes/twentytwentytwo/hello-world.php

EXPOSE 80

CMD ["apache2-foreground"]

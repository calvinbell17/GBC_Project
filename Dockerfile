FROM wordpress:latest

# Set environment variables (for WordPress entrypoint)
ENV WORDPRESS_DB_HOST=mywebdb.cujue22kskdi.us-east-1.rds.amazonaws.com
ENV WORDPRESS_DB_USER=admin
ENV WORDPRESS_DB_PASSWORD=Calvin17
ENV WORDPRESS_DB_NAME=login

# Copy custom wp-config.php
COPY wp-config.php /var/www/html/wp-config.php

# Add custom template into the default theme (example: Twenty Twenty-Two)
COPY theme/hello-world.php /var/www/html/wp-content/themes/twentytwentytwo/hello-world.php

# Expose HTTP port
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
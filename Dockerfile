FROM pihole/pihole:latest

# Increase memory limit for PHP
RUN mkdir -p /var/www/html && \
    echo "memory_limit = 512M" >> /var/www/html/.user.ini && \
    usermod -aG pihole www-data

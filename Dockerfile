FROM wordpress:latest

# Install tools
RUN apt-get update
RUN apt-get -y install wget unzip

# Download WordPress Plugins
WORKDIR /tmp/wp-plugins
RUN wget https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip
RUN unzip './*.zip' -d /usr/src/wordpress/wp-content/plugins

RUN apt-get clean
RUN rm -rf /tmp/*

# Change Level
RUN chown -R www-data:www-data /usr/src/wordpress/wp-content
WORKDIR /var/www/html

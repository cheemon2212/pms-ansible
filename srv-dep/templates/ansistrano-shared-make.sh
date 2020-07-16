`cp -pr /var/www/product-management-system/etc.deprecated /var/www/pms/shared/`
`cp -pr /var/www/product-management-system/plugins /var/www/pms/shared/`
`cp -pr /var/www/product-management-system/tests /var/www/pms/shared/`
`cp -p /var/www/product-management-system/composer.lock /var/www/pms/shared/`
`cp -p /var/www/product-management-system/.editorconfig /var/www/pms/shared/`
`cp -p /var/www/product-management-system/.gitattributes /var/www/pms/shared/`
`cp -p /var/www/product-management-system/.gitignore /var/www/pms/shared/`
`cp -p /var/www/product-management-system/.htaccess /var/www/pms/shared/`
`cp -p /var/www/product-management-system/index.php /var/www/pms/shared/`
`cp -p /var/www/product-management-system/phpunit.xml.dist /var/www/pms/shared/`
`cp -p /var/www/product-management-system/README.md /var/www/pms/shared/`
`cp -p /var/www/product-management-system/.travis.yml /var/www/pms/shared/`
`mkdir /var/www/pms/shared/tmp`
`mkdir /var/www/pms/shared/logs`
`mkdir /var/www/pms/shared/upload`
`mkdir /var/www/pms/shared/config`
`mkdir /var/www/pms/shared/webroot`
`chmod 777 /var/www/pms/shared/tmp`
`chmod 777 /var/www/pms/shared/logs`
`chmod 777 /var/www/pms/shared/upload`
`cp -p /var/www/product-management-system/config/environments.php /var/www/pms/shared/config`
`cp -p /var/www/product-management-system/webroot/health.html /var/www/pms/shared/webroot`

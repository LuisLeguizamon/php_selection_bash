#PHPVERSION=7.4
read -p "Enter PHP version (2 to select 7.2, 4 to select 7.4, 8 to select 8.0): " PHPVERSION
case $PHPVERSION in
        "2")
        PHPVERSION=7.2
        ;;
        "4")
        PHPVERSION=7.4
        ;;
        "8")
        PHPVERSION=8.0
        ;;
esac
echo $PHPVERSION
sudo update-alternatives --set php /usr/bin/php$PHPVERSION
sudo update-alternatives --set phar /usr/bin/phar$PHPVERSION
sudo update-alternatives --set phar.phar /usr/bin/phar.phar$PHPVERSION
sudo update-alternatives --set phpize /usr/bin/phpize$PHPVERSION
sudo update-alternatives --set php-config /usr/bin/php-config$PHPVERSION
php -v

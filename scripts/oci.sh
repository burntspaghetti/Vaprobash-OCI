#OCI
if [ -e /vagrant/instantclient-basic-linux.x64-11.2.0.3.0.zip ] && [ -e /vagrant/instantclient-sdk-linux.x64-11.2.0.3.0.zip ]; then

        cp /vagrant/instantclient-basic-linux.x64-11.2.0.3.0.zip /home/vagrant
        cp /vagrant/instantclient-sdk-linux.x64-11.2.0.3.0.zip /home/vagrant/
        
        if [ ! -d /home/vagrant/instantclient_11_2 ]; then

                cd /home/vagrant
                unzip instantclient-sdk-linux.x64-11.2.0.3.0.zip
                unzip instantclient-basic-linux.x64-11.2.0.3.0
                cd instantclient_11_2/
                sudo ln -s libclntsh.so.11.1 libclntsh.so
                sudo ln -s libocci.so.11.1 libocci.so

                export ORACLE_HOME=/home/vagrant/instantclient_11_2/

                mkdir -p /usr/local/src
                cd /usr/local/src
                sudo wget http://pecl.php.net/get/oci8-2.1.2.tgz
                sudo tar xzf oci8-2.1.2.tgz
                cd oci8-2.1.2
                sudo phpize
                sudo ./configure --with-oci8=shared,instantclient,/home/vagrant/instantclient_11_2/
                sudo make
                sudo make install

                sudo chown vagrant /etc/php/7.1/fpm/php.ini
                sudo echo extension=oci8.so >> /etc/php/7.1/fpm/php.ini
                sudo service php7.1-fpm restart

        fi

fi
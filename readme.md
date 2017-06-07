To connect to an Oracle database using Laravel Homestead, Nginx, and PHP7.1, add the following to the bottom of your Homestead.yaml:

  ```# OCI

  #You will need v. 11.2.0.3.0 instantclient basic and sdk in project root (linux version)

  config.vm.provision "shell", path: "https://raw.githubusercontent.com/burntspaghetti/Vaprobash-OCI/master/scripts/oci.sh", privileged: false ```

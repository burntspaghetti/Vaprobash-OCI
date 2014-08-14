# Vaprobash-OCI
Takes the default Vaprobash scripts and adds an OCI script to install the oci modules required for connecting to Oracle databases from php.

## Instructions

**First**, Copy the Vagrantfile from this repo. You may wish to use curl or wget to do this instead of cloning the repository.

```bash
# curl
$ curl -L https://raw.githubusercontent.com/jbstowe/Vaprobash-OCI/master/Vagrantfile > Vagrantfile

```

You will also need the oracle instant client basic **and** sdk zip files located [here](http://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html) alongside the Vagrantfile.
**NOTE** the defualt script works with instant client v.11.2.0.3.0 and it expects the zip files to match exactly the name when downloaded from oracle.  It is possible to change the script to work with other versions if needed.


**Second**, edit the `Vagrantfile` and uncomment which scripts you'd like to run. You can uncomment them by removing the `#` character before the `config.vm.provision` line.

> You can indeed have [multiple provisioning](http://docs.vagrantup.com/v2/provisioning/basic_usage.html) scripts when provisioning Vagrant.

**Third** and finally, run:

```bash
$ vagrant up
```

**Need Help?**
refer to the original Vaprobash repo for help with everything outside of the oci installation itself



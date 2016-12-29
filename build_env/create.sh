#!/bin/sh

### copy var to template
cp variables-centos-6.8.json vars-instance.json
### validate all
### run
packer build -var-file=vars-instance.json vagrant-centos.json

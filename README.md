# packer-centos
build centos ovf/ova and vagrant by Packer

## How to use it

The yum source changed to aliyun.com

### Step 0. Put all pkgs
put all pkgs to build_env and build_pro

### Step 1. Build the base vm
```
cd build_base
./create.sh
```
then you will get a ova file in builds which have base vm

### Step 2. Build the env vm
```
cd build_env
./create.sh
```
then you will get a ova file in builds which have base softwares

### Step 3. Build the pro env
```
cd build_pro
./create.sh
```
then you will get a ova file in builds which have all product features

# Overview
This Docker contains tools for cross-compilation to NRF52 [nRF-Command-Line-Tools](https://www.nordicsemi.com/Software-and-Tools/Development-Tools/nRF-Command-Line-Tools) as well as the mergehex and nrfutil . Base image is [hardwario/gcc-arm-embedded](https://hub.docker.com/r/hardwario/gcc-arm-embedded) contains gcc toolchain, make, cmake, zip, wget, git, doxygen, graphviz ...

## Example

### Gitlab CI
`.gitlab-ci.yml`
```yml
image: "hardwario/gcc-arm-embedded-nrf52:8-2018-q4-major"

build:
  stage: build

  script:
    - make

  artifacts:
    paths:
      - "*.bin"
    expire_in: 30 days
```

### Local
```
cd your-project-folder
docker run --rm -it -v `pwd`:/builds -u `id -u`:`id -g` hardwario/gcc-arm-embedded-nrf52:8-2018-q4-major make
```

## Tag

### 8-2018-q4-major
`gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2`
* Linux 64-bit Tarball
* MD5: f55f90d483ddb3bcf4dae5882c2094cd

### 7-2018-q2-update
`gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2`
* Linux 64-bit Tarball
* MD5: 299ebd3f1c2c90930d28ab82e5d8d6c0 

### 7-2017-q4-major 
`gcc-arm-none-eabi-7-2017-q4-major-linux.tar.bz2`
* Linux 64-bit Tarball
* MD5: d3b00ae09e847747ef11316a8b04989a

### 6-2017-q2-update 
`gcc-arm-none-eabi-6-2017-q2-update-linux.tar.bz2`
* Linux 64-bit Tarball
* MD5: 13747255194398ee08b3ba42e40e9465

## Additional packages
* nRF-Command-Line-Tools_10_2_1_Linux-amd64.deb
* JLink_Linux_V644e_x86_64.deb
* python-2.7
* python-pip
* nrfutil (over pip)

From [hardwario/gcc-arm-embedded](https://hub.docker.com/r/hardwario/gcc-arm-embedded)
* gcc-arm-none-eabi...
* make 
* cmake 
* zip 
* wget 
* git 
* doxygen 
* graphviz
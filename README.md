#reference
https://wiki.debian.org/LoongArch/sbuildQEMU
#Specific steps
##Host environment
arch: x86_64
os system：debian bookworm
1. install qemu
root@debian:~# apt install binfmt-support
root@debian:~# apt build-dep qemu-user-static
root@debian:~# git clone https://github.com/qemu/qemu.git
root@debian:~# cd qemu
root@debian:~/qemu# ./configure --static --disable-system --target-list=loongarch64-linux-user
root@debian:~/qemu# make
root@debian:~/qemu# cp build/loongarch64-linux-user/qemu-loongarch64 /usr/bin/qemu-loongarch64-static
root@debian:~/qemu# cat >/tmp/qemu-loongarch64 <<EOF
package qemu-user-static
type magic
offset 0
magic \x7fELF\x02\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x02\x01                    
mask \xff\xff\xff\xff\xff\xff\xff\xfc\x00\xff\xff\xff\xff\xff\xff\xff\xfe\xff\xff\xff
interpreter /usr/bin/qemu-loongarch64-static
EOF

root@debian:~/qemu# update-binfmts --import /tmp/qemu-loongarch64 

2. make LA rootfs
root@debian:~# apt install debootstrap sbuild debian-ports-archive-keyring
root@debian:~# debootstrap --foreign --arch=loong64 --variant=buildd --include=debian-ports-archive-keyring --verbose --components=main --keyring=/etc/apt/trusted.gpg.d/debian-ports-archive-2023.gpg --resolve-deps --extra-suites=unreleased unstable /srv/chroots/sid-loong64-sbuild/ http://ftp.ports.debian.org/debian-ports
root@debian:~# cd /srv/chroots/sid-loong64-sbuild/
root@debian:/srv/chroots/sid-loong64-sbuild# cp /usr/bin/qemu-loongarch64-static usr/bin/
root@debian:/srv/chroots/sid-loong64-sbuild# chroot .
I have no name!@loongson01:/# /debootstrap/debootstrap --second-stage
I have no name!@loongson01:/# exit
3. gcc compiler
chroot /srv/chroots/sid-loong64-sbuild
git clone https://github.com/loongson-zn/qemu-debian.git
cd qemu-debian/gcc_13.2.0-7.1_nodbg
apt install ./*
apt install gcc gfortran
mount -t proc proc proc
mount -t sysfs sys sys
mount -t devtmpfs dev dev 
mount -t devpts devpts dev/pts 
mount -t tmpfs shmfs dev/shm

4.numpy test
apt install python3.11 python3.11-dev python3 python3-pip
cd numpy
pip3 install -r test_requirements.txt
pip3 install -r build_requirements.txt
spin test

5. result 
 1 failed, 39320 passed, 208 skipped, 1303 deselected, 37 xfailed, 3 xpassed in 1619.23s (0:26:59) =
 1个失败项，是因为proc挂载的是宿主机x86的cpuinfo信息,可以忽略



 

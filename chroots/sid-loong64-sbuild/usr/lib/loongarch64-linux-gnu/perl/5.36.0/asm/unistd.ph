require '_h2ph_pre.ph';

no warnings qw(redefine misc);

eval 'sub __ARCH_WANT_SYS_CLONE () {1;}' unless defined(&__ARCH_WANT_SYS_CLONE);
eval 'sub __ARCH_WANT_SYS_CLONE3 () {1;}' unless defined(&__ARCH_WANT_SYS_CLONE3);
require 'asm-generic/unistd.ph';
1;

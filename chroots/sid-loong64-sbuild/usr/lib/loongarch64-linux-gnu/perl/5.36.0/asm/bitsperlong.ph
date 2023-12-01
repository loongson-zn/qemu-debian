require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__ASM_LOONGARCH_BITSPERLONG_H)) {
    eval 'sub __ASM_LOONGARCH_BITSPERLONG_H () {1;}' unless defined(&__ASM_LOONGARCH_BITSPERLONG_H);
    eval 'sub __BITS_PER_LONG () {( &__SIZEOF_LONG__ * 8);}' unless defined(&__BITS_PER_LONG);
    require 'asm-generic/bitsperlong.ph';
}
1;

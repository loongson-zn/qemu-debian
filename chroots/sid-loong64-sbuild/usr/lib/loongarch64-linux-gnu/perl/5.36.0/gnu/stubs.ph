require '_h2ph_pre.ph';

no warnings qw(redefine misc);

require 'bits/wordsize.ph';
if((defined(&__WORDSIZE) ? &__WORDSIZE : undef) == 64 && defined (&__loongarch_soft_float)) {
    require 'gnu/stubs-lp64s.ph';
}
if((defined(&__WORDSIZE) ? &__WORDSIZE : undef) == 64 && defined (&__loongarch_double_float)) {
    require 'gnu/stubs-lp64d.ph';
}
1;

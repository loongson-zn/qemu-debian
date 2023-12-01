require '_h2ph_pre.ph';

no warnings qw(redefine misc);

eval 'sub __WORDSIZE () {64;}' unless defined(&__WORDSIZE);
eval 'sub __WORDSIZE_TIME64_COMPAT32 () {0;}' unless defined(&__WORDSIZE_TIME64_COMPAT32);
1;

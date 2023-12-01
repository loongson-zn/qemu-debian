require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_UCONTEXT_H)) {
    eval 'sub _SYS_UCONTEXT_H () {1;}' unless defined(&_SYS_UCONTEXT_H);
    require 'features.ph';
    require 'bits/types/sigset_t.ph';
    require 'bits/types/stack_t.ph';
    if(defined(&__USE_MISC)) {
	eval 'sub LARCH_NGREG () {32;}' unless defined(&LARCH_NGREG);
	eval 'sub LARCH_REG_RA () {1;}' unless defined(&LARCH_REG_RA);
	eval 'sub LARCH_REG_SP () {3;}' unless defined(&LARCH_REG_SP);
	eval 'sub LARCH_REG_S0 () {23;}' unless defined(&LARCH_REG_S0);
	eval 'sub LARCH_REG_S1 () {24;}' unless defined(&LARCH_REG_S1);
	eval 'sub LARCH_REG_A0 () {4;}' unless defined(&LARCH_REG_A0);
	eval 'sub LARCH_REG_S2 () {25;}' unless defined(&LARCH_REG_S2);
	eval 'sub LARCH_REG_NARGS () {8;}' unless defined(&LARCH_REG_NARGS);
    }
}
1;

require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_ASM_SIGCONTEXT_H)) {
    eval 'sub _ASM_SIGCONTEXT_H () {1;}' unless defined(&_ASM_SIGCONTEXT_H);
    require 'linux/types.ph';
    require 'linux/posix_types.ph';
    eval 'sub SC_USED_FP () {(1<< 0);}' unless defined(&SC_USED_FP);
    eval 'sub SC_ADDRERR_RD () {(1<< 30);}' unless defined(&SC_ADDRERR_RD);
    eval 'sub SC_ADDRERR_WR () {(1<< 31);}' unless defined(&SC_ADDRERR_WR);
    eval 'sub CONTEXT_INFO_ALIGN () {16;}' unless defined(&CONTEXT_INFO_ALIGN);
    eval 'sub FPU_CTX_MAGIC () {0x46505501;}' unless defined(&FPU_CTX_MAGIC);
    eval 'sub FPU_CTX_ALIGN () {8;}' unless defined(&FPU_CTX_ALIGN);
}
1;

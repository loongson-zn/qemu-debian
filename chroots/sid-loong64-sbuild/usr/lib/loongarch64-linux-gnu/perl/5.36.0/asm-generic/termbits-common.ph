require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__ASM_GENERIC_TERMBITS_COMMON_H)) {
    eval 'sub __ASM_GENERIC_TERMBITS_COMMON_H () {1;}' unless defined(&__ASM_GENERIC_TERMBITS_COMMON_H);
    eval 'sub IGNBRK () {0x1;}' unless defined(&IGNBRK);
    eval 'sub BRKINT () {0x2;}' unless defined(&BRKINT);
    eval 'sub IGNPAR () {0x4;}' unless defined(&IGNPAR);
    eval 'sub PARMRK () {0x8;}' unless defined(&PARMRK);
    eval 'sub INPCK () {0x10;}' unless defined(&INPCK);
    eval 'sub ISTRIP () {0x20;}' unless defined(&ISTRIP);
    eval 'sub INLCR () {0x40;}' unless defined(&INLCR);
    eval 'sub IGNCR () {0x80;}' unless defined(&IGNCR);
    eval 'sub ICRNL () {0x100;}' unless defined(&ICRNL);
    eval 'sub IXANY () {0x800;}' unless defined(&IXANY);
    eval 'sub OPOST () {0x1;}' unless defined(&OPOST);
    eval 'sub OCRNL () {0x8;}' unless defined(&OCRNL);
    eval 'sub ONOCR () {0x10;}' unless defined(&ONOCR);
    eval 'sub ONLRET () {0x20;}' unless defined(&ONLRET);
    eval 'sub OFILL () {0x40;}' unless defined(&OFILL);
    eval 'sub OFDEL () {0x80;}' unless defined(&OFDEL);
    eval 'sub B0 () {0x;}' unless defined(&B0);
    eval 'sub B50 () {0x1;}' unless defined(&B50);
    eval 'sub B75 () {0x2;}' unless defined(&B75);
    eval 'sub B110 () {0x3;}' unless defined(&B110);
    eval 'sub B134 () {0x4;}' unless defined(&B134);
    eval 'sub B150 () {0x5;}' unless defined(&B150);
    eval 'sub B200 () {0x6;}' unless defined(&B200);
    eval 'sub B300 () {0x7;}' unless defined(&B300);
    eval 'sub B600 () {0x8;}' unless defined(&B600);
    eval 'sub B1200 () {0x9;}' unless defined(&B1200);
    eval 'sub B1800 () {0xa;}' unless defined(&B1800);
    eval 'sub B2400 () {0xb;}' unless defined(&B2400);
    eval 'sub B4800 () {0xc;}' unless defined(&B4800);
    eval 'sub B9600 () {0xd;}' unless defined(&B9600);
    eval 'sub B19200 () {0xe;}' unless defined(&B19200);
    eval 'sub B38400 () {0xf;}' unless defined(&B38400);
    eval 'sub EXTA () { &B19200;}' unless defined(&EXTA);
    eval 'sub EXTB () { &B38400;}' unless defined(&EXTB);
    eval 'sub ADDRB () {0x20000000;}' unless defined(&ADDRB);
    eval 'sub CMSPAR () {0x40000000;}' unless defined(&CMSPAR);
    eval 'sub CRTSCTS () {0x80000000;}' unless defined(&CRTSCTS);
    eval 'sub IBSHIFT () {16;}' unless defined(&IBSHIFT);
    eval 'sub TCOOFF () {0;}' unless defined(&TCOOFF);
    eval 'sub TCOON () {1;}' unless defined(&TCOON);
    eval 'sub TCIOFF () {2;}' unless defined(&TCIOFF);
    eval 'sub TCION () {3;}' unless defined(&TCION);
    eval 'sub TCIFLUSH () {0;}' unless defined(&TCIFLUSH);
    eval 'sub TCOFLUSH () {1;}' unless defined(&TCOFLUSH);
    eval 'sub TCIOFLUSH () {2;}' unless defined(&TCIOFLUSH);
}
1;
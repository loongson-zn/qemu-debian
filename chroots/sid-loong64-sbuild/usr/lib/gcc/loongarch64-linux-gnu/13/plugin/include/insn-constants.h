/* Generated automatically by the program `genconstants'
   from the machine description file `md'.  */

#ifndef GCC_INSN_CONSTANTS_H
#define GCC_INSN_CONSTANTS_H

#define TP_REGNUM 2
#define S0_REGNUM 23
#define T1_REGNUM 13
#define T0_REGNUM 12
#define RETURN_ADDR_REGNUM 1
#define MAX_PIC_BRANCH_LENGTH 100

enum unspec {
  UNSPEC_REVB_2H = 0,
  UNSPEC_REVB_4H = 1,
  UNSPEC_REVH_D = 2,
  UNSPEC_LOAD_LOW = 3,
  UNSPEC_LOAD_HIGH = 4,
  UNSPEC_STORE_WORD = 5,
  UNSPEC_MOVGR2FRH = 6,
  UNSPEC_MOVFRH2GR = 7,
  UNSPEC_FRINT = 8,
  UNSPEC_FCLASS = 9,
  UNSPEC_FMAX = 10,
  UNSPEC_FMIN = 11,
  UNSPEC_FCOPYSIGN = 12,
  UNSPEC_FTINT = 13,
  UNSPEC_FTINTRM = 14,
  UNSPEC_FTINTRP = 15,
  UNSPEC_FSCALEB = 16,
  UNSPEC_FLOGB = 17,
  UNSPEC_EH_RETURN = 18,
  UNSPEC_BITREV_4B = 19,
  UNSPEC_BITREV_8B = 20,
  UNSPEC_TLS_GD = 21,
  UNSPEC_TLS_LD = 22,
  UNSPEC_TLS_LE = 23,
  UNSPEC_TLS_IE = 24,
  UNSPEC_TIE = 25,
  UNSPEC_CRC = 26,
  UNSPEC_CRCC = 27,
  UNSPEC_LOAD_FROM_GOT = 28,
  UNSPEC_PCALAU12I = 29,
  UNSPEC_ORI_L_LO12 = 30,
  UNSPEC_LUI_L_HI20 = 31,
  UNSPEC_LUI_H_LO20 = 32,
  UNSPEC_LUI_H_HI12 = 33,
  UNSPEC_TLS_LOW = 34,
  UNSPEC_SIBCALL_VALUE_MULTIPLE_INTERNAL_1 = 35,
  UNSPEC_CALL_VALUE_MULTIPLE_INTERNAL_1 = 36,
  UNSPEC_COMPARE_AND_SWAP = 37,
  UNSPEC_COMPARE_AND_SWAP_ADD = 38,
  UNSPEC_COMPARE_AND_SWAP_SUB = 39,
  UNSPEC_COMPARE_AND_SWAP_AND = 40,
  UNSPEC_COMPARE_AND_SWAP_XOR = 41,
  UNSPEC_COMPARE_AND_SWAP_OR = 42,
  UNSPEC_COMPARE_AND_SWAP_NAND = 43,
  UNSPEC_SYNC_OLD_OP = 44,
  UNSPEC_SYNC_EXCHANGE = 45,
  UNSPEC_ATOMIC_STORE = 46,
  UNSPEC_MEMORY_BARRIER = 47,
  UNSPEC_LSX_ABSD_S = 48,
  UNSPEC_LSX_VABSD_U = 49,
  UNSPEC_LSX_VAVG_S = 50,
  UNSPEC_LSX_VAVG_U = 51,
  UNSPEC_LSX_VAVGR_S = 52,
  UNSPEC_LSX_VAVGR_U = 53,
  UNSPEC_LSX_VBITCLR = 54,
  UNSPEC_LSX_VBITCLRI = 55,
  UNSPEC_LSX_VBITREV = 56,
  UNSPEC_LSX_VBITREVI = 57,
  UNSPEC_LSX_VBITSET = 58,
  UNSPEC_LSX_VBITSETI = 59,
  UNSPEC_LSX_BRANCH_V = 60,
  UNSPEC_LSX_BRANCH = 61,
  UNSPEC_LSX_VFCMP_CAF = 62,
  UNSPEC_LSX_VFCLASS = 63,
  UNSPEC_LSX_VFCMP_CUNE = 64,
  UNSPEC_LSX_VFCVT = 65,
  UNSPEC_LSX_VFCVTH = 66,
  UNSPEC_LSX_VFCVTL = 67,
  UNSPEC_LSX_VFLOGB = 68,
  UNSPEC_LSX_VFRECIP = 69,
  UNSPEC_LSX_VFRINT = 70,
  UNSPEC_LSX_VFRSQRT = 71,
  UNSPEC_LSX_VFCMP_SAF = 72,
  UNSPEC_LSX_VFCMP_SEQ = 73,
  UNSPEC_LSX_VFCMP_SLE = 74,
  UNSPEC_LSX_VFCMP_SLT = 75,
  UNSPEC_LSX_VFCMP_SNE = 76,
  UNSPEC_LSX_VFCMP_SOR = 77,
  UNSPEC_LSX_VFCMP_SUEQ = 78,
  UNSPEC_LSX_VFCMP_SULE = 79,
  UNSPEC_LSX_VFCMP_SULT = 80,
  UNSPEC_LSX_VFCMP_SUN = 81,
  UNSPEC_LSX_VFCMP_SUNE = 82,
  UNSPEC_LSX_VFTINT_S = 83,
  UNSPEC_LSX_VFTINT_U = 84,
  UNSPEC_LSX_VSAT_S = 85,
  UNSPEC_LSX_VSAT_U = 86,
  UNSPEC_LSX_VREPLVEI = 87,
  UNSPEC_LSX_VSRAR = 88,
  UNSPEC_LSX_VSRARI = 89,
  UNSPEC_LSX_VSRLR = 90,
  UNSPEC_LSX_VSRLRI = 91,
  UNSPEC_LSX_VSHUF = 92,
  UNSPEC_LSX_VMUH_S = 93,
  UNSPEC_LSX_VMUH_U = 94,
  UNSPEC_LSX_VEXTW_S = 95,
  UNSPEC_LSX_VEXTW_U = 96,
  UNSPEC_LSX_VSLLWIL_S = 97,
  UNSPEC_LSX_VSLLWIL_U = 98,
  UNSPEC_LSX_VSRAN = 99,
  UNSPEC_LSX_VSSRAN_S = 100,
  UNSPEC_LSX_VSSRAN_U = 101,
  UNSPEC_LSX_VSRAIN = 102,
  UNSPEC_LSX_VSRAINS_S = 103,
  UNSPEC_LSX_VSRAINS_U = 104,
  UNSPEC_LSX_VSRARN = 105,
  UNSPEC_LSX_VSRLN = 106,
  UNSPEC_LSX_VSRLRN = 107,
  UNSPEC_LSX_VSSRLRN_U = 108,
  UNSPEC_LSX_VFRSTPI = 109,
  UNSPEC_LSX_VFRSTP = 110,
  UNSPEC_LSX_VSHUF4I = 111,
  UNSPEC_LSX_VBSRL_V = 112,
  UNSPEC_LSX_VBSLL_V = 113,
  UNSPEC_LSX_VEXTRINS = 114,
  UNSPEC_LSX_VMSKLTZ = 115,
  UNSPEC_LSX_VSIGNCOV = 116,
  UNSPEC_LSX_VFTINTRNE = 117,
  UNSPEC_LSX_VFTINTRP = 118,
  UNSPEC_LSX_VFTINTRM = 119,
  UNSPEC_LSX_VFTINT_W_D = 120,
  UNSPEC_LSX_VFFINT_S_L = 121,
  UNSPEC_LSX_VFTINTRZ_W_D = 122,
  UNSPEC_LSX_VFTINTRP_W_D = 123,
  UNSPEC_LSX_VFTINTRM_W_D = 124,
  UNSPEC_LSX_VFTINTRNE_W_D = 125,
  UNSPEC_LSX_VFTINTL_L_S = 126,
  UNSPEC_LSX_VFFINTH_D_W = 127,
  UNSPEC_LSX_VFFINTL_D_W = 128,
  UNSPEC_LSX_VFTINTRZL_L_S = 129,
  UNSPEC_LSX_VFTINTRZH_L_S = 130,
  UNSPEC_LSX_VFTINTRPL_L_S = 131,
  UNSPEC_LSX_VFTINTRPH_L_S = 132,
  UNSPEC_LSX_VFTINTRMH_L_S = 133,
  UNSPEC_LSX_VFTINTRML_L_S = 134,
  UNSPEC_LSX_VFTINTRNEL_L_S = 135,
  UNSPEC_LSX_VFTINTRNEH_L_S = 136,
  UNSPEC_LSX_VFTINTH_L_H = 137,
  UNSPEC_LSX_VFRINTRNE_S = 138,
  UNSPEC_LSX_VFRINTRNE_D = 139,
  UNSPEC_LSX_VFRINTRZ_S = 140,
  UNSPEC_LSX_VFRINTRZ_D = 141,
  UNSPEC_LSX_VFRINTRP_S = 142,
  UNSPEC_LSX_VFRINTRP_D = 143,
  UNSPEC_LSX_VFRINTRM_S = 144,
  UNSPEC_LSX_VFRINTRM_D = 145,
  UNSPEC_LSX_VSSRARN_S = 146,
  UNSPEC_LSX_VSSRARN_U = 147,
  UNSPEC_LSX_VSSRLN_U = 148,
  UNSPEC_LSX_VSSRLN = 149,
  UNSPEC_LSX_VSSRLRN = 150,
  UNSPEC_LSX_VLDI = 151,
  UNSPEC_LSX_VSHUF_B = 152,
  UNSPEC_LSX_VLDX = 153,
  UNSPEC_LSX_VSTX = 154,
  UNSPEC_LSX_VEXTL_QU_DU = 155,
  UNSPEC_LSX_VSETEQZ_V = 156,
  UNSPEC_LSX_VADDWEV = 157,
  UNSPEC_LSX_VADDWEV2 = 158,
  UNSPEC_LSX_VADDWEV3 = 159,
  UNSPEC_LSX_VADDWOD = 160,
  UNSPEC_LSX_VADDWOD2 = 161,
  UNSPEC_LSX_VADDWOD3 = 162,
  UNSPEC_LSX_VSUBWEV = 163,
  UNSPEC_LSX_VSUBWEV2 = 164,
  UNSPEC_LSX_VSUBWOD = 165,
  UNSPEC_LSX_VSUBWOD2 = 166,
  UNSPEC_LSX_VMULWEV = 167,
  UNSPEC_LSX_VMULWEV2 = 168,
  UNSPEC_LSX_VMULWEV3 = 169,
  UNSPEC_LSX_VMULWOD = 170,
  UNSPEC_LSX_VMULWOD2 = 171,
  UNSPEC_LSX_VMULWOD3 = 172,
  UNSPEC_LSX_VHADDW_Q_D = 173,
  UNSPEC_LSX_VHADDW_QU_DU = 174,
  UNSPEC_LSX_VHSUBW_Q_D = 175,
  UNSPEC_LSX_VHSUBW_QU_DU = 176,
  UNSPEC_LSX_VMADDWEV = 177,
  UNSPEC_LSX_VMADDWEV2 = 178,
  UNSPEC_LSX_VMADDWEV3 = 179,
  UNSPEC_LSX_VMADDWOD = 180,
  UNSPEC_LSX_VMADDWOD2 = 181,
  UNSPEC_LSX_VMADDWOD3 = 182,
  UNSPEC_LSX_VROTR = 183,
  UNSPEC_LSX_VADD_Q = 184,
  UNSPEC_LSX_VSUB_Q = 185,
  UNSPEC_LSX_VEXTH_Q_D = 186,
  UNSPEC_LSX_VEXTH_QU_DU = 187,
  UNSPEC_LSX_VMSKGEZ = 188,
  UNSPEC_LSX_VMSKNZ = 189,
  UNSPEC_LSX_VEXTL_Q_D = 190,
  UNSPEC_LSX_VSRLNI = 191,
  UNSPEC_LSX_VSRLRNI = 192,
  UNSPEC_LSX_VSSRLNI = 193,
  UNSPEC_LSX_VSSRLNI2 = 194,
  UNSPEC_LSX_VSSRLRNI = 195,
  UNSPEC_LSX_VSSRLRNI2 = 196,
  UNSPEC_LSX_VSRANI = 197,
  UNSPEC_LSX_VSRARNI = 198,
  UNSPEC_LSX_VSSRANI = 199,
  UNSPEC_LSX_VSSRANI2 = 200,
  UNSPEC_LSX_VSSRARNI = 201,
  UNSPEC_LSX_VSSRARNI2 = 202,
  UNSPEC_LSX_VPERMI = 203,
  UNSPEC_LASX_XVABSD_S = 204,
  UNSPEC_LASX_XVABSD_U = 205,
  UNSPEC_LASX_XVAVG_S = 206,
  UNSPEC_LASX_XVAVG_U = 207,
  UNSPEC_LASX_XVAVGR_S = 208,
  UNSPEC_LASX_XVAVGR_U = 209,
  UNSPEC_LASX_XVBITCLR = 210,
  UNSPEC_LASX_XVBITCLRI = 211,
  UNSPEC_LASX_XVBITREV = 212,
  UNSPEC_LASX_XVBITREVI = 213,
  UNSPEC_LASX_XVBITSET = 214,
  UNSPEC_LASX_XVBITSETI = 215,
  UNSPEC_LASX_XVFCMP_CAF = 216,
  UNSPEC_LASX_XVFCLASS = 217,
  UNSPEC_LASX_XVFCMP_CUNE = 218,
  UNSPEC_LASX_XVFCVT = 219,
  UNSPEC_LASX_XVFCVTH = 220,
  UNSPEC_LASX_XVFCVTL = 221,
  UNSPEC_LASX_XVFLOGB = 222,
  UNSPEC_LASX_XVFRECIP = 223,
  UNSPEC_LASX_XVFRINT = 224,
  UNSPEC_LASX_XVFRSQRT = 225,
  UNSPEC_LASX_XVFCMP_SAF = 226,
  UNSPEC_LASX_XVFCMP_SEQ = 227,
  UNSPEC_LASX_XVFCMP_SLE = 228,
  UNSPEC_LASX_XVFCMP_SLT = 229,
  UNSPEC_LASX_XVFCMP_SNE = 230,
  UNSPEC_LASX_XVFCMP_SOR = 231,
  UNSPEC_LASX_XVFCMP_SUEQ = 232,
  UNSPEC_LASX_XVFCMP_SULE = 233,
  UNSPEC_LASX_XVFCMP_SULT = 234,
  UNSPEC_LASX_XVFCMP_SUN = 235,
  UNSPEC_LASX_XVFCMP_SUNE = 236,
  UNSPEC_LASX_XVFTINT_S = 237,
  UNSPEC_LASX_XVFTINT_U = 238,
  UNSPEC_LASX_XVCLO = 239,
  UNSPEC_LASX_XVSAT_S = 240,
  UNSPEC_LASX_XVSAT_U = 241,
  UNSPEC_LASX_XVREPLVE0 = 242,
  UNSPEC_LASX_XVREPL128VEI = 243,
  UNSPEC_LASX_XVSRAR = 244,
  UNSPEC_LASX_XVSRARI = 245,
  UNSPEC_LASX_XVSRLR = 246,
  UNSPEC_LASX_XVSRLRI = 247,
  UNSPEC_LASX_XVSHUF = 248,
  UNSPEC_LASX_XVSHUF_B = 249,
  UNSPEC_LASX_BRANCH = 250,
  UNSPEC_LASX_BRANCH_V = 251,
  UNSPEC_LASX_XVMUH_S = 252,
  UNSPEC_LASX_XVMUH_U = 253,
  UNSPEC_LASX_MXVEXTW_U = 254,
  UNSPEC_LASX_XVSLLWIL_S = 255,
  UNSPEC_LASX_XVSLLWIL_U = 256,
  UNSPEC_LASX_XVSRAN = 257,
  UNSPEC_LASX_XVSSRAN_S = 258,
  UNSPEC_LASX_XVSSRAN_U = 259,
  UNSPEC_LASX_XVSRARN = 260,
  UNSPEC_LASX_XVSSRARN_S = 261,
  UNSPEC_LASX_XVSSRARN_U = 262,
  UNSPEC_LASX_XVSRLN = 263,
  UNSPEC_LASX_XVSSRLN_U = 264,
  UNSPEC_LASX_XVSRLRN = 265,
  UNSPEC_LASX_XVSSRLRN_U = 266,
  UNSPEC_LASX_XVFRSTPI = 267,
  UNSPEC_LASX_XVFRSTP = 268,
  UNSPEC_LASX_XVSHUF4I = 269,
  UNSPEC_LASX_XVBSRL_V = 270,
  UNSPEC_LASX_XVBSLL_V = 271,
  UNSPEC_LASX_XVEXTRINS = 272,
  UNSPEC_LASX_XVMSKLTZ = 273,
  UNSPEC_LASX_XVSIGNCOV = 274,
  UNSPEC_LASX_XVFTINTRNE_W_S = 275,
  UNSPEC_LASX_XVFTINTRNE_L_D = 276,
  UNSPEC_LASX_XVFTINTRP_W_S = 277,
  UNSPEC_LASX_XVFTINTRP_L_D = 278,
  UNSPEC_LASX_XVFTINTRM_W_S = 279,
  UNSPEC_LASX_XVFTINTRM_L_D = 280,
  UNSPEC_LASX_XVFTINT_W_D = 281,
  UNSPEC_LASX_XVFFINT_S_L = 282,
  UNSPEC_LASX_XVFTINTRZ_W_D = 283,
  UNSPEC_LASX_XVFTINTRP_W_D = 284,
  UNSPEC_LASX_XVFTINTRM_W_D = 285,
  UNSPEC_LASX_XVFTINTRNE_W_D = 286,
  UNSPEC_LASX_XVFTINTH_L_S = 287,
  UNSPEC_LASX_XVFTINTL_L_S = 288,
  UNSPEC_LASX_XVFFINTH_D_W = 289,
  UNSPEC_LASX_XVFFINTL_D_W = 290,
  UNSPEC_LASX_XVFTINTRZH_L_S = 291,
  UNSPEC_LASX_XVFTINTRZL_L_S = 292,
  UNSPEC_LASX_XVFTINTRPH_L_S = 293,
  UNSPEC_LASX_XVFTINTRPL_L_S = 294,
  UNSPEC_LASX_XVFTINTRMH_L_S = 295,
  UNSPEC_LASX_XVFTINTRML_L_S = 296,
  UNSPEC_LASX_XVFTINTRNEL_L_S = 297,
  UNSPEC_LASX_XVFTINTRNEH_L_S = 298,
  UNSPEC_LASX_XVFRINTRNE_S = 299,
  UNSPEC_LASX_XVFRINTRNE_D = 300,
  UNSPEC_LASX_XVFRINTRZ_S = 301,
  UNSPEC_LASX_XVFRINTRZ_D = 302,
  UNSPEC_LASX_XVFRINTRP_S = 303,
  UNSPEC_LASX_XVFRINTRP_D = 304,
  UNSPEC_LASX_XVFRINTRM_S = 305,
  UNSPEC_LASX_XVFRINTRM_D = 306,
  UNSPEC_LASX_XVREPLVE0_Q = 307,
  UNSPEC_LASX_XVPERM_W = 308,
  UNSPEC_LASX_XVPERMI_Q = 309,
  UNSPEC_LASX_XVPERMI_D = 310,
  UNSPEC_LASX_XVADDWEV = 311,
  UNSPEC_LASX_XVADDWEV2 = 312,
  UNSPEC_LASX_XVADDWEV3 = 313,
  UNSPEC_LASX_XVSUBWEV = 314,
  UNSPEC_LASX_XVSUBWEV2 = 315,
  UNSPEC_LASX_XVMULWEV = 316,
  UNSPEC_LASX_XVMULWEV2 = 317,
  UNSPEC_LASX_XVMULWEV3 = 318,
  UNSPEC_LASX_XVADDWOD = 319,
  UNSPEC_LASX_XVADDWOD2 = 320,
  UNSPEC_LASX_XVADDWOD3 = 321,
  UNSPEC_LASX_XVSUBWOD = 322,
  UNSPEC_LASX_XVSUBWOD2 = 323,
  UNSPEC_LASX_XVMULWOD = 324,
  UNSPEC_LASX_XVMULWOD2 = 325,
  UNSPEC_LASX_XVMULWOD3 = 326,
  UNSPEC_LASX_XVMADDWEV = 327,
  UNSPEC_LASX_XVMADDWEV2 = 328,
  UNSPEC_LASX_XVMADDWEV3 = 329,
  UNSPEC_LASX_XVMADDWOD = 330,
  UNSPEC_LASX_XVMADDWOD2 = 331,
  UNSPEC_LASX_XVMADDWOD3 = 332,
  UNSPEC_LASX_XVHADDW_Q_D = 333,
  UNSPEC_LASX_XVHSUBW_Q_D = 334,
  UNSPEC_LASX_XVHADDW_QU_DU = 335,
  UNSPEC_LASX_XVHSUBW_QU_DU = 336,
  UNSPEC_LASX_XVROTR = 337,
  UNSPEC_LASX_XVADD_Q = 338,
  UNSPEC_LASX_XVSUB_Q = 339,
  UNSPEC_LASX_XVREPLVE = 340,
  UNSPEC_LASX_XVSHUF4 = 341,
  UNSPEC_LASX_XVMSKGEZ = 342,
  UNSPEC_LASX_XVMSKNZ = 343,
  UNSPEC_LASX_XVEXTH_Q_D = 344,
  UNSPEC_LASX_XVEXTH_QU_DU = 345,
  UNSPEC_LASX_XVEXTL_Q_D = 346,
  UNSPEC_LASX_XVSRLNI = 347,
  UNSPEC_LASX_XVSRLRNI = 348,
  UNSPEC_LASX_XVSSRLNI = 349,
  UNSPEC_LASX_XVSSRLNI2 = 350,
  UNSPEC_LASX_XVSSRLRNI = 351,
  UNSPEC_LASX_XVSSRLRNI2 = 352,
  UNSPEC_LASX_XVSRANI = 353,
  UNSPEC_LASX_XVSRARNI = 354,
  UNSPEC_LASX_XVSSRANI = 355,
  UNSPEC_LASX_XVSSRANI2 = 356,
  UNSPEC_LASX_XVSSRARNI = 357,
  UNSPEC_LASX_XVSSRARNI2 = 358,
  UNSPEC_LASX_XVPERMI = 359,
  UNSPEC_LASX_XVINSVE0 = 360,
  UNSPEC_LASX_XVPICKVE = 361,
  UNSPEC_LASX_XVSSRLN = 362,
  UNSPEC_LASX_XVSSRLRN = 363,
  UNSPEC_LASX_XVEXTL_QU_DU = 364,
  UNSPEC_LASX_XVLDI = 365,
  UNSPEC_LASX_XVLDX = 366,
  UNSPEC_LASX_XVSTX = 367,
  UNSPEC_ADDRESS_FIRST = 368
};
#define NUM_UNSPEC_VALUES 369
extern const char *const unspec_strings[];

enum unspecv {
  UNSPECV_BLOCKAGE = 0,
  UNSPECV_DBAR = 1,
  UNSPECV_IBAR = 2,
  UNSPECV_CSRRD = 3,
  UNSPECV_CSRWR = 4,
  UNSPECV_CSRXCHG = 5,
  UNSPECV_IOCSRRD = 6,
  UNSPECV_IOCSRWR = 7,
  UNSPECV_CACOP = 8,
  UNSPECV_LDDIR = 9,
  UNSPECV_LDPTE = 10,
  UNSPECV_ERTN = 11,
  UNSPECV_PROBE_STACK_RANGE = 12,
  UNSPECV_MOVFCSR2GR = 13,
  UNSPECV_MOVGR2FCSR = 14,
  UNSPECV_CPUCFG = 15,
  UNSPECV_ASRTLE_D = 16,
  UNSPECV_ASRTGT_D = 17,
  UNSPECV_SYSCALL = 18,
  UNSPECV_BREAK = 19
};
#define NUM_UNSPECV_VALUES 20
extern const char *const unspecv_strings[];

#endif /* GCC_INSN_CONSTANTS_H */

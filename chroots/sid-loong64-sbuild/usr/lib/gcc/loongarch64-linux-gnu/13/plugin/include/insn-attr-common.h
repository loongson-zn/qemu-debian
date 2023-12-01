/* Generated automatically by the program `genattr-common'
   from the machine description file `md'.  */

#ifndef GCC_INSN_ATTR_COMMON_H
#define GCC_INSN_ATTR_COMMON_H

enum attr_enabled {ENABLED_NO, ENABLED_YES};
enum attr_got {GOT_UNSET, GOT_LOAD};
enum attr_jirl {JIRL_UNSET, JIRL_DIRECT, JIRL_INDIRECT};
enum attr_move_type {MOVE_TYPE_UNKNOWN, MOVE_TYPE_LOAD, MOVE_TYPE_FPLOAD, MOVE_TYPE_STORE, MOVE_TYPE_FPSTORE, MOVE_TYPE_MGTF, MOVE_TYPE_MFTG, MOVE_TYPE_IMUL, MOVE_TYPE_MOVE, MOVE_TYPE_FMOVE, MOVE_TYPE_CONST, MOVE_TYPE_SIGNEXT, MOVE_TYPE_PICK_INS, MOVE_TYPE_LOGICAL, MOVE_TYPE_ARITH, MOVE_TYPE_SLL0, MOVE_TYPE_ANDI, MOVE_TYPE_SHIFT_SHIFT};
enum attr_alu_type {ALU_TYPE_UNKNOWN, ALU_TYPE_ADD, ALU_TYPE_SUB, ALU_TYPE_NOT, ALU_TYPE_NOR, ALU_TYPE_AND, ALU_TYPE_OR, ALU_TYPE_XOR, ALU_TYPE_SIMD_ADD};
enum attr_mode {MODE_UNKNOWN, MODE_NONE, MODE_QI, MODE_HI, MODE_SI, MODE_DI, MODE_TI, MODE_SF, MODE_DF, MODE_TF, MODE_FCC, MODE_V2DI, MODE_V4SI, MODE_V8HI, MODE_V16QI, MODE_V2DF, MODE_V4SF, MODE_V4DI, MODE_V8SI, MODE_V16HI, MODE_V32QI, MODE_V4DF, MODE_V8SF};
enum attr_dword_mode {DWORD_MODE_NO, DWORD_MODE_YES};
enum attr_qword_mode {QWORD_MODE_NO, QWORD_MODE_YES};
enum attr_type {TYPE_UNKNOWN, TYPE_BRANCH, TYPE_JUMP, TYPE_CALL, TYPE_LOAD, TYPE_FPLOAD, TYPE_FPIDXLOAD, TYPE_STORE, TYPE_FPSTORE, TYPE_FPIDXSTORE, TYPE_PREFETCH, TYPE_PREFETCHX, TYPE_CONDMOVE, TYPE_MGTF, TYPE_MFTG, TYPE_CONST, TYPE_ARITH, TYPE_LOGICAL, TYPE_SHIFT, TYPE_SLT, TYPE_SIGNEXT, TYPE_CLZ, TYPE_TRAP, TYPE_IMUL, TYPE_IDIV, TYPE_MOVE, TYPE_FMOVE, TYPE_FADD, TYPE_FMUL, TYPE_FMADD, TYPE_FDIV, TYPE_FRDIV, TYPE_FABS, TYPE_FLOGB, TYPE_FNEG, TYPE_FCMP, TYPE_FCOPYSIGN, TYPE_FCVT, TYPE_FSCALEB, TYPE_FSQRT, TYPE_FRSQRT, TYPE_ACCEXT, TYPE_ACCMOD, TYPE_MULTI, TYPE_ATOMIC, TYPE_SYNCLOOP, TYPE_NOP, TYPE_GHOST, TYPE_SIMD_DIV, TYPE_SIMD_FCLASS, TYPE_SIMD_FLOG2, TYPE_SIMD_FADD, TYPE_SIMD_FCVT, TYPE_SIMD_FMUL, TYPE_SIMD_FMADD, TYPE_SIMD_FDIV, TYPE_SIMD_BITINS, TYPE_SIMD_BITMOV, TYPE_SIMD_INSERT, TYPE_SIMD_SLD, TYPE_SIMD_MUL, TYPE_SIMD_FCMP, TYPE_SIMD_FEXP2, TYPE_SIMD_INT_ARITH, TYPE_SIMD_BIT, TYPE_SIMD_SHIFT, TYPE_SIMD_SPLAT, TYPE_SIMD_FILL, TYPE_SIMD_PERMUTE, TYPE_SIMD_SHF, TYPE_SIMD_SAT, TYPE_SIMD_PCNT, TYPE_SIMD_COPY, TYPE_SIMD_BRANCH, TYPE_SIMD_CLSX, TYPE_SIMD_FMINMAX, TYPE_SIMD_LOGIC, TYPE_SIMD_MOVE, TYPE_SIMD_LOAD, TYPE_SIMD_STORE};
enum attr_cnv_mode {CNV_MODE_UNKNOWN, CNV_MODE_I2S, CNV_MODE_I2D, CNV_MODE_S2I, CNV_MODE_D2I, CNV_MODE_D2S, CNV_MODE_S2D};
#define INSN_SCHEDULING
#define DELAY_SLOTS 0

#endif /* GCC_INSN_ATTR_COMMON_H */
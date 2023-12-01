/* Definitions for loongarch-specific option handling.
   Copyright (C) 2021-2023 Free Software Foundation, Inc.
   Contributed by Loongson Ltd.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with GCC; see the file COPYING3.  If not see
<http://www.gnu.org/licenses/>.  */

#ifndef LOONGARCH_OPTS_H
#define LOONGARCH_OPTS_H

#include "loongarch-def.h"

/* Target configuration */
extern struct loongarch_target la_target;

/* Flag status */
struct loongarch_flags {
    int flt; const char* flt_str;
#define SX_FLAG_TYPE(x) ((x) < 0 ? -(x) : (x))
    int sx[2];
};

#if !defined(IN_LIBGCC2) && !defined(IN_TARGET_LIBS) && !defined(IN_RTS)

/* Initialize loongarch_target from separate option variables.  */
void
loongarch_init_target (struct loongarch_target *target,
		       int cpu_arch, int cpu_tune, int fpu, int simd,
		       int abi_base, int abi_ext, int cmodel);


/* Handler for "-m" option combinations,
   shared by the driver and the compiler proper.  */
void
loongarch_config_target (struct loongarch_target *target,
			 struct loongarch_flags *flags,
			 int follow_multilib_list_p);

/* option status feedback for "gcc --help=target -Q" */
void
loongarch_update_gcc_opt_status (struct loongarch_target *target,
				 struct gcc_options *opts,
				 struct gcc_options *opts_set);
#endif


/* Macros for common conditional expressions used in loongarch.{c,h,md} */
#define TARGET_CMODEL_NORMAL	    (la_target.cmodel == CMODEL_NORMAL)
#define TARGET_CMODEL_TINY	    (la_target.cmodel == CMODEL_TINY)
#define TARGET_CMODEL_TINY_STATIC   (la_target.cmodel == CMODEL_TINY_STATIC)
#define TARGET_CMODEL_MEDIUM	    (la_target.cmodel == CMODEL_MEDIUM)
#define TARGET_CMODEL_LARGE	    (la_target.cmodel == CMODEL_LARGE)
#define TARGET_CMODEL_EXTREME	    (la_target.cmodel == CMODEL_EXTREME)

#define TARGET_HARD_FLOAT	    (la_target.isa.fpu != ISA_EXT_NONE)
#define TARGET_HARD_FLOAT_ABI	    (la_target.abi.base == ABI_BASE_LP64D \
				     || la_target.abi.base == ABI_BASE_LP64F)

#define TARGET_SOFT_FLOAT	  (la_target.isa.fpu == ISA_EXT_NONE)
#define TARGET_SOFT_FLOAT_ABI	  (la_target.abi.base == ABI_BASE_LP64S)
#define TARGET_SINGLE_FLOAT	  (la_target.isa.fpu == ISA_EXT_FPU32)
#define TARGET_SINGLE_FLOAT_ABI	  (la_target.abi.base == ABI_BASE_LP64F)
#define TARGET_DOUBLE_FLOAT	  (la_target.isa.fpu == ISA_EXT_FPU64)
#define TARGET_DOUBLE_FLOAT_ABI	  (la_target.abi.base == ABI_BASE_LP64D)

#define TARGET_64BIT		  (la_target.isa.base == ISA_BASE_LA64V100)
#define TARGET_ABI_LP64		  (la_target.abi.base == ABI_BASE_LP64D	\
				   || la_target.abi.base == ABI_BASE_LP64F \
				   || la_target.abi.base == ABI_BASE_LP64S)

#define ISA_HAS_LSX		  (la_target.isa.simd == ISA_EXT_SIMD_LSX \
				   || la_target.isa.simd == ISA_EXT_SIMD_LASX)
#define ISA_HAS_LASX		  (la_target.isa.simd == ISA_EXT_SIMD_LASX)


/* TARGET_ macros for use in *.md template conditionals */
#define TARGET_uARCH_LA464	  (la_target.cpu_tune == CPU_LA464)

/* Note: optimize_size may vary across functions,
   while -m[no]-memcpy imposes a global constraint.  */
#define TARGET_DO_OPTIMIZE_BLOCK_MOVE_P  loongarch_do_optimize_block_move_p()

#endif /* LOONGARCH_OPTS_H */

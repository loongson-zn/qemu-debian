/* Generated automatically by the program 'build/genpreds'
   from the machine description file '../../src/gcc/config/loongarch/loongarch.md'.  */

#ifndef GCC_TM_PREDS_H
#define GCC_TM_PREDS_H

#ifdef HAVE_MACHINE_MODES
extern bool general_operand (rtx, machine_mode);
extern bool address_operand (rtx, machine_mode);
extern bool register_operand (rtx, machine_mode);
extern bool pmode_register_operand (rtx, machine_mode);
extern bool scratch_operand (rtx, machine_mode);
extern bool immediate_operand (rtx, machine_mode);
extern bool const_int_operand (rtx, machine_mode);
extern bool const_scalar_int_operand (rtx, machine_mode);
extern bool const_double_operand (rtx, machine_mode);
extern bool nonimmediate_operand (rtx, machine_mode);
extern bool nonmemory_operand (rtx, machine_mode);
extern bool push_operand (rtx, machine_mode);
extern bool pop_operand (rtx, machine_mode);
extern bool memory_operand (rtx, machine_mode);
extern bool indirect_operand (rtx, machine_mode);
extern bool ordered_comparison_operator (rtx, machine_mode);
extern bool comparison_operator (rtx, machine_mode);
extern bool const_uns_arith_operand (rtx, machine_mode);
extern bool uns_arith_operand (rtx, machine_mode);
extern bool const_lu32i_operand (rtx, machine_mode);
extern bool const_lu52i_operand (rtx, machine_mode);
extern bool const_arith_operand (rtx, machine_mode);
extern bool const_dual_imm12_operand (rtx, machine_mode);
extern bool const_imm16_operand (rtx, machine_mode);
extern bool const_addu16i_operand (rtx, machine_mode);
extern bool const_addu16i_imm12_di_operand (rtx, machine_mode);
extern bool const_addu16i_imm12_si_operand (rtx, machine_mode);
extern bool const_dual_addu16i_operand (rtx, machine_mode);
extern bool arith_operand (rtx, machine_mode);
extern bool plus_di_operand (rtx, machine_mode);
extern bool plus_si_extend_operand (rtx, machine_mode);
extern bool plus_si_operand (rtx, machine_mode);
extern bool const_immalsl_operand (rtx, machine_mode);
extern bool const_lsx_branch_operand (rtx, machine_mode);
extern bool const_uimm3_operand (rtx, machine_mode);
extern bool const_8_to_11_operand (rtx, machine_mode);
extern bool const_12_to_15_operand (rtx, machine_mode);
extern bool const_uimm4_operand (rtx, machine_mode);
extern bool const_uimm5_operand (rtx, machine_mode);
extern bool const_uimm6_operand (rtx, machine_mode);
extern bool const_uimm7_operand (rtx, machine_mode);
extern bool const_uimm8_operand (rtx, machine_mode);
extern bool const_uimm14_operand (rtx, machine_mode);
extern bool const_uimm15_operand (rtx, machine_mode);
extern bool const_imm5_operand (rtx, machine_mode);
extern bool const_imm10_operand (rtx, machine_mode);
extern bool const_imm12_operand (rtx, machine_mode);
extern bool const_imm13_operand (rtx, machine_mode);
extern bool reg_imm10_operand (rtx, machine_mode);
extern bool aq8b_operand (rtx, machine_mode);
extern bool aq8h_operand (rtx, machine_mode);
extern bool aq8w_operand (rtx, machine_mode);
extern bool aq8d_operand (rtx, machine_mode);
extern bool aq10b_operand (rtx, machine_mode);
extern bool aq10h_operand (rtx, machine_mode);
extern bool aq10w_operand (rtx, machine_mode);
extern bool aq10d_operand (rtx, machine_mode);
extern bool aq12b_operand (rtx, machine_mode);
extern bool aq12h_operand (rtx, machine_mode);
extern bool aq12w_operand (rtx, machine_mode);
extern bool aq12d_operand (rtx, machine_mode);
extern bool sle_operand (rtx, machine_mode);
extern bool sleu_operand (rtx, machine_mode);
extern bool const_0_operand (rtx, machine_mode);
extern bool const_m1_operand (rtx, machine_mode);
extern bool reg_or_m1_operand (rtx, machine_mode);
extern bool reg_or_0_operand (rtx, machine_mode);
extern bool const_1_operand (rtx, machine_mode);
extern bool reg_or_1_operand (rtx, machine_mode);
extern bool const_exp_2_operand (rtx, machine_mode);
extern bool const_exp_4_operand (rtx, machine_mode);
extern bool const_exp_8_operand (rtx, machine_mode);
extern bool const_exp_16_operand (rtx, machine_mode);
extern bool const_exp_32_operand (rtx, machine_mode);
extern bool const_0_or_1_operand (rtx, machine_mode);
extern bool const_0_to_3_operand (rtx, machine_mode);
extern bool const_0_to_7_operand (rtx, machine_mode);
extern bool const_2_or_3_operand (rtx, machine_mode);
extern bool const_4_to_7_operand (rtx, machine_mode);
extern bool const_8_to_15_operand (rtx, machine_mode);
extern bool const_16_to_31_operand (rtx, machine_mode);
extern bool qi_mask_operand (rtx, machine_mode);
extern bool hi_mask_operand (rtx, machine_mode);
extern bool lu52i_mask_operand (rtx, machine_mode);
extern bool si_mask_operand (rtx, machine_mode);
extern bool low_bitmask_operand (rtx, machine_mode);
extern bool d_operand (rtx, machine_mode);
extern bool db4_operand (rtx, machine_mode);
extern bool db7_operand (rtx, machine_mode);
extern bool db8_operand (rtx, machine_mode);
extern bool ib3_operand (rtx, machine_mode);
extern bool sb4_operand (rtx, machine_mode);
extern bool sb5_operand (rtx, machine_mode);
extern bool sb8_operand (rtx, machine_mode);
extern bool sd8_operand (rtx, machine_mode);
extern bool ub4_operand (rtx, machine_mode);
extern bool ub8_operand (rtx, machine_mode);
extern bool uh4_operand (rtx, machine_mode);
extern bool uw4_operand (rtx, machine_mode);
extern bool uw5_operand (rtx, machine_mode);
extern bool uw6_operand (rtx, machine_mode);
extern bool uw8_operand (rtx, machine_mode);
extern bool addiur2_operand (rtx, machine_mode);
extern bool addiusp_operand (rtx, machine_mode);
extern bool andi16_operand (rtx, machine_mode);
extern bool movep_src_register (rtx, machine_mode);
extern bool movep_src_operand (rtx, machine_mode);
extern bool fcc_reload_operand (rtx, machine_mode);
extern bool muldiv_target_operand (rtx, machine_mode);
extern bool const_call_insn_operand (rtx, machine_mode);
extern bool call_insn_operand (rtx, machine_mode);
extern bool is_const_call_local_symbol (rtx, machine_mode);
extern bool is_const_call_no_local_symbol (rtx, machine_mode);
extern bool splittable_const_int_operand (rtx, machine_mode);
extern bool move_operand (rtx, machine_mode);
extern bool symbolic_operand (rtx, machine_mode);
extern bool equality_operator (rtx, machine_mode);
extern bool order_operator (rtx, machine_mode);
extern bool loongarch_cstore_operator (rtx, machine_mode);
extern bool small_data_pattern (rtx, machine_mode);
extern bool non_volatile_mem_operand (rtx, machine_mode);
extern bool const_vector_same_val_operand (rtx, machine_mode);
extern bool const_vector_same_simm5_operand (rtx, machine_mode);
extern bool const_vector_same_uimm5_operand (rtx, machine_mode);
extern bool const_vector_same_ximm5_operand (rtx, machine_mode);
extern bool const_vector_same_uimm6_operand (rtx, machine_mode);
extern bool par_const_vector_shf_set_operand (rtx, machine_mode);
extern bool reg_or_vector_same_val_operand (rtx, machine_mode);
extern bool reg_or_vector_same_simm5_operand (rtx, machine_mode);
extern bool reg_or_vector_same_uimm5_operand (rtx, machine_mode);
extern bool reg_or_vector_same_ximm5_operand (rtx, machine_mode);
extern bool reg_or_vector_same_uimm6_operand (rtx, machine_mode);
#endif /* HAVE_MACHINE_MODES */

#define CONSTRAINT_NUM_DEFINED_P 1
enum constraint_num
{
  CONSTRAINT__UNKNOWN = 0,
  CONSTRAINT_r,
  CONSTRAINT_e,
  CONSTRAINT_f,
  CONSTRAINT_j,
  CONSTRAINT_q,
  CONSTRAINT_z,
  CONSTRAINT_I,
  CONSTRAINT_J,
  CONSTRAINT_K,
  CONSTRAINT_La,
  CONSTRAINT_Lb,
  CONSTRAINT_Lc,
  CONSTRAINT_Ld,
  CONSTRAINT_Le,
  CONSTRAINT_M,
  CONSTRAINT_N,
  CONSTRAINT_O,
  CONSTRAINT_P,
  CONSTRAINT_w,
  CONSTRAINT_o,
  CONSTRAINT_k,
  CONSTRAINT_m,
  CONSTRAINT_R,
  CONSTRAINT_ZC,
  CONSTRAINT_ZB,
  CONSTRAINT_p,
  CONSTRAINT_ZD,
  CONSTRAINT_b,
  CONSTRAINT_c,
  CONSTRAINT_l,
  CONSTRAINT_u,
  CONSTRAINT_v,
  CONSTRAINT_G,
  CONSTRAINT_YG,
  CONSTRAINT_YA,
  CONSTRAINT_YB,
  CONSTRAINT_Yb,
  CONSTRAINT_Yh,
  CONSTRAINT_Yw,
  CONSTRAINT_Yx,
  CONSTRAINT_YI,
  CONSTRAINT_YC,
  CONSTRAINT_YZ,
  CONSTRAINT_Unv5,
  CONSTRAINT_Uuv5,
  CONSTRAINT_Usv5,
  CONSTRAINT_Uuv6,
  CONSTRAINT_Urv8,
  CONSTRAINT_S,
  CONSTRAINT_V,
  CONSTRAINT__l,
  CONSTRAINT__g,
  CONSTRAINT_i,
  CONSTRAINT_s,
  CONSTRAINT_n,
  CONSTRAINT_E,
  CONSTRAINT_F,
  CONSTRAINT_X,
  CONSTRAINT_Yd,
  CONSTRAINT__LIMIT
};

extern enum constraint_num lookup_constraint_1 (const char *);
extern const unsigned char lookup_constraint_array[];

/* Return the constraint at the beginning of P, or CONSTRAINT__UNKNOWN if it
   isn't recognized.  */

static inline enum constraint_num
lookup_constraint (const char *p)
{
  unsigned int index = lookup_constraint_array[(unsigned char) *p];
  return (index == UCHAR_MAX
          ? lookup_constraint_1 (p)
          : (enum constraint_num) index);
}

extern bool (*constraint_satisfied_p_array[]) (rtx);

/* Return true if X satisfies constraint C.  */

static inline bool
constraint_satisfied_p (rtx x, enum constraint_num c)
{
  int i = (int) c - (int) CONSTRAINT_I;
  return i >= 0 && constraint_satisfied_p_array[i] (x);
}

static inline bool
insn_extra_register_constraint (enum constraint_num c)
{
  return c >= CONSTRAINT_r && c <= CONSTRAINT_z;
}

static inline bool
insn_extra_memory_constraint (enum constraint_num c)
{
  return c >= CONSTRAINT_w && c <= CONSTRAINT_ZB;
}

static inline bool
insn_extra_special_memory_constraint (enum constraint_num)
{
  return false;
}

static inline bool
insn_extra_relaxed_memory_constraint (enum constraint_num)
{
  return false;
}

static inline bool
insn_extra_address_constraint (enum constraint_num c)
{
  return c >= CONSTRAINT_p && c <= CONSTRAINT_ZD;
}

static inline void
insn_extra_constraint_allows_reg_mem (enum constraint_num c,
				      bool *allows_reg, bool *allows_mem)
{
  if (c >= CONSTRAINT_b && c <= CONSTRAINT_Urv8)
    return;
  if (c >= CONSTRAINT_S && c <= CONSTRAINT_S)
    {
      *allows_reg = true;
      return;
    }
  if (c >= CONSTRAINT_V && c <= CONSTRAINT__g)
    {
      *allows_mem = true;
      return;
    }
  (void) c;
  *allows_reg = true;
  *allows_mem = true;
}

static inline size_t
insn_constraint_len (char fc, const char *str ATTRIBUTE_UNUSED)
{
  switch (fc)
    {
    case 'L': return 2;
    case 'U': return 4;
    case 'Y': return 2;
    case 'Z': return 2;
    default: break;
    }
  return 1;
}

#define CONSTRAINT_LEN(c_,s_) insn_constraint_len (c_,s_)

extern enum reg_class reg_class_for_constraint_1 (enum constraint_num);

static inline enum reg_class
reg_class_for_constraint (enum constraint_num c)
{
  if (insn_extra_register_constraint (c))
    return reg_class_for_constraint_1 (c);
  return NO_REGS;
}

extern bool insn_const_int_ok_for_constraint (HOST_WIDE_INT, enum constraint_num);
#define CONST_OK_FOR_CONSTRAINT_P(v_,c_,s_) \
    insn_const_int_ok_for_constraint (v_, lookup_constraint (s_))

enum constraint_type
{
  CT_REGISTER,
  CT_CONST_INT,
  CT_MEMORY,
  CT_SPECIAL_MEMORY,
  CT_RELAXED_MEMORY,
  CT_ADDRESS,
  CT_FIXED_FORM
};

static inline enum constraint_type
get_constraint_type (enum constraint_num c)
{
  if (c >= CONSTRAINT_p)
    {
      if (c >= CONSTRAINT_b)
        return CT_FIXED_FORM;
      return CT_ADDRESS;
    }
  if (c >= CONSTRAINT_w)
    return CT_MEMORY;
  if (c >= CONSTRAINT_I)
    return CT_CONST_INT;
  return CT_REGISTER;
}
#endif /* tm-preds.h */

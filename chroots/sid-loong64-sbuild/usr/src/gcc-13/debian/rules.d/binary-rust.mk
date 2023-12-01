ifneq ($(DEB_STAGE),rtlibs)
  ifeq (0,1)
  #ifneq (,$(filter yes, $(biarch64) $(biarch32) $(biarchn32) $(biarchx32) $(biarchsf)))
  #  arch_binaries  := $(arch_binaries) grs-multi
  #endif
  endif
  arch_binaries := $(arch_binaries) grs

  #ifeq ($(with_rsdev),yes)
  #  $(lib_binaries) += libgrs-dev
  #endif
  #ifeq ($(with_libgrs),yes)
  #  $(lib_binaries) += libgrs
  #endif

  #ifneq ($(DEB_CROSS),yes)
  #  indep_binaries := $(indep_binaries) grs-doc
  #endif

  ifeq (0,1)
  ifeq ($(with_lib64grsdev),yes)
    $(lib_binaries)	+= lib64grs-dev
  endif
  ifeq ($(with_lib32grsdev),yes)
    $(lib_binaries)	+= lib32grs-dev
  endif
  ifeq ($(with_libn32grsdev),yes)
    $(lib_binaries)	+= libn32grs-dev
  endif
  ifeq ($(with_libx32grsdev),yes)
    $(lib_binaries)	+= libx32grs-dev
  endif
  ifeq ($(with_libhfgrsdev),yes)
    $(lib_binaries)	+= libhfgrs-dev
  endif
  ifeq ($(with_libsfgrsdev),yes)
    $(lib_binaries)	+= libsfgrs-dev
  endif

  ifeq ($(with_lib64grs),yes)
    $(lib_binaries)	+= lib64grs
  endif
  ifeq ($(with_lib32grs),yes)
    $(lib_binaries)	+= lib32grs
  endif
  ifeq ($(with_libn32grs),yes)
    $(lib_binaries)	+= libn32grs
  endif
  ifeq ($(with_libx32grs),yes)
    $(lib_binaries)	+= libx32grs
  endif
  ifeq ($(with_libhfgrs),yes)
    $(lib_binaries)	+= libhfgrs
  endif
  ifeq ($(with_libsfgrs),yes)
    $(lib_binaries)	+= libsfgrs
  endif
  endif
endif

p_grs           = gccrs$(pkg_ver)$(cross_bin_arch)
p_grs_m		= gccrs$(pkg_ver)-multilib$(cross_bin_arch)
p_libgrs	= libgrs-$(GRS_SONAME)
p_libgrsdev	= libgrs$(pkg_ver)-dev
p_grsd		= grs$(pkg_ver)-doc

d_grs           = debian/$(p_grs)
d_grs_m		= debian/$(p_grs_m)
d_libgrs	= debian/$(p_libgrs)
d_libgrsdev	= debian/$(p_libgrsdev)
d_grsd		= debian/$(p_grsd)

dirs_grs = \
	$(PF)/bin \
	$(PF)/share/man/man1 \
	$(gcc_lexec_dir)
#ifneq ($(DEB_CROSS),yes)
#  dirs_grs += \
#	$(grs_include_dir)
#endif

files_grs = \
	$(PF)/bin/$(cmd_prefix)gccrs$(pkg_ver) \
	$(gcc_lexec_dir)/rust1
#    files_grs += \
#	$(PF)/share/man/man1/$(cmd_prefix)gccrs$(pkg_ver).1

dirs_libgrs = \
	$(PF)/lib \
	$(grs_include_dir) \
	$(gcc_lib_dir)

$(binary_stamp)-grs: $(install_stamp)
	dh_testdir
	dh_testroot
	mv $(install_stamp) $(install_stamp)-tmp

	rm -rf $(d_grs)
	dh_installdirs -p$(p_grs) $(dirs_grs)

	dh_installdocs -p$(p_grs)
	dh_installchangelogs -p$(p_grs) #src/gcc/rs/ChangeLog

	$(dh_compat2) dh_movefiles -p$(p_grs) $(files_grs)

ifeq ($(unprefixed_names),yes)
	ln -sf $(cmd_prefix)gccrs$(pkg_ver) \
	    $(d_grs)/$(PF)/bin/gccrs$(pkg_ver)
#	ln -sf $(cmd_prefix)gccrs$(pkg_ver).1 \
#	    $(d_grs)/$(PF)/share/man/man1/gccrs$(pkg_ver).1
endif
	dh_installdirs -p$(p_grs)
	debian/dh_doclink -p$(p_grs) $(p_xbase)

ifeq (,$(findstring nostrip,$(DEB_BUILD_OPTONS)))
	$(DWZ) \
	  $(d_grs)/$(gcc_lexec_dir)/rust1
endif
	dh_strip -p$(p_grs) \
	  $(if $(unstripped_exe),-X/rustcc1)
	dh_shlibdeps -p$(p_grs)

	mkdir -p $(d_grs)/usr/share/lintian/overrides
	echo '$(p_grs) binary: hardening-no-pie' \
	  > $(d_grs)/usr/share/lintian/overrides/$(p_grs)

	echo $(p_grs) >> debian/arch_binaries

	find $(d_grs) -type d -empty -delete

	trap '' 1 2 3 15; touch $@; mv $(install_stamp)-tmp $(install_stamp)

$(binary_stamp)-grs-multi: $(install_stamp)
	dh_testdir
	dh_testroot
	mv $(install_stamp) $(install_stamp)-tmp

	rm -rf $(d_grs_m)
	dh_installdirs -p$(p_grs_m) $(docdir)

	debian/dh_doclink -p$(p_grs_m) $(p_xbase)

	dh_strip -p$(p_grs_m)
	dh_shlibdeps -p$(p_grs_m)
	echo $(p_grs_m) >> debian/arch_binaries

	trap '' 1 2 3 15; touch $@; mv $(install_stamp)-tmp $(install_stamp)

define __do_libgrs
	dh_testdir
	dh_testroot
	mv $(install_stamp) $(install_stamp)-tmp

	rm -rf $(d_l) $(d_d)
	dh_installdirs -p$(p_l) \
		$(usr_lib$(2))
	$(dh_compat2) dh_movefiles -p$(p_l) \
		$(usr_lib$(2))/librspim.so.* \
		$(usr_lib$(2))/librscor.so.* \
		$(usr_lib$(2))/librsiso.so.* \
		$(usr_lib$(2))/librslog.so.* \
		$(usr_lib$(2))/librsmin.so.*

	debian/dh_doclink -p$(p_l) $(p_lbase)
	$(if $(with_dbg),debian/dh_doclink -p$(p_d) $(p_lbase))

	$(call do_strip_lib_dbg, $(p_l), $(p_d), $(v_dbg),,)
	: ln -sf libgrs.symbols debian/$(p_l).symbols
	$(cross_makeshlibs) dh_makeshlibs $(ldconfig_arg) -p$(p_l) \
		-- -a$(call mlib_to_arch,$(2)) || echo XXXXXXXXXXX ERROR $(p_l)
	rm -f debian/$(p_l).symbols
	$(call cross_mangle_shlibs,$(p_l))
	$(ignshld)DIRNAME=$(subst n,,$(2)) $(cross_shlibdeps) dh_shlibdeps -p$(p_l) \
		$(call shlibdirs_to_search, \
			$(subst grs-$(GRS_SONAME),gcc-s$(GCC_SONAME),$(p_l)) \
		,$(2)) \
		$(if $(filter yes, $(with_common_libs)),,-- -Ldebian/shlibs.common$(2))
	$(call cross_mangle_substvars,$(p_l))

	mkdir -p $(d_l)/usr/share/lintian/overrides; \
	( \
	  echo "$(p_l) binary: dev-pkg-without-shlib-symlink"; \
	  echo "$(p_l) binary: shared-lib-without-dependency-information"; \
	  echo "$(p_l) binary: package-name-doesnt-match-sonames"; \
	  echo "$(p_l) binary: library-not-linked-against-libc"; \
	) >> $(d_l)/usr/share/lintian/overrides/$(p_l)

	dh_lintian -p$(p_l)
	echo $(p_l) $(if $(with_dbg), $(p_d)) >> debian/$(lib_binaries)

	trap '' 1 2 3 15; touch $@; mv $(install_stamp)-tmp $(install_stamp)
endef

# install_grs_lib(lib,soname,flavour,package,subdir)
#define install_grs_lib
#	mkdir -p debian/$(4)/$(gcc_lib_dir$(3))/$(5)
#	mv $(d)/$(usr_lib$(3))/$(1)*.a debian/$(4)/$(gcc_lib_dir$(3))/$(5)/.
#	rm -f $(d)/$(usr_lib$(3))/$(1)*.{la,so}
#	dh_link -p$(4) \
#	  /$(usr_lib$(3))/$(1).so.$(2) /$(gcc_lib_dir$(3))/$(5)/$(1).so
#endef
define install_grs_lib
	dh_link -p$(4) \
	  /$(usr_lib$(3))/$(1).so.$(2) /$(gcc_lib_dir$(3))/$(5)/$(1).so
	rm -f $(d)/$(usr_lib$(3))/$(1).so
	rm -f $(d)/$(usr_lib$(3))/$(1).a
endef

define __do_libgrs_dev
	dh_testdir
	dh_testroot
	mv $(install_stamp) $(install_stamp)-tmp

	rm -rf $(d_l)
	dh_installdirs -p$(p_l) \
		$(gcc_lib_dir$(2))

	: # install_grs_lib calls needed?

	$(if $(2),,
	$(dh_compat2) dh_movefiles -p$(p_l) \
		$(gcc_lexec_dir)/rs
	)

	$(call install_grs_lib,librspim,$(GRS_SONAME),$(2),$(p_l),rs/rspim)
	$(call install_grs_lib,librscor,$(GRS_SONAME),$(2),$(p_l),rs/rscor)
	$(call install_grs_lib,librsiso,$(GRS_SONAME),$(2),$(p_l),rs/rsiso)
	$(call install_grs_lib,librslog,$(GRS_SONAME),$(2),$(p_l),rs/rslog)
	$(call install_grs_lib,librsmin,$(GRS_SONAME),$(2),$(p_l),rs/rsmin)

	: # included in grs package
	rm -f $(d_l)/$(grs_include_dir)/__entrypoint.di

	debian/dh_doclink -p$(p_l) \
		$(if $(filter yes,$(with_separate_grs)),$(p_grs),$(p_lbase))
	echo $(p_l) >> debian/$(lib_binaries)

	trap '' 1 2 3 15; touch $@; mv $(install_stamp)-tmp $(install_stamp)
endef

do_libgrs = $(call __do_libgrs,lib$(1)grs-$(GRS_SONAME),$(1))
do_libgrs_dev = $(call __do_libgrs_dev,lib$(1)grs-$(BASE_VERSION)-dev,$(1))

# ----------------------------------------------------------------------
$(binary_stamp)-grs-doc: $(build_html_stamp) $(install_stamp)
	dh_testdir
	dh_testroot
	mv $(install_stamp) $(install_stamp)-tmp

	rm -rf $(d_grsd)
	dh_installdirs -p$(p_grsd) \
		$(docdir)/$(p_grs) \
		$(docdir)/$(p_xbase)/rs \
		$(PF)/share/info
	cp -p $(builddir)/gcc/doc/rs.info $(d_grsd)/$(PF)/share/info/grs.info
	cp -p html/grs.html $(d_grsd)/$(docdir)/$(p_xbase)/rs/
	ln -sf ../$(p_xbase)/rs/grs.html $(d_grsd)/$(docdir)/$(p_grs)/grs.html

	debian/dh_doclink -p$(p_grsd) $(p_xbase)
	dh_installdocs -p$(p_grsd)
	rm -f $(d_grsd)/$(docdir)/$(p_xbase)/copyright

	echo $(p_grsd) >> debian/indep_binaries

	trap '' 1 2 3 15; touch $@; mv $(install_stamp)-tmp $(install_stamp)


$(binary_stamp)-libgrs: $(install_stamp)
	$(call do_libgrs,)

$(binary_stamp)-lib64grs: $(install_stamp)
	$(call do_libgrs,64)

$(binary_stamp)-lib32grs: $(install_stamp)
	$(call do_libgrs,32)

$(binary_stamp)-libn32grs: $(install_stamp)
	$(call do_libgrs,n32)

$(binary_stamp)-libx32grs: $(install_stamp)
	$(call do_libgrs,x32)

$(binary_stamp)-libhfgrs: $(install_stamp)
	$(call do_libgrs,hf)

$(binary_stamp)-libsfgrs: $(install_stamp)
	$(call do_libgrs,sf)


$(binary_stamp)-libgrs-dev: $(install_stamp)
	$(call do_libgrs_dev,)

$(binary_stamp)-lib64grs-dev: $(install_stamp)
	$(call do_libgrs_dev,64)

$(binary_stamp)-lib32grs-dev: $(install_stamp)
	$(call do_libgrs_dev,32)

$(binary_stamp)-libx32grs-dev: $(install_stamp)
	$(call do_libgrs_dev,x32)

$(binary_stamp)-libn32grs-dev: $(install_stamp)
	$(call do_libgrs_dev,n32)

$(binary_stamp)-libhfgrs-dev: $(install_stamp)
	$(call do_libgrs_dev,hf)

$(binary_stamp)-libsfgrs-dev: $(install_stamp)
	$(call do_libgrs_dev,sf)

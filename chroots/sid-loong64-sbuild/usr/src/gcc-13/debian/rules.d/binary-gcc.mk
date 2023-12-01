ifneq ($(DEB_STAGE),rtlibs)
  ifneq (,$(filter yes, $(biarch64) $(biarch32) $(biarchn32) $(biarchx32) $(biarchhf) $(biarchsf)))
    arch_binaries  := $(arch_binaries) gcc-multi
  endif
  ifeq ($(with_plugins),yes)
    arch_binaries  := $(arch_binaries) gcc-plugindev
  endif

  arch_binaries  := $(arch_binaries) gcc

  ifneq ($(DEB_CROSS),yes)
    ifneq ($(GFDL_INVARIANT_FREE),yes)
      indep_binaries := $(indep_binaries) gcc-doc
    endif
    ifeq ($(with_nls),yes)
      indep_binaries := $(indep_binaries) gcc-locales
    endif
  endif

  ifeq ($(build_type),build-native)
    arch_binaries  := $(arch_binaries) testresults
  endif
endif

# gcc must be moved after g77 and g++
# not all files $(PF)/include/*.h are part of gcc,
# but it becomes difficult to name all these files ...

dirs_gcc = \
	$(docdir)/$(p_xbase)/{gcc,libssp,gomp,itm,quadmath,sanitizer} \
	$(PF)/bin \
	$(gcc_lexec_dir) \
	$(gcc_lib_dir)/include \
	$(PF)/share/man/man1 $(libgcc_dir)

# XXX: what about triarch mapping?
files_gcc = \
	$(PF)/bin/$(cmd_prefix){gcc,gcov,gcov-tool,gcov-dump,lto-dump}$(pkg_ver) \
	$(PF)/bin/$(cmd_prefix)gcc-{ar,ranlib,nm}$(pkg_ver) \
	$(PF)/share/man/man1/$(cmd_prefix)gcc-{ar,nm,ranlib}$(pkg_ver).1 \
	$(gcc_lexec_dir)/{collect2,lto1,lto-wrapper} \
	$(shell test -e $(d)/$(gcc_lib_dir)/SYSCALLS.c.X \
		&& echo $(gcc_lib_dir)/SYSCALLS.c.X)

ifeq ($(with_libcc1_plugin),yes)
    files_gcc += \
	$(gcc_lib_dir)/plugin/libc[cp]1plugin.so{,.0,.0.0.0}
endif

files_gcc += \
	$(gcc_lexec_dir)/liblto_plugin.so

ifeq ($(DEB_STAGE),stage1)
    files_gcc += \
	$(gcc_lib_dir)/include
endif

ifneq ($(GFDL_INVARIANT_FREE),yes)
    files_gcc += \
	$(PF)/share/man/man1/$(cmd_prefix){gcc,gcov}$(pkg_ver).1 \
	$(PF)/share/man/man1/$(cmd_prefix)gcov-{dump,tool}$(pkg_ver).1 \
	$(PF)/share/man/man1/$(cmd_prefix)lto-dump$(pkg_ver).1
endif

usr_doc_files = debian/README.Bugs \
	$(shell test -f $(srcdir)/FAQ && echo $(srcdir)/FAQ)

p_loc	= gcc$(pkg_ver)-locales
d_loc	= debian/$(p_loc)

p_gcc_m	= gcc$(pkg_ver)-multilib$(cross_bin_arch)
d_gcc_m	= debian/$(p_gcc_m)

p_pld	= gcc$(pkg_ver)-plugin-dev$(cross_bin_arch)
d_pld	= debian/$(p_pld)

# ----------------------------------------------------------------------
$(binary_stamp)-gcc: $(install_dependencies)
	dh_testdir
	dh_testroot
	mv $(install_stamp) $(install_stamp)-tmp

	rm -rf $(d_gcc)
	dh_installdirs -p$(p_gcc) $(dirs_gcc)

ifeq ($(with_libssp),yes)
	cp -p $(srcdir)/libssp/ChangeLog \
		$(d_gcc)/$(docdir)/$(p_xbase)/libssp/changelog
endif
ifeq ($(with_gomp),yes)
	mv $(d)/$(usr_lib)/libgomp*.spec $(d_gcc)/$(gcc_lib_dir)/
	cp -p $(srcdir)/libgomp/ChangeLog \
		$(d_gcc)/$(docdir)/$(p_xbase)/gomp/changelog
endif
ifeq ($(with_itm),yes)
	mv $(d)/$(usr_lib)/libitm*.spec $(d_gcc)/$(gcc_lib_dir)/
	cp -p $(srcdir)/libitm/ChangeLog \
		$(d_gcc)/$(docdir)/$(p_xbase)/itm/changelog
endif
ifeq ($(with_qmath),yes)
	cp -p $(srcdir)/libquadmath/ChangeLog \
		$(d_gcc)/$(docdir)/$(p_xbase)/quadmath/changelog
endif
ifeq ($(with_asan),yes)
	mv $(d)/$(usr_lib)/libsanitizer*.spec $(d_gcc)/$(gcc_lib_dir)/
	cp -p $(srcdir)/libsanitizer/ChangeLog \
		$(d_gcc)/$(docdir)/$(p_xbase)/sanitizer/changelog
endif
ifeq ($(with_hwasan),yes)
	mv $(d)/$(usr_lib)/libhwasan_preinit.o $(d_gcc)/$(gcc_lib_dir)/
endif
ifeq ($(with_cc1),yes)
	rm -f $(d)/$(PF)/lib/$(DEB_HOST_MULTIARCH)/libcc1.so
	dh_link -p$(p_gcc) \
	    /$(PF)/lib/$(DEB_HOST_MULTIARCH)/libcc1.so.$(CC1_SONAME) \
	    /$(gcc_lib_dir)/libcc1.so
endif

	$(dh_compat2) dh_movefiles -p$(p_gcc) $(files_gcc)
	: # keep the lto_plugin.so link in the old place for a while
	dh_link -p$(p_gcc) \
		/$(gcc_lexec_dir)/liblto_plugin.so /$(gcc_lib_dir)/liblto_plugin.so

ifeq ($(unprefixed_names),yes)
	for i in gcc gcov gcov-dump gcov-tool gcc-ar gcc-nm gcc-ranlib lto-dump; do \
	  ln -sf $(cmd_prefix)$$i$(pkg_ver) \
	    $(d_gcc)/$(PF)/bin/$$i$(pkg_ver); \
	done
  ifneq ($(GFDL_INVARIANT_FREE),yes)
	for i in gcc gcov gcov-dump gcov-tool lto-dump; do \
	  ln -sf $(cmd_prefix)$$i$(pkg_ver).1.gz \
	    $(d_gcc)/$(PF)/share/man/man1/$$i$(pkg_ver).1.gz; \
	done
  endif
	for i in gcc-ar gcc-nm gcc-ranlib; do \
	  ln -sf $(cmd_prefix)$$i$(pkg_ver).1.gz \
	    $(d_gcc)/$(PF)/share/man/man1/$$i$(pkg_ver).1.gz; \
	done
endif

#	dh_installdebconf
	debian/dh_doclink -p$(p_gcc) $(p_xbase)
	cp -p $(usr_doc_files) $(d_gcc)/$(docdir)/$(p_xbase)/.
	cp -p debian/README.ssp $(d_gcc)/$(docdir)/$(p_xbase)/
	cp -p debian/NEWS.gcc $(d_gcc)/$(docdir)/$(p_xbase)/NEWS
	cp -p debian/NEWS.html $(d_gcc)/$(docdir)/$(p_xbase)/NEWS.html
	cp -p $(srcdir)/ChangeLog $(d_gcc)/$(docdir)/$(p_xbase)/changelog
	cp -p $(srcdir)/gcc/ChangeLog \
		$(d_gcc)/$(docdir)/$(p_xbase)/gcc/changelog
	if [ -f $(builddir)/gcc/.bad_compare ]; then \
	  ( \
	    echo "The comparision of the stage2 and stage3 object files shows differences."; \
	    echo "The Debian package was modified to ignore these differences."; \
	    echo ""; \
	    echo "The following files differ:"; \
	    echo ""; \
	    cat $(builddir)/gcc/.bad_compare; \
	  ) > $(d_gcc)/$(docdir)/$(p_xbase)/BOOTSTRAP_COMPARISION_FAILURE; \
	else \
	  true; \
	fi

	mkdir -p $(d_gcc)/usr/share/lintian/overrides
	echo '$(p_gcc) binary: hardening-no-pie' \
	  > $(d_gcc)/usr/share/lintian/overrides/$(p_gcc)
ifeq ($(GFDL_INVARIANT_FREE),yes)
	echo '$(p_gcc) binary: binary-without-manpage' \
	  >> $(d_gcc)/usr/share/lintian/overrides/$(p_gcc)
endif

	debian/dh_rmemptydirs -p$(p_gcc)
ifeq (,$(findstring nostrip,$(DEB_BUILD_OPTONS)))
	$(DWZ) \
	  $(d_gcc)/$(gcc_lexec_dir)/lto1 \
	  $(d_gcc)/$(gcc_lexec_dir)/lto-wrapper \
	  $(d_gcc)/$(gcc_lexec_dir)/collect2
endif
	dh_strip -p$(p_gcc) \
	  $(if $(unstripped_exe),-X/lto1)
	dh_shlibdeps -p$(p_gcc)
	echo $(p_gcc) >> debian/arch_binaries

	trap '' 1 2 3 15; touch $@; mv $(install_stamp)-tmp $(install_stamp)

# ----------------------------------------------------------------------

$(binary_stamp)-gcc-multi: $(install_dependencies)
	dh_testdir
	dh_testroot
	mv $(install_stamp) $(install_stamp)-tmp

	rm -rf $(d_gcc_m)
	dh_installdirs -p$(p_gcc_m) $(docdir)

	debian/dh_doclink -p$(p_gcc_m) $(p_xbase)
	debian/dh_rmemptydirs -p$(p_gcc_m)

	dh_strip -p$(p_gcc_m)
	dh_shlibdeps -p$(p_gcc_m)
	echo $(p_gcc_m) >> debian/arch_binaries

	trap '' 1 2 3 15; touch $@; mv $(install_stamp)-tmp $(install_stamp)

# ----------------------------------------------------------------------
$(binary_stamp)-gcc-plugindev: $(install_dependencies)
	dh_testdir
	dh_testroot
	mv $(install_stamp) $(install_stamp)-tmp

	rm -rf $(d_pld)
	dh_installdirs -p$(p_pld) \
		$(docdir) \
		$(gcc_lib_dir)/plugin
	$(dh_compat2) dh_movefiles -p$(p_pld) \
		$(gcc_lib_dir)/plugin/include \
		$(gcc_lib_dir)/plugin/gtype.state \
		$(gcc_lexec_dir)/plugin/gengtype

	debian/dh_doclink -p$(p_pld) $(p_xbase)
	debian/dh_rmemptydirs -p$(p_pld)
	dh_strip -p$(p_pld)
	dh_shlibdeps -p$(p_pld)
	mkdir -p $(d_pld)/usr/share/lintian/overrides
	echo '$(p_pld) binary: hardening-no-pie' \
	  > $(d_pld)/usr/share/lintian/overrides/$(p_pld)
	echo $(p_pld) >> debian/arch_binaries

	trap '' 1 2 3 15; touch $@; mv $(install_stamp)-tmp $(install_stamp)

# ----------------------------------------------------------------------
$(binary_stamp)-gcc-locales: $(install_dependencies)
	dh_testdir
	dh_testroot
	mv $(install_stamp) $(install_stamp)-tmp

	rm -rf $(d_loc)
	dh_installdirs -p$(p_loc) \
		$(docdir)
	$(dh_compat2) dh_movefiles -p$(p_loc) \
		$(PF)/share/locale/*/*/cpplib*.* \
		$(PF)/share/locale/*/*/gcc*.*

	debian/dh_doclink -p$(p_loc) $(p_xbase)
	debian/dh_rmemptydirs -p$(p_loc)
	echo $(p_loc) >> debian/indep_binaries

	trap '' 1 2 3 15; touch $@; mv $(install_stamp)-tmp $(install_stamp)


# ----------------------------------------------------------------------

$(binary_stamp)-testresults: $(install_dependencies)
	dh_testdir
	dh_testroot
	mv $(install_stamp) $(install_stamp)-tmp

	rm -rf $(d_tst)
	dh_installdirs -p$(p_tst) $(docdir)

	debian/dh_doclink -p$(p_tst) $(p_xbase)

	mkdir -p $(d_tst)/$(docdir)/$(p_xbase)/test
ifeq ($(with_check),yes)
	cd $(d_tst) && tar xvf ../../installed-testlogs.tar
else
	echo "Nothing to compare (testsuite not run)"
	echo 'Test run disabled, reason: $(with_check)' \
	  > $(d_tst)/$(docdir)/$(p_xbase)/test-run-disabled
endif

	debian/dh_rmemptydirs -p$(p_tst)

	echo $(p_tst) >> debian/arch_binaries

	trap '' 1 2 3 15; touch $@; mv $(install_stamp)-tmp $(install_stamp)

# ----------------------------------------------------------------------
$(binary_stamp)-gcc-doc: $(build_html_stamp) $(install_stamp)
	dh_testdir
	dh_testroot
	mv $(install_stamp) $(install_stamp)-tmp

	rm -rf $(d_doc)
	dh_installdirs -p$(p_doc) \
		$(docdir)/$(p_xbase) \
		$(PF)/share/info
	$(dh_compat2) dh_movefiles -p$(p_doc) \
		$(PF)/share/info/cpp{,internals}-* \
		$(PF)/share/info/gcc{,int}-* \
		$(PF)/share/info/lib{gomp,itm}-* \
		$(if $(with_qmath),$(PF)/share/info/libquadmath-*)
	rm -f $(d_doc)/$(PF)/share/info/gccinst*

ifeq ($(with_gomp),yes)
	$(MAKE) -C $(buildlibdir)/libgomp stamp-build-info
	cp -p $(buildlibdir)/libgomp/$(cmd_prefix)libgomp$(pkg_ver).info \
		$(d_doc)/$(PF)/share/info/libgomp$(pkg_ver).info
endif
ifeq ($(with_itm),yes)
	-$(MAKE) -C $(buildlibdir)/libitm stamp-build-info
	if [ -f $(buildlibdir)/libitm/$(cmd_prefix)libitm$(pkg_ver).info ]; then \
	  cp -p $(buildlibdir)/libitm/$(cmd_prefix)libitm$(pkg_ver).info \
		$(d_doc)/$(PF)/share/info/libitm$(pkg_ver).info; \
	fi
endif

	debian/dh_doclink -p$(p_doc) $(p_xbase)
	dh_installdocs -p$(p_doc) html/gcc.html html/gccint.html
ifeq ($(with_gomp),yes)
	cp -p html/libgomp.html $(d_doc)/usr/share/doc/$(p_doc)/
endif
ifeq ($(with_itm),yes)
	cp -p html/libitm.html $(d_doc)/usr/share/doc/$(p_doc)/
endif
ifeq ($(with_qmath),yes)
	cp -p html/libquadmath.html $(d_doc)/usr/share/doc/$(p_doc)/
endif
	rm -f $(d_doc)/$(docdir)/$(p_xbase)/copyright
	debian/dh_rmemptydirs -p$(p_doc)
	echo $(p_doc) >> debian/indep_binaries

	trap '' 1 2 3 15; touch $@; mv $(install_stamp)-tmp $(install_stamp)

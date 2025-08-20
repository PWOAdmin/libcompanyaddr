lib_LTLIBRARIES = libcompanyaddr.la
libcompanyaddr_la_SOURCES=src/work/punks/work-punks-company_types.ads
obj_DIRS=obj
LIBS=
EXTRA_DIST = pwauth.gpr tests/tests.gpr tests/*.ad* src/*
all-local:
	gprbuild -d -Pcompanyaddr.gpr -XLIBRARY_TYPE=relocatable -XAWS_BUILD=relocatable
	gprbuild -d -Ptests/tests.gpr -XLIBRARY_TYPE=relocatable -XAWS_BUILD=relocatable

check-local: all-local
	./tests/obj/test_driver

format:
	find . -type f -name '*.ad*'  -print0 |xargs -0 gnatpp --max-line-length=120 --split-line-before-op -l2

clean-local:
	rm -rf ${obj_DIRS}/*
	rm -rf lib/*
	rm -rf tests/obj/*
	rm -rf *.o
	rm -rf *.ali
	rm -rf *.so
	rm -rf configure~
	rm -rf autom4te.cache/*
	rm -rf autom4te.cache
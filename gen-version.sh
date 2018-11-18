#!/bin/sh
cat <<EOF>> version.h
#define BFG_GIT_DESCRIBE "5.5.0-MK3"
#ifdef VERSION
#  undef VERSION
#endif
#define VERSION "5.5.0-MK3"
EOF

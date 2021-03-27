#!/bin/sh
gitdesc="5.5.0-wrk2"
version=$(echo "$gitdesc")
cat <<EOF
#define BFG_GIT_DESCRIBE "$gitdesc"
#ifdef VERSION
#  undef VERSION
#endif
#define VERSION "$version"
EOF

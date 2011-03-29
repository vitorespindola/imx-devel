#!/bin/bash
# Split out, so build_kernel.sh and build_deb.sh can share..

echo "Starting patch.sh"

function git_add {
git add .
git commit -a -m 'testing patchset'
}

function bugs_trivial {
echo "bugs and trivial stuff"
}

function freescale {
echo "from freescale dump..."
patch -p1 -s < "${DIR}/patches/freescale/0001-arm-imx-freescale-2.6.35.3-imx_11.01.00.patch"

}

bugs_trivial
freescale

echo "patch.sh ran successful"


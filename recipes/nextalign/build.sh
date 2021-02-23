#!/usr/bin/env bash

ls -al

make prod

chmod +x "${SRC_DIR}"/nextalign*
mkdir -p "${PREFIX}/bin"
mv "${SRC_DIR}"/nextalign* "${PREFIX}"/bin/nextalign

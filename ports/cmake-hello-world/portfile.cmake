vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO codesmithyide/cmake-tutorials
    REF master
    SHA512 47ac263fb4efea8b6b0428347c9dcc34faa24ea31c55429eb7d190de0df0e43b0668cfd313ca0b06ee27a56e7271def2b4e78aa293172dbbaab83c2a8b33af6b
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/cmake-tutorials" RENAME copyright)

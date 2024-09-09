vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO codesmithyide/cmake-tutorials
    REF d579967396548885508b59fea83c39eda2ecb026
    SHA512 0
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/cmake-tutorials" RENAME copyright)

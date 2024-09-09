vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO codesmithyide/cmake-tutorials
    REF d579967396548885508b59fea83c39eda2ecb026
    SHA512 59ca92495a1c7dd7506142361e01d9ebb081f2ebb1d63683048b12117c33fb265751dbd27cebbab349cda2814d5c5844501536d9dc01b85287959e529ef630f2
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/cmake-tutorials" RENAME copyright)

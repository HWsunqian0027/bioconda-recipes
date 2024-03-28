mkdir build
cd build
if [ `arch` = 'aarch64' ] ; then
cmake \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
    -DCMAKE_CXX_STANDARD=98 \
    ..
else
cmake \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DCMAKE_CXX_FLAGS="${CXXFLAGS} -msse4.1" \
    -DCMAKE_CXX_STANDARD=98 \
    ..
fi
make
make install

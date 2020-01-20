echo Cleaning preious build ... && \
rm -rf ./verona/build_ninja && \
echo Start update to new version ... && \
git pull --recurse-submodules && \
git submodule update --remote && \
cd ./verona && \
mkdir build_ninja && \
cd build_ninja && \
cmake .. -GNinja -DCMAKE_BUILD_TYPE=Release && \
ninja install && \
echo Build successfullyt ended.
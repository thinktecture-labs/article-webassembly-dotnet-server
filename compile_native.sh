docker run \
  --rm \
  -v `pwd`:`pwd` \
  -w `pwd` \
  -u $(id -u):$(id -g) \
  emscripten/emsdk \
  emcc native/fibonacci.c -o wasm/fibonacci.wasm --no-entry

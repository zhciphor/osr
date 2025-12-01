rm -f compile_commands.json
rm -f otest
cmake -S . -B build \
  -GNinja \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
cmake --build build
ln -s build/compile_commands.json compile_commands.json
ln -s build/osr-test otest

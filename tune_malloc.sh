export RUBY_GC_MALLOC_LIMIT=90000000

if [ -f "/usr/lib/libtcmalloc_minimal.so.0.1.0" ]
then
  LD_PRELOAD=/usr/lib/libtcmalloc_minimal.so.0.1.0
else
  echo "skipping LD_PRELOAD hack, libtcmalloc_minimal.so does not exist"
fi

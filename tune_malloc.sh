export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1.25
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_FREE_MIN=600000


# TODO : rename "/usr/lib/libtcmalloc_minimal.so.0.1.0" to "/usr/lib/libtcmalloc_minimal.so"
#        so we can just go set LD_PRELOAD=/usr/lib/libtcmalloc_minimal.so
if [ -f "/usr/lib/libtcmalloc_minimal.so.0.1.0" ]
then
  export LD_PRELOAD=/usr/lib/libtcmalloc_minimal.so.0.1.0
else
  echo "skipping LD_PRELOAD hack, libtcmalloc_minimal.so does not exist"
fi

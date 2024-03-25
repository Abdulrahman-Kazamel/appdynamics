first test 
I have increased  `Xmx` size in agent start 
more info about `Xmx` and `Xms`

The `-Xmx` argument defines the max memory size that the heap can reach for the JVM. You must know your program well and see how it performs under load and set this parameter accordingly. A low value can cause an `OutOfMemoryException` or very poor performance if your program's heap memory is reaching the maximum heap size. If your program is running on a dedicated server you can set this parameter higher because it wont affect other programs.


The `-Xms` argument sets the initial and minimum heap memory size for the JVM. This means that when you start your program the JVM will allocate this amount of memory instantly. This is useful if your program will consume a large amount of heap memory right from the start. This avoids the JVM needing to regularly increase the heap size and so you can gain some performance there. If you don't know if this parameter is going to help you, don't use it.

It is good practice with server-side Java applications like Resin to set the minimum `-Xms` and maximum `-Xmx` heap sizes to the same value. 
You can set to 256 or 512Mb,
### but in java agent in depends on your load as per default it should be 3000MB



https://stackoverflow.com/questions/2739539/starting-memory-allocation-for-jvm
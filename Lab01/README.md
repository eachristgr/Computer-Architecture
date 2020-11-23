# Lab01_Report
### 1. Configure Parameters
As first example, we run the command:

 > $ ./build/ARM/gem5.opt -d hello_result configs/example/arm/starter_se.py --cpu="minor" "tests/test-progs/hello/bin/arm/linux/hello"
 
 The file **starter_se.py** helps us set the parameters of the system. These parameters are:
 
 - cpu: The type of CPU kernel. It can be atomic, minor or hpi.
 - cpu-freq: The CPU clock frequency.
 - num-cores: The number of CPU cores.
 - mem-type: The type of memory to use.
 - mem-channels: The number of memory channels.
 - mem-rank: The number of memory ranks per channel.
 - mem-size: The physical memory size.
 
 We can set values to these parameters or we can leave the default values. So, in our example the system must have the following characteristics:

- Minor CPU type.
- 4GHz CPU clock frequency.
- 1 CPU core.
- DDR3_1600_8x8 memory type.
- 2 memory channels.
- 2GB memory size.

### 2. System Informations
After the execution of the above command, the files **config.ini**, **config.json** and **stats.txt** are created in the **hello_results** folder. The first two files contain a list of every object created for the simulation and the values for its parameters, just in different formats. The third one is a representation of all of the gem5 statistics registered for the simulation.

( a ) In **config.ini** we can find the values of the parameters we set to the system:

- Line 65: type=MinorCPU defines that the CPU type is Minor.
- Line 58: clock=250 indicates that the CPU clock is set at 1000000000000 / 250 = 4GHz.
- Line 113: numThreads=1 defines the use of just one core for the execution.
- Lines 1427, 1557: ranks_per_channel=2 is the default number of memory ranks per channel. The memory channels have the names defined in line 13.
- Line 21: mem_ranges=0:2147483648 defines 2GB of memory size.

( b ) In the file **stats.txt** in line 14 system.cpu_cluster.cpus.committedInsts, the number of instructions committed is **5028**.

( c ) In the file **stats.txt** in line 493 system.cpu_cluster.l2.overall_accesses::total, the number of overall (read+write) accesses to L2 cache is **479**.

This number can also....

### 3. In-Order CPU Models
There are 4 types of in-order CPUs. In-order means that they execute the instructions by the order they arrive to the CPU.

- **AtomicSimpleCPU**
The AtomicSimpleCPU is an in-order model. It uses the latency estimates from the atomic accesses to estimate overall cache access time. The AtomicSimpleCPU implements functions to read and write memory, and also to tick, which defines what happens every CPU cycle. It defines the port that is used to hook up to memory, and connects the CPU to the cache [1].

- **TimingSimpleCPU**
The TimingSimpleCPU uses timing memory accesses. It stalls on cache accesses and waits for the memory system to respond prior to proceeding. Like the AtomicSimpleCPU, the TimingSimpleCPU implements the same set of functions. It defines the port that is used to hook up to memory, and connects the CPU to the cache. It also defines the necessary functions for handling the response from memory to the accesses sent out [1].

- **MinorCPU**
The MinorCPU is a flexible in-order processor model which was originally developed to support the Arm ISA, and is applicable to other ISAs as well. MinorCPU has a fixed four-stage in-order execution pipeline, while having configurable data structures. The four-stage pipeline implemented by MinorCPU includes fetching lines, decomposition into macro-ops, decomposition of macro-ops into micro-ops and execute. The basic characteristic of this type of CPU is that it has configurable data structures which helps in build a memory hierarchy in order to better memory access time [2].

- **HPI CPU**
High Performance In-Order (HPI) CPU is based on the Arm architecture and is built to represent a modern in-order Armv8-A implementation. One of its basic characteristics is that it uses the same 4-stage pipeline that is used in the Minor CPU. Moreover, there are separate instruction and data buses, hence an instruction cache (ICache) and a data cache (DCache). So, there are distinct instruction and data L1 caches backed by a unified L2 cache.

( a ) In this step we write a simple program in C **myprog/myprog.c** that prints the odd numbers between 1 and 1000. We use the instractions to compile it and then we executed in the gem5.

First we run the simulator with a **MinorCPU**, using the command:

> $ ./build/ARM/gem5.opt -d myprog_MinorCPU_result configs/example/se.py --cpu-type=MinorCPU --caches -c 'myprog/myprog_arm'

The results was saved in the **myprog_MinorCPU_result** folder.
**399326000** ticks needed.

After we run the simulator with a **TimingSimpleCPU**, using the command:
> $ ./build/ARM/gem5.opt -d myprog_TimingSimpleCPU_result configs/example/se.py --cpu-type=TimingSimpleCPU --caches -c 'myprog/myprog_arm'

The results was saved in the **myprog_TimingSimpleCPU_result** folder.
**704536000** ticks needed.

( b ) The results show that the Minor kernel is a lot faster than the TimingSimple kernel. This is an expected result because the Minor kernel uses a 4-stage pipeline while TimingSimple doesn't. This means that in Minor kernel while one instruction is processed by the ALU the next one can be fetched.

( c )




### 4. Refrencess
[1] https://www.gem5.org/documentation/general_docs/cpu_models/SimpleCPU

[2] https://www.gem5.org/documentation/general_docs/cpu_models/minor_cpu



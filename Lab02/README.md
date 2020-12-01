# Lab02_Report
**Christos Emmanouil, Chatzipemou Aristeidis**

This file contains the contains the results of the second lab exercise.

### 1. Run Benchmarks

For the second lab, first we had to run a set of benchmark tests in the gem5 emulator. We downloaded the benchmarks, compiled them and then we used their executable files to ran the simulations.

We ran the simulations using the configurations script se.py with Minor type CPU, second layer cache (L2) and left the other parameters in their default values. Also, because the time needed to complete the simulations was too big, we used the parameter -I to set the number of instruction the gem5 has to run. 

The commands were used are:

```bash
$ ./build/ARM/gem5.opt -d LAB_02/spec_results/specbzip configs/example/se.py --cpu-type=MinorCPU --caches --l2cache -c spec_cpu2006/401.bzip2/src/specbzip -o "spec_cpu2006/401.bzip2/data/input.program 10" -I 100000000

$ ./build/ARM/gem5.opt -d LAB_02/spec_results/specmcf configs/example/se.py --cpu-type=MinorCPU --caches --l2cache -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000

$ ./build/ARM/gem5.opt -d LAB_02/spec_results/spechmmer configs/example/se.py --cpu-type=MinorCPU --caches --l2cache -c spec_cpu2006/456.hmmer/src/spechmmer -o "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 100000000

$ ./build/ARM/gem5.opt -d LAB_02/spec_results/specsjeng configs/example/se.py --cpu-type=MinorCPU --caches --l2cache -c spec_cpu2006/458.sjeng/src/specsjeng -o "spec_cpu2006/458.sjeng/data/test.txt" -I 100000000

$ ./build/ARM/gem5.opt -d LAB_02/spec_results/speclibm configs/example/se.py --cpu-type=MinorCPU --caches --l2cache -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000
```
The results of these simulations were saved in the **spec_results** folder. 

#### 1.1. Simulations Information

As in the first lab, we used the files **config.ini** to figure out parameters about the CPU and the cashes. As the simulations were configured with the same configuration script and same arguments, they have the same required parameters. These parameters are presented in the table below:

| Parameter                         | Value    |
| --------------------------------- | :------- |
| CPU Type                          | MinorCPU |
| CPU Clock                         | 500      |
| Cache Line Size                   | 64       |
| L1_Instuction Cache Size          | 32768    |
| L1_Instuction Cache Associativity | 2        |
| L1_Data Cache Size                | 65536    |
| L1_Data Cache Associativity       | 2        |
| L2 Cache Size                     | 2097152  |
| L2 Cache Associativity            | 8        |

Note that caches sizes are measured in bytes.

More information about the location of these values in the config.ini files can be found in the **FILE_DIR**.

#### 1.2. Benchmarks Stats

At this point, we used the **stats.txt** files to extract some useful benchmark tests features. These features for each test are listed in the following table.

|                         | bzip     | hmmer    | libm     | mcf      | sjeng     |
| ----------------------- | -------- | -------- | -------- | -------- | --------- |
| Simulation Time         | 0.083718 | 0.059390 | 0.174771 | 0.064937 | 0.513811  |
| CPI                     | 1.674353 | 1.187803 | 3.495428 | 1.298734 | 10.276223 |
| L1_Dara Cache Miss Rate | 0.014248 | 0.001628 | 0.060972 | 0.002079 | 0.121831  |
| L1_Inst Cache Miss Rate | 0.000077 | 0.000212 | 0.000093 | 0.023610 | 0.000020  |
| L2 Cache Miss Rate      | 0.295243 | 0.078296 | 0.999944 | 0.055082 | 0.999972  |

Note that simulation time is the time required for the program to run in the simulation and is measured in seconds.

More information about the location of these values in the stats.txt files can be found in the **FILE_DIR**, however a visual representation would make comparison easier, so the following diagrams are presented:

<img src="/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/1/1_2_Results/1_2_plots/BenchmarksComparation_SimulationTime.png" alt="BenchmarksComparation_SimulationTime" style="zoom:100%;" />

<img src="/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/1/1_2_Results/1_2_plots/BenchmarksComparation_CPI.png" alt="BenchmarksComparation_CPI" style="zoom:100%;" />

<img src="/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/1/1_2_Results/1_2_plots/BenchmarksComparation_L1DMissRate.png" alt="BenchmarksComparation_L1DMissRate"  />

<img src="/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/1/1_2_Results/1_2_plots/BenchmarksComparation_L1IMissRate.png" alt="BenchmarksComparation_L1IMissRate"  />

<img src="/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/1/1_2_Results/1_2_plots/BenchmarksComparation_L2MissRate.png" alt="BenchmarksComparation_L2MissRate" style="zoom: 100%;" />

By observing the data, we see that higher CPI leads to higher simulation times. As it seems the main reason for high CPI are the caches misses. L2 cache miss rates are higher than L1 cache miss rates. In the sjeng benchmark, where L1_Data cache and L2 cache miss rates are higher than the other benchmarks the simulation time is much worse.

#### 1.3. System Clock vs CPU Clock

In this step, we wanted to see how a different CPU clock will effect the simulations and what are the differences with the system clock.

First we ran the same benchmarks with CPU clock at 1 GHZ. The commands were used are:

```bash
$ ./build/ARM/gem5.opt -d LAB_02/spec_results_1GHz/specbzip configs/example/se.py --cpu-type=MinorCPU --cpu-clock=1GHz --caches --l2cache -c spec_cpu2006/401.bzip2/src/specbzip -o "spec_cpu2006/401.bzip2/data/input.program 10" -I 100000000

$ ./build/ARM/gem5.opt -d LAB_02/spec_results_1GHz/specmcf configs/example/se.py --cpu-type=MinorCPU --cpu-clock=1GHz --caches --l2cache -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000

$ ./build/ARM/gem5.opt -d LAB_02/spec_results_1GHz/spechmmer configs/example/se.py --cpu-type=MinorCPU --cpu-clock=1GHz --caches --l2cache -c spec_cpu2006/456.hmmer/src/spechmmer -o "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 100000000

$ ./build/ARM/gem5.opt -d LAB_02/spec_results_1GHz/specsjeng configs/example/se.py --cpu-type=MinorCPU --cpu-clock=1GHz --caches --l2cache -c spec_cpu2006/458.sjeng/src/specsjeng -o "spec_cpu2006/458.sjeng/data/test.txt" -I 100000000

$ ./build/ARM/gem5.opt -d LAB_02/spec_results_1GHz/speclibm configs/example/se.py --cpu-type=MinorCPU --cpu-clock=1GHz --caches --l2cache -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000
```

The results of these simulations were saved in the **spec_results_1GHz** folder.

To summarize the results and compare them with the previous simulations we quote the following diagrams: 

![BenchmarksComparation_SimulationTime](/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/1/1_3/1_3_plots/BenchmarksComparation_SimulationTime.png)

![BenchmarksComparation_CPI](/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/1/1_3/1_3_plots/BenchmarksComparation_CPI.png)

Note that the miss rates of caches remain the same, so there is no point in presenting them.

As we can see the time required for the programs to run in the simulations is higher in the 1 GHz case but in libm and sjeng benchmarks the CPI is lower than the 2 GHz case. Remember that these benchmarks have much higher L2 cache miss rates.

To find information about the behavior of the simulations, first we took a look in the **stats.txt** files of both cases and found the following entries:

|                             | CPU-Clock = 1 GHz | CPU-Clock = 2 GHz |
| --------------------------- | ----------------- | ----------------- |
| system.clk_domain.clock     | 1000              | 1000              |
| system.cpu_clk_domain.clock | 1000              | 500               |

Then we took a look in the **config.ini** files to find out what is clocked with the system clock and what is clocked with the CPU clock. A table of our findings is presented below :

| Components           | Clock Used                  |
| -------------------- | --------------------------- |
| CPU                  | system.cpu_clk_domain.clock |
| L1_Data Cache        | system.cpu_clk_domain.clock |
| L1_Instraction Cache | system.cpu_clk_domain.clock |
| L2 Cache             | system.cpu_clk_domain.clock |
| Memory               | system.clk_domain.clock     |
| Memory Bus           | system.clk_domain.clock     |

So we see that the CPU and the caches use the CPU-Clock (1 GHz or 2 GHz), however the memory uses the system clock that in both cases are 1 GHz. As the L2 cache is the layer that communicates with the memory,  their difference in clocks in the 2 GHz case, delays transferring files to and from the memory leading to a higher CPI number, especially when the L2 cache miss rates are large.

### 2. Performance Optimization

At this point an attempt was made to optimize the performance of the system for each benchmark.

Initially, a study was performed on how the parameters below affect the simulation and then appropriate values were selected :

- L1_Data Cache Size
- L1_Data Cache Associativity
- L1_Instruction Cache Size
- L1_Instruction Cache Associativity
- L2 Cache Size
- L2 Cache Size Associativity
- Cache Line Size

#### 2.1. Method of Study

In order to study the effect of the parameters, a reference system with the values below was set:

| Parameter                          | Value  |
| ---------------------------------- | ------ |
| L1_Data Cache Size                 | 32 kB  |
| L1_Data Cache Associativity        | 1      |
| L1_Instruction Cache Size          | 63 kB  |
| L1_Instruction Cache Associativity | 1      |
| L2 Cache Size                      | 512 kB |
| L2 Cache Size Associativity        | 2      |
| Cache Line Size                    | 64 kB  |

Then a set of bash scripts was created in order to run its benchmark in systems with different parameters. Each system created differed from the original only in the value of one parameter. So the results showed which parameters most affect the performance in each benchmark.

The bash scripts are in the **FOLDER_DIR** folder, the simulations files in the **Folder_DIR** folder and the results are listed in the **Files_dir** files.

Having a better idea of the problem, new bash scripts were created in order to run the benchmarks on systems that differ more from the reference system.

The second bash scripts are in the **FOLDER_DIR** folder, the second new simulations files in the **Folder_DIR** folder and the second results are listed in the **Files_dir** files.

#### 2.2. Results Of The Study

This section presents the results of the study.

From the first results it was found out that:

- **bzip** depends primarily on cache line size and L1_Data cache size.
- **hmmer** depends primarily on L1_Data cache size.
- **libm** depends primarily on cache line size.
- **mcf** seems relatively independent of the system parameters.
- **sjeng** depends primarily on cache line size.

Below are graphs showing the effect of the cache line size and the L1_Data cache size on the CPI of the respective benchmarks.

![CPI vs Cache Line Size](/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/Step_02/step_02_results/plots/CPI vs Cache Line Size.png)

![CPI vs L1_Data Cache Size](/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/Step_02/step_02_results/plots/CPI vs L1_Data Cache Size.png)

It is noted that other parameters can also affect performance, however these have had the greatest impact.

Taking into account the results of both the above stage and the execution stage of more specific parameters, the following optimized systems were developed :

|                                    | bzip    | hmmer   | libm    | mcf     | sjeng   |
| ---------------------------------- | ------- | ------- | ------- | ------- | ------- |
| L1_Data Cache Size                 | 128 kB  | 128 kB  | 64 kB   | 128 kB  | 64 kB   |
| L1_Data Cache Associativity        | 16      | 16      | 1       | 1       | 1       |
| L1_Instruction Cache Size          | 64 kB   | 64 kB   | 64 kB   | 64 kB   | 64 kB   |
| L1_Instruction Cache Associativity | 1       | 1       | 1       | 1       | 1       |
| L2 Cache Size                      | 2048 kB | 1024 kB | 2048 kB | 2048 kB | 1024 kB |
| L2 Cache Size Associativity        | 4       | 2       | 2       | 2       | 16      |
| Cache Line Size                    | 128 kB  | 64 kB   | 256 kB  | 128 kB  | 256 kB  |

The following diagrams compare these systems and the references ones with the Simulation Time and the CPI :

![Ref_Opt_SimSec](/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/Step_02/step_02_results/plots/Ref_Opt_SimSec.png)

![Ref_Opt_CPI](/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/Step_02/step_02_results/plots/Ref_Opt_CPI.png)

As can be seen from the diagrams greater improvement was made in jseng and libm benchmarks. Recall that these two had quite high L2 cache miss rate. The increase in size and associativity of the L2 cache as well in size of the cache line led to the fall of L2 cache miss rates resulting in lower simulation times and CPIs.
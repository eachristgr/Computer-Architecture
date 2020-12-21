# Lab02_Report
**Christos Emmanouil, Chatzipemou Aristeidis**

This file contains the contains the results of the second lab exercise.

Note that in commands sections the files and folders paths maybe different from those mentioned in this file.

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
The results of these simulations were saved in the **step01/spec_results_2GHz** folder. 

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

More information about the location of these values in the config.ini files can be found in the **step01/1_1_results.txt** file.

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

More information about the location of these values in the stats.txt files can be found in the **step01/1_2_results.txt** file, however a visual representation would make comparison easier, so the following diagrams are presented:

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step01/1_2_plots/BenchmarksComparation_SimulationTime.png?raw=true" />

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step01/1_2_plots/BenchmarksComparation_CPI.png?raw=true" /> 

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step01/1_2_plots/BenchmarksComparation_L1DMissRate.png?raw=true" /> 

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step01/1_2_plots/BenchmarksComparation_L1IMissRate.png?raw=true" /> 

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step01/1_2_plots/BenchmarksComparation_L2MissRate.png?raw=true" /> 

By observing the data, we see that higher CPI leads to higher simulation times. As it seems the main reason for high CPI are the caches misses. L2 cache miss rates are higher than L1 cache miss rates. In the sjeng benchmark, where L1_Data cache and L2 cache miss rates are higher than the other benchmarks the simulation time is much worse.

#### 1.3. System Clock vs CPU Clock

In this step, we wanted to see how a different CPU clock will effect the simulations and what are the differences with the system clock.

First we ran the same benchmarks with CPU clock at 1 GHz. The commands were used are:

```bash
$ ./build/ARM/gem5.opt -d LAB_02/spec_results_1GHz/specbzip configs/example/se.py --cpu-type=MinorCPU --cpu-clock=1GHz --caches --l2cache -c spec_cpu2006/401.bzip2/src/specbzip -o "spec_cpu2006/401.bzip2/data/input.program 10" -I 100000000

$ ./build/ARM/gem5.opt -d LAB_02/spec_results_1GHz/specmcf configs/example/se.py --cpu-type=MinorCPU --cpu-clock=1GHz --caches --l2cache -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000

$ ./build/ARM/gem5.opt -d LAB_02/spec_results_1GHz/spechmmer configs/example/se.py --cpu-type=MinorCPU --cpu-clock=1GHz --caches --l2cache -c spec_cpu2006/456.hmmer/src/spechmmer -o "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 100000000

$ ./build/ARM/gem5.opt -d LAB_02/spec_results_1GHz/specsjeng configs/example/se.py --cpu-type=MinorCPU --cpu-clock=1GHz --caches --l2cache -c spec_cpu2006/458.sjeng/src/specsjeng -o "spec_cpu2006/458.sjeng/data/test.txt" -I 100000000

$ ./build/ARM/gem5.opt -d LAB_02/spec_results_1GHz/speclibm configs/example/se.py --cpu-type=MinorCPU --cpu-clock=1GHz --caches --l2cache -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000
```

The results of these simulations were saved in the **step01/spec_results_1GHz** folder.

To summarize the results and compare them with the previous simulations we quote the following diagrams:

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step01/1_3_plots/BenchmarksComparation_SimulationTime.png?raw=true" />

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step01/1_3_plots/BenchmarksComparation_CPI.png?raw=true" /> 

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

So we see that the CPU and the caches use the CPU-Clock (1 GHz or 2 GHz), however the memory uses the system clock that in both cases are 1 GHz. As the L2 cache is the layer that communicates with the memory, their difference in clocks in the 2 GHz case, propably delays transferring files to and from the memory leading to a higher CPI number, especially when the L2 cache miss rates are large. As can be seen from the graphs, in the case of libm and sjeng, while the CPI has decreased considerably, the same percentage of improvements is not observed in the simulation time.

Suppose for a while a system that can utilize two CPUs. Probably in such a system the miss rates and CPIs of each CPU are the same as those of the system with one CPU. However each CPU would have less data to handle and would need less communication with the memory. So in this problem, where the 1GHz CPU has lower CPI, the use of two 1GHz CPUs would lead to better simulation times compared to the 2Ghz CPU system.

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

In order to study the effect of the parameters, a reference 1GHz CPU system with the values below was set:

| Parameter                          | Value  |
| ---------------------------------- | ------ |
| L1_Data Cache Size                 | 32 kB  |
| L1_Data Cache Associativity        | 1      |
| L1_Instruction Cache Size          | 64 kB  |
| L1_Instruction Cache Associativity | 1      |
| L2 Cache Size                      | 512 kB |
| L2 Cache Size Associativity        | 2      |
| Cache Line Size                    | 64 kB  |

Then a set of bash scripts was created in order to run its benchmark in systems with different parameters. Each system created differed from the original only in the value of one parameter. So the results showed which parameters most affect the performance in each benchmark.

The bash scripts are in the **step02/bash_scripts** folder and the simulations files in the **step02/simulations_files_results/benchmark_name/benchmark_name_parameter_name** folders. Also the results with the desired measurements are listed in the **step02/simulations_files_results/benchmark_name/results_all.txt** files, these files show how each parameter affects the CPI, the simulation time and the caches miss rates.

#### 2.2. Results Of The Study

This section presents the results of the study.

Below are graphs showing the effect of the parameters on the CPI of the benchmarks.

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step02/2_2_plots/CPI%20vs%20L1_Data%20Cache%20Size.png?raw=true" />

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step02/2_2_plots/CPI%20vs%20L1_Data%20Cache%20Associativity.png?raw=true" />

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step02/2_2_plots/CPI%20vs%20L1_Instruction%20Cache%20Size.png?raw=true" />

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step02/2_2_plots/CPI%20vs%20L1_Instruction%20Cache%20Associativity.png?raw=true" />

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step02/2_2_plots/CPI%20vs%20L2%20Cache%20Size.png?raw=true" />

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step02/2_2_plots/CPI%20vs%20L2%20Cache%20Associativity.png?raw=true" />

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step02/2_2_plots/CPI%20vs%20Cache%20Line%20Size.png?raw=true" />

From the plots can be seen that:

- **L1_Data Cache Size** affects all benchmarks, more the mcf and less the sjeng.
- **L1_Data Cache Associativity** has little effect on bzip and hmmer.
- **L1_Instruction Cache Size** mainly affects the mcf.
- **L1_Instruction Cache Associativity** does not affect any benchmark.
- **L2 Cache Size** has little effect on bzip and mcf.
- **L2 Cache Size Associativity** has little effect on bzip.
- **Cache Line Size** affects all benchmarks, libm and sjeng are affected greatly.

It is noted that the parameters can also affect other features of the benchmarks, information about the them can be found in the files mentioned in the previous subsection.

### 3. Performance Costs

The design of a system is not solely for the purpose of high performance. Cost also plays an important role in choosing the characteristics of a system.

In order to study the cost-performance ratio, a cost function must be designed. To do this, the following decisions were made:

- A larger cache has a higher cost.
- L1 cahce is faster than L2. So the L1 cache size affects the overall cost more.
- Cache line size affects the costs of L1 and L2.
- Higher cache associativity means greater construction complexity leading to higher cost.

Based on the above the following, indicative cost function was created:

Cost = 100 * (CacheLine_Size/256 + 0.7*(L1D_Size + L1I_Size)/256 + 0.4*L2_Size/2048 + 0.8*(L1D_Assoc + L1I_Assoc)/32 + 0.5*L2_Assoc/16)

Having the results of the second step and the cost function, we run eight identical simulations for all the benchmarks in order to find a system that has a relatively good cost-effectiveness.

The parameters selected for each simulation are shown below:

|        | Sim_01 | Sim_02 | Sim_03 | Sim_04 | Sim_05 | Sim_06 | Sim_07 | Sim_08 |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| L1_D S | 32kB   | 32kB   | 32kB   | 32kB   | 64kB   | 64kB   | 64kB   | 64kB   |
| L1_D A | 4      | 4      | 4      | 4      | 4      | 4      | 4      | 4      |
| L1_I S | 32kB   | 32kB   | 64kB   | 64kB   | 32kB   | 32kB   | 64kB   | 64kB   |
| L1_I A | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      |
| L2 S   | 512kB  | 1024kB | 512kB  | 1024kB | 512kB  | 1024kB | 512kB  | 1024kB |
| L2 A   | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      |
| CL S   | 256kB  | 256kB  | 256kB  | 256kB  | 256kB  | 256kB  | 256kB  | 256kB  |

The bash scripts for these simulations are in the **step03/bash_scripts** folder and the simulations files in the **step03/simulations_files_results/benchmark_name_s##** folders. Also the results with the desired measurements are listed in the **step03/simulations_files_results/results_all.txt** file, these file show how the simulations settings affects the CPI, the simulation time and the caches miss rates for every benchmark.

The graphs below show the yield of each benchmark for each simulation and the cost of each simulation:

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step03/3_plots/CPI.png?raw=true" />

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step03/3_plots/Simulations_Costs.png?raw=true" />

Initially from the first diagram it seems that the simulations tested are, for most benchmarks , more efficient than the reference one. However, it is observed that no large differences are observed between these simulations. This concludes that further upgrading to parameter values does not greatly increase performance.

Instead, in the second diagram the upgrade of the parameters seems to mainly increase the cost. This is best seen in the diagram below :

<img src="https://github.com/eachristgr/Computer-Architecture/blob/main/Lab02/step03/3_plots/AvgCPI_Cost.png?raw=true" />

As costs increase the average CPI of benchmarks remains relatively stable.

Looking at the results, we can say that an upgrade to the system and especially to the cache line size has some costs which is justified by the performance. However, more upgrades increase the cost more than the performance. So a system with a relatively low cost but that can perform well in all five benchmarks could be **Sim_03** or **Sim_05**, which have both low cost and averagae CPI in the 5 benchmarks.




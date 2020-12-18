# Lab03_Report
**Christos Emmanouil, Chatzipemou Aristeidis**

This file contains the contains the results of the third lab exercise.

Note that in commands sections the files and folders paths maybe different from those mentioned in this file.

### 1. Introduction to McPAT

McPAT is a tool that can model processor architectures and provide estimates of their power consumption, integration size, and timing. As input it accepts a description of the microarchitecture of a system through a series of parameters based on which it constructs a model. In addition, it receives as input a series of statistics which it uses to be able to generate estimates for the consumption of the system as a whole and each of its components separately.

The tool has the ability to model technology circuits from 90nm to 22nm while later work has tried to modify it so that it can model even smaller scale circuits and FinFET technologies beyond Bulk CMOS.

#### 1.1. Dynamic Power & Leakage

In order to understand how McPAT works, some examples were executed. In the generated results, there is some information about **Power** and **Leakage**. Thus it is important to make a reference to their meaning and differences.

- **Peak Power** is the total power that the CPU can dissipate during extreme conditions.
- **Dynamic Power** is the power consumed while driving the transistors inside the CPU from High to Low and vice versa, as well as during the charging and the discharging of the capacitance of the CPU. It is proportional to the total Capacitance of the system *C*, the processors supply voltage *Vdd*, the voltage difference during the switch *ΔV* and the clock frequency of the CPU *fclk*.
- **Short Circuit Power** like the dynamic power is consumed during the switch of the transistor. Furthermore it is generated when 2 or more transistors of different speed conduct simultaneously for a very short amount of time. Even though it is not a variable in the generated info of McPAT, *Short Circuit Power* is calculated and added to the total *Dynamic Power* because in fact, when a transistor switches it consumes both *Dynamic* and *Short Circuit* Power.
- **Leakage Power** is the static power consumed by the CPUs transistors . Specifically the power that the transistors leak is dew to imperfections that let current flow through them. The Leakage power is proportional to the number of transistors that their status is unchanged (ON/OFF). It is proportional to the processors supply voltage *Vdd* and the current that flows through *I_leakage*. There are two main types Leakage Power: 
  - **Gate leakage**, that is the due to current witch runs through the Gate-Substrate
  - **Subthreshold**, witch is the due to the current that flows through the Drain/Source of the       transistor, while it is OFF (logical 0).
- **Runtime Dynamic** is in fact the total energy required by a program during processing divided by the total simulation time.

With that in mind, it can be said that running a more demanding program means that more transistor will be switched ON or OFF, thus resulting in a higher Dynamic Power. On the other hand running a less demanding program means that there is less load at the CPU, witch results in fewer transistors turning ON and then OFF, thus the Leakage Power is higher.

As much as a program runs there is a definite number of switches that will happen to the transistors  so there is a peak at the Dynamic Power that is consumed. Although the transistors will remain active or inactive for a longer period of time, witch results in higher Leakage Power

#### 1.2. Energy Efficiency

To see if the 40W processor can reduce the battery's life slower than than a 5W processor a way to reduce either of the Leakage/Dynamic Powers must be found.

Reducing CPU voltage can reduce **Dynamic Power** leading to less power consumption. Furthermore a lower CPU frequency in order to minimize the switches that happens to the transistors can reduce the energy consumption, too. Though both options slow down the CPU a lot.

The **Leakage Power** can be reduced by cutting off the power of the transistors which are not used at the moment. 

**McPat** does not show all the information needed to compute the energy consumption, specifically the total simulation time. In order to calculate the energy consumption, files that were generated with the **gem5** simulations must be used.

#### 1.3. Compare Xeon's and ARM A9's Energy Efficiency

In order to show that a high power processor cannot be more energy efficient than a low power processor, a comparison between Xeon and ARM A9 was made.

The needed information about the processor was produced by McPAT with the following commands :

- Xeon

 ```bash
$ ./my_mcpat/mcpat/mcpat -infile my_mcpat/mcpat/ProcessorDescriptionFiles/Xeon.xml - print_level 1 > Lab03/step01/Xeon.txt
 ```

- ARM A9

 ```bash
$ ./my_mcpat/mcpat/mcpat -infile my_mcpat/mcpat/ProcessorDescriptionFiles/ARM_A9_2GHz.xml - print_level 1 > Lab03/step01/ARM_A9.txt
 ```

The results were saved in **step01** folder. From these the following information, about the processor, can be obtained :

|                                        |     Xeon     |    ARM A9    |
| :------------------------------------- | :----------: | :----------: |
| Technology                             |    65 nm     |    40 nm     |
| Clock Frequency                        |   3.4 GHz    |    2 GHz     |
| Area                                   | 410.507 mm^2 | 5.39698 mm^2 |
| Peak Power                             |  134.938 W   |  1.74189 W   |
| Total Leakage                          |  36.8319 W   |  0.108687 W  |
| Peak Dynamic                           |  98.1063 W   |   1.6332 W   |
| Subthreshold Leakage                   |  35.1632 W   | 0.0523094 W  |
| Subthreshold Leakage with power gating |  16.3977 W   |      -       |
| Gate Leakage                           |  1.66871 W   | 0.0563774 W  |
| Runtime Dynamic                        |  72.9199 W   |  2.96053 W   |

Based on the above, the total energy of the processors to run the application can be calculated based on the formula :

**Energy = (TotalLeakage + RuntimeDynamic) * Time**

Where time is the execution time of the application in seconds.

Due to the fact that the total run-times are not available, there was made the assumption that Xeon is 40 times faster than the ARM A9, so the results are :

- Xeon

**Xeon_Energy = (36.8319 + 72.9199 ) * 1 =  109.7518 J**

- ARM A9

**ARMA9_Energy = (0.108687 + 2.96053 ) * 40 =  122.76868 J**

As it turns out, the power consumed to run the application is less for the Xeon processor. However, assuming that the operation of the systems is not interrupted after the execution of the application, the power required by the Xeon processor for the remaining 39 seconds must be added.

This energy can be calculated from the leakage currents of the closed transistors. So the energy consumed by the Xeon processor in 40 seconds is :

**Xeon_Energy = 109.7518 + 36.8319 * 39 =  1546.1959 J**

As it turns out, Xeon  may need less power than ARM A9 to perform the same application, however at the same time the power consumption from leakage currents is much higher. So Xeon can not be more energy efficient than ARM A9.

### 2. Energy - Delay Product Optimization (gem5 + McPAT)

The purpose of the second part is to find a system that will have low execution times and low energy consumption.

To do this, a study of how various features of a system affect its power must be done and then the EDPs for a number of systems must be found.

#### 2.1. Peak Power vs System Features

In order to study the affect of the system features in its power, gem5 results from Lab02 - step02 were used. 

After selecting the appropriate files from Lab02 - step02, **Scripts/GEM5ToMcPAT.py** file was used in order to create the necessary XML files. More specifically **step02/create_xmls_bash_cmd.sh** was used and the XML files were save in the **xml_files** folder.

Then **step02/create_mcpat_results_bash_cmds.sh** was used, in order to run McPAT tool for every XLM file. The results were saved in the **mcpat_results** folder. From these Peak Power was used in order to create the following plots :

Peak Power vs Cache Line Size.png

Peak Power vs L1_Data Cache Associativity.png

Peak Power vs L1_Data Cache Size.png

Peak Power vs L1_Instruction Cache Associativity.png

Peak Power vs L1_Instruction Cache Size.png

Peak Power vs L2 Cache Associativity.png

Peak Power vs L2 Cache Size.png

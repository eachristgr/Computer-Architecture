# Bash script for testing different parameters in mcf simulation
# Main Simulation Parameters are:
# --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz
#
# Conastant Parameters are:
# --cpu-type --caches --l2cache --cpu-clock
#
# Changable Parameters are:
# --l1d_size --l1i_size --l2_size --l1i_assoc --l1d_assoc --l2_assoc --cacheline_size
#
# -----------------------------------
# max( l1d_size + l1i_size ) = 256kB
# max ( l2_size ) = 4MB
# -----------------------------------


# l1d_size
# = 8kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1d_size_8kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=8kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 16kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1d_size_16kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=16kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 32kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1d_size_32kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 64kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1d_size_64kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 128kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1d_size_128kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000


# l1i_size
# = 8kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1i_size_8kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1i_size=8kB --l1d_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 16kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1i_size_16kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1i_size=16kB --l1d_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 32kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1i_size_32kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1i_size=32kB --l1d_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 64kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1i_size_64kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1i_size=64kB --l1d_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 128kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1i_size_128kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1i_size=128kB --l1d_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000


# l2_size
# = 128kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l2_size_128kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=128kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 256kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l2_size_256kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=256kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 512kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l2_size_512kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 1024kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l2_size_1024kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=1024kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 2048kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l2_size_2048kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000


# l1i_assoc
# = 1
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1i_assoc_1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1i_assoc_2 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=2 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 4
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1i_assoc_4 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=4 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 8
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1i_assoc_8 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=8 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 16
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1i_assoc_16 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=16 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000


# l1d_assoc
# = 1
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1d_assoc_1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1d_assoc=1 --l1i_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1d_assoc_2 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1d_assoc=2 --l1i_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 4
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1d_assoc_4 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1d_assoc=4 --l1i_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 8
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1d_assoc_8 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1d_assoc=8 --l1i_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 16
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l1d_assoc_16 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1d_assoc=16 --l1i_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000


# l2_assoc
# = 1
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l2_assoc_1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l2_assoc=1 --l1i_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l2_assoc_2 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l2_assoc=2 --l1i_assoc=1 --l1d_assoc=1 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 4
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l2_assoc_4 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l2_assoc=4 --l1i_assoc=1 --l1d_assoc=1 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 8
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l2_assoc_8 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l2_assoc=8 --l1i_assoc=1 --l1d_assoc=1 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 16
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_l2_assoc_16 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l2_assoc=16 --l1i_assoc=1 --l1d_assoc=1 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000


# cacheline_size
# = 16kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_cl_size_16kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=16 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 32kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_cl_size_32kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=32 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 64kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_cl_size_64kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 128kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_cl_size_128kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=128 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000
# = 256kB
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_cl_size_256kB /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=256 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000

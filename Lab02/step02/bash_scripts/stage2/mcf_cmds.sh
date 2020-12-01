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


# --cacheline_size=128 --l1d_size=32kB --l1i_size=64kB --l2_size=1024kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_f01 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=128 --l1d_size=32kB --l1i_size=64kB --l2_size=1024kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000

# --cacheline_size=128 --l1d_size=32kB --l1i_size=64kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_f02 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=128 --l1d_size=32kB --l1i_size=64kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000

# --cacheline_size=128 --l1d_size=64kB --l1i_size=64kB --l2_size=1024kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_f03 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=128 --l1d_size=64kB --l1i_size=64kB --l2_size=1024kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000

# --cacheline_size=128 --l1d_size=64kB --l1i_size=64kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_f04 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=128 --l1d_size=64kB --l1i_size=64kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000

# --cacheline_size=128 --l1d_size=128kB --l1i_size=64kB --l2_size=1024kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_f05 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=128 --l1d_size=128kB --l1i_size=64kB --l2_size=1024kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000

# --cacheline_size=128 --l1d_size=128kB --l1i_size=64kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/specmcf/mcf_f06 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=128 --l1d_size=128kB --l1i_size=64kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/src/specmcf -o "/home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/429.mcf/data/inp.in" -I 100000000


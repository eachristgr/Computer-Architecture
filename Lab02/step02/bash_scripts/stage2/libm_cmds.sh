# Bash script for testing different parameters in libm simulation
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


# --cacheline_size=256 --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/speclibm/libm_f01 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=256 --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

# --cacheline_size=256 --l1d_size=32kB --l1i_size=64kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/speclibm/libm_f02 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=256 --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

# --cacheline_size=256 --l1d_size=32kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/speclibm/libm_f03 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=256 --l1d_size=32kB --l1i_size=64kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

# --cacheline_size=256 --l1d_size=32kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/speclibm/libm_f04 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=256 --l1d_size=32kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

# --cacheline_size=256 --l1d_size=64kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/speclibm/libm_f05 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=256 --l1d_size=64kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

# --cacheline_size=256 --l1d_size=64kB --l1i_size=64kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/speclibm/libm_f06 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=256 --l1d_size=64kB --l1i_size=64kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

# --cacheline_size=256 --l1d_size=64kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/speclibm/libm_f07 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=256 --l1d_size=64kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

# --cacheline_size=256 --l1d_size=64kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_02_results/speclibm/libm_f08 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cacheline_size=256 --l1d_size=64kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000




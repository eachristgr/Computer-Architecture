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


# --l1d_size=32kB --l1d_assoc=4 --l1i_size=32kB --l1i_assoc=1 --l2_size=512kB --l2_assoc=1 --cacheline_size=256
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_03_results/libm_s01 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1d_assoc=4 --l1i_size=32kB --l1i_assoc=1 --l2_size=512kB --l2_assoc=1 --cacheline_size=256 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

# --l1d_size=32kB --l1d_assoc=4 --l1i_size=32kB --l1i_assoc=1 --l2_size=1024kB --l2_assoc=1 --cacheline_size=256
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_03_results/libm_s02 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1d_assoc=4 --l1i_size=32kB --l1i_assoc=1 --l2_size=1024kB --l2_assoc=1 --cacheline_size=256 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000
 
# --l1d_size=32kB --l1d_assoc=4 --l1i_size=64kB --l1i_assoc=1 --l2_size=512kB --l2_assoc=1 --cacheline_size=256
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_03_results/libm_s03 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1d_assoc=4 --l1i_size=64kB --l1i_assoc=1 --l2_size=512kB --l2_assoc=1 --cacheline_size=256 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000
 
# --l1d_size=32kB --l1d_assoc=4 --l1i_size=64kB --l1i_assoc=1 --l2_size=1024kB --l2_assoc=1 --cacheline_size=256
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_03_results/libm_s04 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1d_assoc=4 --l1i_size=64kB --l1i_assoc=1 --l2_size=1024kB --l2_assoc=1 --cacheline_size=256 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000
 
# --l1d_size=64kB --l1d_assoc=4 --l1i_size=32kB --l1i_assoc=1 --l2_size=512kB --l2_assoc=1 --cacheline_size=256
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_03_results/libm_s05 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1d_assoc=4 --l1i_size=32kB --l1i_assoc=1 --l2_size=512kB --l2_assoc=1 --cacheline_size=256 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000
 
# --l1d_size=64kB --l1d_assoc=4 --l1i_size=32kB --l1i_assoc=1 --l2_size=1024kB --l2_assoc=1 --cacheline_size=256
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_03_results/libm_s06 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1d_assoc=4 --l1i_size=32kB --l1i_assoc=1 --l2_size=1024kB --l2_assoc=1 --cacheline_size=256 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000
 
# --l1d_size=64kB --l1d_assoc=4 --l1i_size=64kB --l1i_assoc=1 --l2_size=512kB --l2_assoc=1 --cacheline_size=256
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_03_results/libm_s07 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1d_assoc=4 --l1i_size=64kB --l1i_assoc=1 --l2_size=512kB --l2_assoc=1 --cacheline_size=256 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000
 
# --l1d_size=64kB --l1d_assoc=4 --l1i_size=64kB --l1i_assoc=1 --l2_size=1024kB --l2_assoc=1 --cacheline_size=256
/home/eachrist/Desktop/Computer_Architecture/my_gem5/build/ARM/gem5.opt -d step_03_results/libm_s08 /home/eachrist/Desktop/Computer_Architecture/my_gem5/configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1d_assoc=4 --l1i_size=64kB --l1i_assoc=1 --l2_size=1024kB --l2_assoc=1 --cacheline_size=256 --cpu-clock=1GHz -c /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/src/speclibm -o "20 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/lbm.in 0 1 /home/eachrist/Desktop/Computer_Architecture/my_gem5/LAB_02/spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000




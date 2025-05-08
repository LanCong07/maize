#!/bin/bash
# 定义源目录和目标目录
src_dir="/public/home/clwu/data/seed_metagenome/formal/20241008library/GTDB-Tk/all_bins/"
dest_dir="."

# 定义要复制的文件名列表
file_list=(
A1_11_bin1
A1_13_bin1
A1_2_bin4
A1_5_bin2
A1_6_bin1
A2_10_bin2
A2_12_bin2
A2_13_bin1
A2_15_bin1
A2_3_bin1
A2_4_bin3
A2_6_bin2
A2_7_bin2
A2_8_bin3
A2_9_bin1
A4_12_bin1
A4_1_bin2
A4_5_bin1
A5_12_bin2
A5_15_bin2
A5_2_bin4
A5_4_bin1
A5_6_bin2
)

# 遍历文件名列表，使用find命令查找并复制文件
for file in "${file_list[@]}"; do
  find "$src_dir" -type f -name "$file*" -exec cp {} "$dest_dir" \;
done

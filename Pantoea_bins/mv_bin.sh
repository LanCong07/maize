#!/bin/bash
# 定义源目录和目标目录
src_dir="/public/home/clwu/data/seed_metagenome/formal/20241008library/GTDB-Tk/all_bins/"
dest_dir="."

# 定义要复制的文件名列表
file_list=(
  A5_12_bin1
  A1_1_bin1
  A1_1_bin2
  A1_2_bin1
  A1_3_bin2
  A1_5_bin1
  A1_7_bin1
  A2_10_bin1
  A2_12_bin1
  A2_15_bin2
  A2_3_bin2
  A2_4_bin2
  A2_5_bin2
  A2_6_bin1
  A2_7_bin1
  A2_8_bin1
  A2_8_bin2
  A2_9_bin2
  A2_9_bin4
  A3_2_bin1
  A3_4_bin3
  A3_6_bin3
  A3_7_bin3
  A3_8_bin2
  A3_9_bin2
  A4_12_bin2
  A4_12_bin3
  A4_1_bin1
  A4_5_bin2
  A5_10_bin1
  A5_11_bin1
  A5_11_bin2
  A5_2_bin3
  A5_4_bin2
  A5_6_bin1
  A5_9_bin1
)

# 遍历文件名列表，使用find命令查找并复制文件
for file in "${file_list[@]}"; do
  find "$src_dir" -type f -name "$file*" -exec cp {} "$dest_dir" \;
done

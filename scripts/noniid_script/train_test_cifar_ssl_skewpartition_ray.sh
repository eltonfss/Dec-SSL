#!/bin/bash

n=${1-"10"}
i=${2-"1"}

time python src/decentralized_ssl_main_ray.py --model=resnet --dataset=cifarssl --gpu=0 --iid=0 --batch_size=256 --local_bs 256 --epochs=500 --log_file_name "skew_partition"  --log_directory "noniid_scripts" \
									  --lr 0.001 --optimizer adam --local_bs 256 --backbone resnet18 --batch_size 256 --num_users 5 --local_ep 50 --frac 1   --y_partition_skew --y_partition_ratio 0.   

time python src/decentralized_ssl_main_ray.py --model=resnet --dataset=cifarssl --gpu=0 --iid=0 --batch_size=256 --local_bs 256 --epochs=500 --log_file_name "skew_partition"  --log_directory "noniid_scripts" \
									  --lr 0.001 --optimizer adam --local_bs 256 --backbone resnet18 --batch_size 256 --num_users 5 --local_ep 50 --frac 1   --y_partition_skew --y_partition_ratio 0.1   
 
time python src/decentralized_ssl_main_ray.py --model=resnet --dataset=cifarssl --gpu=0 --iid=0 --batch_size=256 --local_bs 256 --epochs=500 --log_file_name "skew_partition"  --log_directory "noniid_scripts" \
									  --lr 0.001 --optimizer adam --local_bs 256 --backbone resnet18 --batch_size 256 --num_users 5 --local_ep 50 --frac 1   --y_partition_skew --y_partition_ratio 0.5  

time python src/decentralized_ssl_main_ray.py --model=resnet --dataset=cifarssl --gpu=0 --iid=0 --batch_size=256 --local_bs 256 --epochs=500 --log_file_name "skew_partition"  --log_directory "noniid_scripts" \
									  --lr 0.001 --optimizer adam --local_bs 256 --backbone resnet18 --batch_size 256 --num_users 5 --local_ep 50 --frac 1   --y_partition_skew --y_partition_ratio 1  

time python src/decentralized_ssl_main_ray.py --model=resnet --dataset=cifarssl --gpu=0 --iid=0 --batch_size=256 --local_bs 256 --epochs=500 --log_file_name "skew_partition"  --log_directory "noniid_scripts" \
									  --lr 0.001 --optimizer adam --local_bs 256 --backbone resnet18 --batch_size 256 --num_users 5 --local_ep 50 --frac 1   --y_partition_skew --y_partition_ratio 5  
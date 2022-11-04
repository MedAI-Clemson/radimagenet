# resume
python train.py \
    /zfs/wficai/radimagenet/imagenet_fmt/ \
    --resume /home/dane2/Code/radimagenet/output/train/20221022-154412-xception-224/model_best.pth.tar \
    --img-size 224 \
    --mean 0.4850 0.4560 0.4060 \
    --std 0.2290 0.2240 0.2250 \
    --model xception \
    --lr 0.0001 \
    --epochs 160 \
    --weight-decay 1e-5 \
    --drop 0.3 \
    --sched cosine \
    -b 256 \
    -j 20
    
# models: resnet18d, resnet34d, resnet50d
  
# from scratch
# python train.py \
#     /zfs/wficai/radimagenet/imagenet_fmt/ \
#     --pretrained \
#     --class-map /zfs/wficai/radimagenet/imagenet_fmt/class_map.pkl \
#     --num-classes 165 \
#     --img-size 224 \
#     --mean 0.4850 0.4560 0.4060 \
#     --std 0.2290 0.2240 0.2250 \
#     --model xception \
#     --lr 0.0001 \
#     --epochs 160 \
#     --weight-decay 1e-5 \
#     --drop 0.3 \
#     --sched cosine \
#     -b 256 \
#     -j 20
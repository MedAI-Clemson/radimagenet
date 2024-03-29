# models: resnet18d, resnet34d, resnet50d
  
# from scratch
# python train.py \
./distributed_train.sh 2 \
    /zfs/wficai/radimagenet/imagenet_fmt_official/ \
    --class-map /zfs/wficai/radimagenet/imagenet_fmt_official/class_map.pkl \
    --num-classes 165 \
    --img-size 224 \
    --model resnet50d \
    --lr 0.4 \
    --epochs 200 \
    --drop 0.3 \
    --amp \
    --sched cosine \
    --reprob 0.4 --remode pixel \
    -b 512 \
    -j 30
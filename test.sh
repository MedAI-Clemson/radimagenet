# models: resnet18d, resnet34d, resnet50d
  
python validate.py \
    /zfs/wficai/radimagenet/imagenet_fmt_official/ \
    --split test \
    --class-map /zfs/wficai/radimagenet/imagenet_fmt_official/class_map.pkl \
    --num-classes 165 \
    --img-size 224 \
    --model resnet50d \
    --checkpoint /home/dane2/Code/radimagenet/output/train/20221120-141422-resnet50d-224/model_best.pth.tar \
    --amp \
    -b 512 \
    -j 30
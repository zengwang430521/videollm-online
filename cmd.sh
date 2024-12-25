export LC_CTYPE=en_US.UTF-8
tmux at -t 7

conda activate videollm
cd /mnt/afs/zengwang/tds/videollm-online/


MAX_JOBS=64 pip install flash-attn --no-build-isolation



~/ads-cli sync \
/home/SENSETIME/zengwang/Downloads/videollm-online-8b-v1plus \
s3://8760BC55A9A047B3B9FD68D4C5C43874:9DD40B9B326C4EA99ACAD4200538013E@tds-api.aoss.cn-sh-01.sensecoreapi-oss.cn/ckpt/videollm-online-8b-v1plus

/mnt/afs/zengwang/ads-cli sync \
s3://8760BC55A9A047B3B9FD68D4C5C43874:9DD40B9B326C4EA99ACAD4200538013E@tds-api.aoss-internal.cn-sh-01.sensecoreapi-oss.cn/ckpt/videollm-online-8b-v1plus \
/mnt/afs/zengwang/tds/ckpt/videollm-online-8b-v1plus



~/ads-cli sync \
/home/SENSETIME/zengwang/Downloads/Meta-Llama-3-8B-Instruct \
s3://8760BC55A9A047B3B9FD68D4C5C43874:9DD40B9B326C4EA99ACAD4200538013E@tds-api.aoss.cn-sh-01.sensecoreapi-oss.cn/ckpt/Meta-Llama-3-8B-Instruct

/mnt/afs/zengwang/ads-cli sync \
s3://8760BC55A9A047B3B9FD68D4C5C43874:9DD40B9B326C4EA99ACAD4200538013E@tds-api.aoss-internal.cn-sh-01.sensecoreapi-oss.cn/ckpt/Meta-Llama-3-8B-Instruct \
/mnt/afs/zengwang/tds/ckpt/Meta-Llama-3-8B-Instruct


~/ads-cli sync \
/home/SENSETIME/zengwang/Downloads/siglip-large-patch16-384  \
s3://8760BC55A9A047B3B9FD68D4C5C43874:9DD40B9B326C4EA99ACAD4200538013E@tds-api.aoss.cn-sh-01.sensecoreapi-oss.cn/ckpt/siglip-large-patch16-384

/mnt/afs/zengwang/ads-cli sync \
s3://8760BC55A9A047B3B9FD68D4C5C43874:9DD40B9B326C4EA99ACAD4200538013E@tds-api.aoss-internal.cn-sh-01.sensecoreapi-oss.cn/ckpt/siglip-large-patch16-384 \
/mnt/afs/zengwang/tds/ckpt/siglip-large-patch16-384




conda activate videollm
cd /mnt/afs/zengwang/tds/videollm-online/


HF_DATASETS_OFFLINE=1 HF_HUB_OFFLINE=1 python -m demo.app \
   --resume_from_checkpoint /mnt/afs/zengwang/tds/ckpt/videollm-online-8b-v1plus \
   --llm_pretrained /mnt/afs/zengwang/tds/ckpt/Meta-Llama-3-8B-Instruct \
   --vision_pretrained /mnt/afs/zengwang/tds/ckpt/siglip-large-patch16-384 \
   --frame_fps 10


python -m demo.cli_v2 \
   --resume_from_checkpoint /mnt/afs/zengwang/tds/ckpt/videollm-online-8b-v1plus \
   --llm_pretrained /mnt/afs/zengwang/tds/ckpt/Meta-Llama-3-8B-Instruct \
   --vision_pretrained /mnt/afs/zengwang/tds/ckpt/siglip-large-patch16-384 \
   --frame_fps 5








demo/assets/push-up_20s.mp4
Please count how many push-ups the man does. Each time he finishes a push-up, please output the number of push-ups he has done.
(Video Time = 0.0s) User: Please count how many push-ups the man does.
(Video Time = 0.0s) Assistant: A man does push-ups.

demo/assets/push-up_20s.mp4
Please count how many push-ups the man does.
(Video Time = 0.0s) User: Please count how many push-ups the man does. Each time he finishes a push-up, please output the number of push-ups he has done.
(Video Time = 0.0s) Assistant: A man does push-ups.

demo/assets/push-up_20s.mp4
Please narrate the video in real time.
(Video Time = 0.0s) User: Please narrate the video in real time.
(Video Time = 0.0s) Assistant: You exercise with a group of people.



demo/assets/push-up_2.mp4
Please narrate the video in real time.
(Video Time = 0.0s) User: Please narrate the video in real time.
(Video Time = 0.0s) Assistant: You exercise with a group of people.






#模型
huggingface-cli download --resume-download [1] --local-dir [2] --local-dir-use-symlinks False
#数据集
huggingface-cli download --token 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 \
--repo-type dataset \
--resume-download wangyueqian/MMDuetIT \
--local-dir /home/SENSETIME/zengwang/myprojects/task_define_service/data/MMDuetIT --local-dir-use-symlinks False


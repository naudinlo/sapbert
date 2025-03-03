CUDA_VISIBLE_DEVICES=$1 python3 sapbert/train/train.py \
	--model_dir "microsoft/BiomedNLP-PubMedBERT-base-uncased-abstract-fulltext" \
	--train_dir $PATH_TO_TRAIN_FILE \
	--output_dir tmp/sapbert\
	--use_cuda \
	--epoch 1 \
	--train_batch_size 256 \
	--learning_rate 2e-5 \
	--max_length 25 \
	--checkpoint_step 999999 \
	--parallel \
	--amp \
	--pairwise \
	--random_seed 33 \
	--loss ms_loss \
	--use_miner \
	--type_of_triplets "all" \
	--miner_margin 0.2 \
	--agg_mode "cls"

python train.py \
--seed 100 \
--model_name_or_path "mistralai/Ministral-8B-Instruct-2410" \
--dataset_name "/workspace/tokenized_4k_final_mixed_training_set_from_group_start_v06_10000_samples_manual_selection_and_1709752579_dataset_86300_samples_1_to_10/train" \
--num_train_epochs 100 \
--logging_steps 5 \
--log_level "info" \
--logging_strategy "steps" \
--save_strategy "steps" \
--save_steps 100 \
--bf16 True \
--learning_rate 2.5e-5 \
--warmup_ratio 0.0 \
--output_dir "ministral_8B_qlora_unsloth_4k_bs_64_q_proj_v_proj" \
--per_device_train_batch_size 1 \
--gradient_accumulation_steps 64 \
--gradient_checkpointing True \
--use_reentrant True \
--use_peft_lora True \
--use_unsloth True \
--lora_r 8 \
--lora_alpha 32 \
--lora_dropout 0.1 \
--lora_target_modules "q_proj,v_proj" \
--use_4bit_quantization True \
--bnb_4bit_compute_dtype "bfloat16" \
--bnb_4bit_quant_storage_dtype "bfloat16" \
--use_flash_attn True \
--report_to="wandb"
 
 #"q_proj,k_proj,v_proj,o_proj,down_proj,up_proj,gate_proj" \
 #"/workspace/tokenized_32k_final_mixed_training_set_from_group_start_v06_10000_samples_manual_selection_ai_smart_records_and_1709752579_dataset_86300_samples_1_to_10_no_line_breaks/train"
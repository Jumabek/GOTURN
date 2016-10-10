python ../../src/visualizer/extra/plot_val_log.py  sml_scrtch_npd.png val_evaluation.log


#sieamese comparision command
python ../../src/visualizer/extra/plot_val_log.py affect_of_iter.png ../sms_wht_nms_160K/val_evaluation.log,../sms_wht_nms_260K/val_evaluation.log,../sms_wht_nms_200K/val_evaluation.log,../sms_wtht_wht_nms_80K/val_evaluation.log 'siamese initialized from 160K pre-trian','initialized from 260K pre-train','initialized from 200K pre-train','siamese wthout weight names 80K iter prt'




#best siamese vs. original model

 python ../../src/visualizer/extra/plot_val_log.py npd_siamese_vs_orig.png ../prt_conv5_pad_450K_conv5_pad/val_evaluation.log,../original/val_evaluation.log,../prt_conv5_pad_450K_conv5_pad_full/val_evaluation.log 'prt_conv5_pad_450K_conv5_pad','original','prt_conv5_pad_450K_conv5_pad_full'



#full vs powerOf2 for siamese 4conv

 python ../../src/visualizer/extra/plot_val_log.py siamese_full_vs_power2_4conv.png ../prt_200K_4conv/val_evaluation.log,../prt_200K_4conv_full/val_evaluation.log 'prt_200K_4conv ','prt_200K_4conv full'


#full vs powerOf2 for orig

 python ../../src/visualizer/extra/plot_val_log.py orig_full_vs_power2.png ../original/val_evaluation.log,../smlr_fc/val_evaluation.log 'orig ','orig full'



#siamese nets 
 python ../../src/visualizer/extra/plot_val_log.py siamese_nets.png ../prt_200K_4conv/val_evaluation.log,../prt_200K_rand_conv5/val_evaluation.log,../prt_200K_train_conv5/val_evaluation.log,../prt_200K_rand_conv5_alpha0.5/val_evaluation.log,../prt_200K_4conv_alpha0.5/val_evaluation.log,../prt_260K_4conv/val_evaluation.log,../prt_450K_5conv/val_evaluation.log,../prt_450_5conv_pad_full 'initialized from 200K pre-train','5 conv version. conv5 rand','train conv 5','5 conv alpha=0.5','4 conv alpha = 0.5','prt_260K_4conv','prt_450K_5conv conv5 has padding','prt_450K_5conv_pad_full'


#smlr conv 5 lr vs 10x higher random initialized conv5 lr
python ../../src/visualizer/extra/plot_val_log.py conv5_lr_vs_10x_rand_lr.png ../prt_450K_train_conv5_smlr_lr/val_evaluation.log,../sms_wht_nms_200K_train_conv5/val_evaluation.log 'conv5 train ','conv5 10x higher lr with rand init'

python ../../src/visualizer/extra/plot_val_log.py  sml_scrtch_npd.png val_evaluation.log


#sieamese comparision command
python ../../src/visualizer/extra/plot_val_log.py affect_of_iter.png ../sms_wht_nms_160K/val_evaluation.log,../sms_wht_nms_260K/val_evaluation.log,../sms_wht_nms_200K/val_evaluation.log,../sms_wtht_wht_nms_80K/val_evaluation.log 'siamese initialized from 160K pre-trian','initialized from 260K pre-train','initialized from 200K pre-train','siamese wthout weight names 80K iter prt'




#best siamese vs. original model

 python ../../src/visualizer/extra/plot_val_log.py npd_siamese_vs_orig.png ../sms_wht_nms_200K_5conv_alpha0.5/val_evaluation.log,../original/val_evaluation.log 'initialized from 200K pre-train','original'



#full vs powerOf2

 python ../../src/visualizer/extra/plot_val_log.py full_vs_power2.png ../sms_wht_nms_200K/val_evaluation.log,../sms_wht_nms_200K_full/val_evaluation.log 'initialized from 200K pre-train','4096 fully connected'


#4 conv vs 5 conv vs 5 conv train
 python ../../src/visualizer/extra/plot_val_log.py siamese_nets.png ../sms_wht_nms_200K/val_evaluation.log,../sms_wht_nms_200K_5conv/val_evaluation.log,../sms_wht_nms_200K_train_conv5/val_evaluation.log,../sms_wht_nms_200K_5conv_alpha0.5/val_evaluation.log,../sms_200K_prt_4conv_alpha0.5/val_evaluation.log 'initialized from 200K pre-train','5 conv version','train conv 5','5 conv alpha=0.5','4 conv memorized'


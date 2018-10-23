%% Load the data first\
clc;
clear;
analysis_answer=table();

[BS_data, BS_CGM, AS_data, AS_CGM, DS_data, DS_CGM] = load_data; 

BS_CGM = horzcat(BS_CGM, split_datetime (BS_CGM.eventStartSGdt, 'EventStart'));
BS_CGM = horzcat(BS_CGM, split_datetime (BS_CGM.eventStartSGdt, 'EventEnd'));

AS_CGM = horzcat(AS_CGM, split_datetime (AS_CGM.eventStartSGdt, 'EventStart'));
AS_CGM = horzcat(AS_CGM, split_datetime (AS_CGM.eventStartSGdt, 'EventEnd'));

DS_CGM = horzcat(DS_CGM, split_datetime (DS_CGM.eventStartSGdt, 'EventStart'));
DS_CGM = horzcat(DS_CGM, split_datetime (DS_CGM.eventStartSGdt, 'EventEnd'));

DS_data = horzcat(DS_data, split_datetime (DS_data.eventStartSGdt, 'EventStart'));
DS_data = horzcat(DS_data, split_datetime (DS_data.eventStartSGdt, 'EventEnd'));

SS_ROC = table(DS_CGM.pid, DS_CGM.ROC_InI_30mnts, DS_CGM.No_of_main_sleep, DS_CGM.EventStart_date_part);
analysis_answer = vertcat(analysis_answer, perform_analysis (SS_ROC, 54,'lte','3.01','SG ROC at start of sleep (mg/dL/min)')); 
analysis_answer = vertcat(analysis_answer, perform_analysis (SS_ROC,  1,'gte', '3.02','% of sleep with medium ROC  at start of sleep (>=1 )' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (SS_ROC, -1,'lte', '3.03','% of sleep with medium ROC  at start of sleep (<=-1 )' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (SS_ROC,  2,'gte', '3.04','% of sleep with high Positive ROC (>= 2 mg/dL/min) at start of sleep' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (SS_ROC, -2,'lte', '3.05','% of sleep with high Negative ROC (<= -2 mg/dL/min) at start of sleep' ));

%### START OF SLEEP 
SS_CGM_SUB = table (DS_CGM.pid, DS_CGM.eventStartSGVal, DS_CGM.No_of_main_sleep, DS_CGM.EventStart_date_part);
%answer = rbind(answer,perform_analysis_abs (SS_CGM_SUB,'3.06','SG at start of sleep (mg/dL)'));
analysis_answer = vertcat(analysis_answer, perform_analysis (SS_CGM_SUB, 54,'lt', '3.07', '% of sleeps with SG < 54 at sleep start' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (SS_CGM_SUB, 70,'lt', '3.08', '% of sleeps with SG < 70 at sleep start' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (SS_CGM_SUB,180,'gt', '3.09', '% of sleeps with SG > 180 at sleep start' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (SS_CGM_SUB,250,'gt', '3.10', '% of sleeps with SG > 250 at sleep start' ));


%### ROC - DURING SLEEP 
DS_ROC = table (DS_CGM.pid, DS_CGM.AVG_ROC_DURING_EVENT, DS_CGM.No_of_main_sleep, DS_CGM.EventStart_date_part);

COL_NAMES = {'pid', 'val', 'No_of_main_sleep', 'EventStart_date_part'};
DS_ROC.Properties.VariableNames = COL_NAMES; 
DS_ROC = DS_ROC(~isnan(DS_ROC.AVG_ROC_DURING_EVENT),:);

%answer = rbind(answer,perform_analysis_abs (DS_ROC,'4.01','SG ROC during sleep (mg/dL/min)'));
analysis_answer = vertcat(analysis_answer, perform_analysis (DS_ROC,  1,'gte', '4.02','% of sleep with medium ROC during sleep (>=1 )' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (DS_ROC, -1,'lte', '4.03','% of sleep with medium ROC during sleep (<=-1 )' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (DS_ROC,  2,'gte', '4.04','% of sleep with high Positive ROC (>= 2 mg/dL/min) during sleep' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (DS_ROC, -2,'lte', '4.05','% of sleep with high Negative ROC (<= -2 mg/dL/min) during sleep' ));


DS_CGM_SUB = table (DS_CGM.pid, DS_CGM.meanSG, DS_CGM.No_of_main_sleep, DS_CGM.EventStart_date_part);
answer = rbind(answer,perform_analysis_abs (DS_CGM_SUB,'4.06','SG during sleep (mg/dL)'));
analysis_answer = vertcat(analysis_answer, perform_analysis (DS_CGM_SUB, 54,'lt', '4.07', '% of sleeps with SG < 54 during sleep' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (DS_CGM_SUB, 70,'lt', '4.08', '% of sleep with SG < 70 during sleep' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (DS_CGM_SUB,180,'gt', '4.09', '% of sleep with SG > 180 during sleep' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (DS_CGM_SUB,250,'gt', '4.10', '% of sleep with SG > 250 during sleep' ));

DS_CGM_SUB_PITR = table (DS_CGM.pid, DS_CGM.PTIR, DS_CGM.No_of_main_sleep, DS_CGM.EventStart_date_part);
colnames (DS_CGM_SUB_PITR) <- COL_NAMES
DS_CGM_SUB_PITR <- DS_CGM_SUB_PITR[DS_CGM_SUB_PITR.val>0,]
answer = rbind(answer,perform_analysis_abs (DS_CGM_SUB_PITR,'4.11','Time in Range during sleep (70-180 mg/dL) (%)'));

%### ROC - AFTER SLEEP
%#5.01	SG ROC 4 hours after end of sleep (mg/dL/min)
AS_ROC = table (AS_CGM.pid, AS_CGM.ROC_LAST_30mnts, AS_CGM.No_of_main_sleep, AS_CGM.EventStart_date_part);
colnames (AS_ROC) <- COL_NAMES
AS_ROC <- AS_ROC[which(AS_ROC.val!='NaN'),];
answer = rbind(answer,perform_analysis_abs (AS_ROC,'5.01','SG ROC 4 hours after end of sleep (mg/dL/min)'));
analysis_answer = vertcat(analysis_answer, perform_analysis (AS_ROC,  1,'gte', '5.02','% of sleep with medium ROC  (>=1 ) 4 hours after end of sleep' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (AS_ROC, -1,'lte', '5.03','% of sleep with medium ROC  (<=-1 ) 4 hours after end of sleep' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (AS_ROC,  2,'gte', '5.04','% of sleep with high Positive ROC (>= 2 mg/dL/min) 4 hours after end of sleep' ));
analysis_answer = vertcat(analysis_answer, perform_analysis (AS_ROC, -2,'lte', '5.05','% of sleep with high Negative ROC (<= -2 mg/dL/min) 4 hours after end of  sleep' ));


AS_CGM_SUB = table (AS_CGM.pid, AS_CGM.meanSG, AS_CGM.No_of_main_sleep, AS_CGM.EventStart_date_part);
%answer = rbind(answer,perform_analysis_abs (AS_CGM_SUB,'5.06','SG  4 hours after end of  sleep (mg/dL)'));
analysis_answer = vertcat(analysis_answer, perform_analysis (AS_CGM_SUB, 54,'lt', '5.07', '% of sleeps with SG < 54 within 4 hours'));
analysis_answer = vertcat(analysis_answer, perform_analysis (AS_CGM_SUB, 70,'lt', '5.08', '% of sleep with SG < 70 within 4 hours'));
analysis_answer = vertcat(analysis_answer, perform_analysis (AS_CGM_SUB,180,'gt', '5.09', '% of sleep with SG > 180 within 4 hours'));
analysis_answer = vertcat(analysis_answer, perform_analysis (AS_CGM_SUB,250,'gt', '5.10', '% of sleep with SG > 250 within 4 hours'));

%AS_CGM_SUB_PITR = table (AS_CGM.pid, AS_CGM.PTIR, AS_CGM.No_of_main_sleep, AS_CGM.EventStart_date_part);
%AS_CGM_SUB_PITR <- AS_CGM_SUB_PITR[AS_CGM_SUB_PITR.AS_CGM.PTIR>0,]
%answer = rbind(answer,perform_analysis_abs (AS_CGM_SUB_PITR,'5.11','Time in Range within 4 hours (70-180 mg/dL) (%)'));
% # ******************************************************************************
% # Name    : perform_analysis
% # Purpose : 
% # Inputs  :
% # Outputs : 
% # ******************************************************************************

function return_df = perform_analysis (cgm_data, sgVal,op, id, analysis)
    %COL_NAMES = {'pid', 'sgVal', 'No_of_main_sleep', 'EventStart_date_part'};
    cgm_data.Properties.VariableNames = {'pid', 'sgVal', 'No_of_main_sleep', 'EventStart_date_part'};
    
    TOTAL_SLEEPS=1;
    TOTAL_USERS=2;
    MEAN_PER_USER_PERCENT_SLEEPS_SG_LT=3;
    SD_PER_USER_PERCENT_SLEEPS_SG_LT=4;
    MEAN_PER_USER_PER_DAYPERCENT_SLEEPS_SG_LT=5;
    SD_PER_USER_PER_DAYPERCENT_SLEEPS_SG_LT=6;
    
    return_df = build_answer( string(id), string(analysis), TOTAL_SLEEPS, TOTAL_USERS, MEAN_PER_USER_PERCENT_SLEEPS_SG_LT, SD_PER_USER_PERCENT_SLEEPS_SG_LT, MEAN_PER_USER_PER_DAYPERCENT_SLEEPS_SG_LT,  SD_PER_USER_PER_DAYPERCENT_SLEEPS_SG_LT);
    
    function ret_tab = build_answer (Id,Analysis, Total, UserCount, MeanPerUser, SDPerUser, MeanPerUserPerDay, SDPerUserPerDay)
        structAnswer(1,1).Id 			= Id; 
        structAnswer(1,1).Analysis 		= Analysis; 
        structAnswer(1,1).Total 		= Total;
        structAnswer(1,1).UserCount  		= UserCount; 
        structAnswer(1,1).MeanPerUser 		= MeanPerUser; 
        structAnswer(1,1).SDPerUser 		= SDPerUser; 
        structAnswer(1,1).MeanPerUserPerDay 	= MeanPerUserPerDay;
        structAnswer(1,1).SDPerUserPerDay    	= SDPerUserPerDay;
        ret_tab = struct2table(structAnswer);
    end
end

% perform_analysis <- function(cgm_data, sgVal=54,op='lt', id, analysis) {
%   
%   COL_NAMES <- c('pid', 'sgVal', 'No_of_main_sleep', 'EventStart_date_part')
%   colnames (cgm_data) <- COL_NAMES
%   
%   if (op == 'lt' ) { 
%     temp_CGM <- cgm_data[cgm_data$sgVal<sgVal,];
%   } else if (op == 'gt' ) {
%     temp_CGM <- cgm_data[cgm_data$sgVal>sgVal,]
%   } else if (op == 'lte' ) {
%     temp_CGM <- cgm_data[cgm_data$sgVal<=sgVal,];
%   } else if (op == 'gte' ) {
%     temp_CGM <- cgm_data[cgm_data$sgVal>=sgVal,];
%   } else {
%     return;
%   }
%   
%   # Total
%   TOTAL_SLEEPS <- length (temp_CGM$pid);
%   
%   # User Count
%   TOTAL_USERS <- length(unique(temp_CGM$pid));
%   
%   # Mean per User: Group by Users 	
%   temp_main_sleeps <- unique(data.frame(cgm_data$pid, cgm_data$No_of_main_sleep));
%   colnames(temp_main_sleeps) <- c('pid', 'No_of_main_sleep'); 
%   
%   temp_sleeps_freq <- count(temp_CGM$pid);
%   colnames(temp_sleeps_freq)  <- c('pid', 'No_of_sleep_for_this_SG'); 
%   
%   temp_sleeps_main_freq_combined <- merge (x=temp_main_sleeps, y=temp_sleeps_freq, 'pid',all.x = TRUE);
%   temp_cols <- colnames(temp_sleeps_main_freq_combined);
%   temp_sleeps_main_freq_combined <- cbind(temp_sleeps_main_freq_combined, temp_sleeps_main_freq_combined$No_of_sleep_for_this_SG*100/temp_sleeps_main_freq_combined$No_of_main_sleep);
%   
%   #Fill the NAs with 0
%   temp_sleeps_main_freq_combined[is.na(temp_sleeps_main_freq_combined)] <- 0
%   colnames(temp_sleeps_main_freq_combined) <- c(temp_cols, 'Percent_sleeps');
%   
%   MEAN_PER_USER_PERCENT_SLEEPS_SG_LT <- mean (temp_sleeps_main_freq_combined$Percent_sleeps);
%   
%   # STD Per User	
%   SD_PER_USER_PERCENT_SLEEPS_SG_LT   <-   sd (temp_sleeps_main_freq_combined$Percent_sleeps);
%   
%   
%   # Mean per user per day
%   temp_main_sleep_days <- data.frame(cgm_data$pid, cgm_data$EventStart_date_part);
%   temp_main_sleep_days_freq <- count(temp_main_sleep_days$cgm_data.pid)
%   colnames(temp_main_sleep_days_freq) <- c('pid', 'user_sleep_days')
%   
%   temp_sleeps_main_freq_combined <- merge (x=temp_main_sleep_days_freq, y=temp_sleeps_freq, 'pid',all.x = TRUE);
%   temp_cols <- colnames(temp_sleeps_main_freq_combined);
%   temp_sleeps_main_freq_combined <- cbind(temp_sleeps_main_freq_combined, 
%                                           temp_sleeps_main_freq_combined$No_of_sleep_for_this_SG*100/
%                                             temp_sleeps_main_freq_combined$user_sleep_days);
%   
%   #Fill the NAs with 0
%   temp_sleeps_main_freq_combined[is.na(temp_sleeps_main_freq_combined)] <- 0
%   colnames(temp_sleeps_main_freq_combined) <- c(temp_cols, 'Percent_sleeps');
%   
%   MEAN_PER_USER_PER_DAYPERCENT_SLEEPS_SG_LT <- mean (temp_sleeps_main_freq_combined$Percent_sleeps);
%   
%   
%   # std per user per day
%   SD_PER_USER_PER_DAYPERCENT_SLEEPS_SG_LT <- sd (temp_sleeps_main_freq_combined$Percent_sleeps);
%   
%   return_df <- data.frame();
%   return_df <- data.frame(id, analysis, TOTAL_SLEEPS, TOTAL_USERS,
%                           MEAN_PER_USER_PERCENT_SLEEPS_SG_LT,        SD_PER_USER_PERCENT_SLEEPS_SG_LT, 
%                           MEAN_PER_USER_PER_DAYPERCENT_SLEEPS_SG_LT, SD_PER_USER_PER_DAYPERCENT_SLEEPS_SG_LT)
%   
%   colnames(return_df) <- COL_ANSWER;
%   return(return_df);
% }
% 

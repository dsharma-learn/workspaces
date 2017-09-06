function [BS_data BS_CGM DS_data DS_CGM AS_data AS_CGM] = load_data
    %% Load the data first
    filename = 'All_sleep_events_2.csv';
    M = csvread(filename,1);
    
    %% 
    % Get the sample for testing. 
    M = M(1:50,[1:14, 49, 51, 57:59,61]);
    
    % Columns used: A:N,  AW, AY, BE, BF, BG, BI
    %               1:14, 49, 51, 57:59     , 61 
    
    dataSleep = array2table(M);
    
    dataSleep.Properties.VariableNames = {'pid', 'Event_ID', 'No_of_main_sleep', 'Total_sleep',  ...
                                  'SleepStart_tod', 'awake_tod', 'Sleep_duration', ...
                                  'Restless_duration', 'Awake_duration', 'Min_fall_asleep', ... 
                                  'eventStartSGVal', 'eventStartSGdt', 'eventEndSGdt', ...
                                  'meanSG', 'PTIR', 'eventEndSGVal', 'ROC_InI_30mnts', ...
                                  'ROC_LAST_30mnts', 'AVG_ROC_DURING_EVENT', 'No_of_Meals'};
                                                            
    BS_data = dataSleep(dataSleep.Event_ID==1,:);
    AS_data = dataSleep(dataSleep.Event_ID==1,:);
    DS_data = dataSleep(dataSleep.Event_ID==1,:);
    
    DS_CGM = DS_data (~isnan(DS_data.eventStartSGVal),:);
    AS_CGM = AS_data (~isnan(DS_data.eventStartSGVal),:);
    BS_CGM = BS_data (~isnan(DS_data.eventStartSGVal),:);

end
function out = HPSearch_Configuration
%------------------------------------------------------------------------
% out = HPSearch_Configuration
%------------------------------------------------------------------------
% 
% Sets initial configuration for the HPSearch program
% 
% Comment out/in the settings for your configuration!
% 
%------------------------------------------------------------------------
% Input Arguments:
% 	none
% 
% Output Arguments:
% 	out		struct containing settings for requested type
% 		CONFIGNAME = 'RX6_RZ5';
% 		TDT = 'TDT:1CHANNEL+MASKER';
% 		INDEV = 'INDEV:RZ5_MEDUSA1'; 
% 		OUTDEV = 'OUTDEV:HEADPHONES_RX6';
% 		IOFUNCTION = @headphonestim_medusarec_1chan;
% 		TDTSETFUNCTION = @HPSearch_medusasettings;
% 		DATAPATH = pwd;
% 		CALDATAPATH = 'C:\TytoLogy\Calibration\CalibrationData';
% 		TYTOLOGY_ROOT_PATH = 'C:\TytoLogy';
% 		TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% 		TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
% 		TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
%------------------------------------------------------------------------
% See also: HPSearch, HPSearch_tdtinit
%------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Sharad J. Shanbhag
% sharad.shanbhag@einstein.yu.edu
%--------------------------------------------------------------------------
% Revision History
%	2 December, 2009 (SJS):
% 		-	added variables
% 				TYTOLOGY_ROOT_PATH
% 				TYTOLOGY_SETTINGS_PATH,
%				TYTOLOGY_PROTOCOL_PATH
% 				TDT_LOCK_FILE
%	3 Feb 2010 (SJS)
% 		- changed TDT_LOCK_FILE to TDTLOCKFILE
% 		- changed TytosettingsPath to TytoLogySettingsPath
%	2 Nov 2010 (SJS): some minor changes to comments
%--------------------------------------------------------------------------
% TO DO:	there's gotta be a better way to manage 
% 			different hardware setups.... HELP!!!!  
%--------------------------------------------------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% UNCOMMENT SECTION THAT WILL BE USED & 
% COMMENT OUT THE INAPPROPRIATE BITS!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is for using RX_6(1) for output (headphones) 
% and RZ5 + medusa for spike input.
% used for multi-channel recording
%
% Used for Merri Rosen's lab and should also work
% for Sanes lab setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
out.CONFIGNAME = 'RX6_RZ5';
out.TDT = 'TDT:1CHANNEL+MASKER';
out.INDEV = 'INDEV:RZ5_MEDUSA1'; 
out.OUTDEV = 'OUTDEV:HEADPHONES_RX6';
out.IOFUNCTION = @headphonestim_medusarec_1chan;
out.TDTSETFUNCTION = @HPSearch_medusasettings;
out.DATAPATH = pwd;
out.CALDATAPATH = 'C:\TytoLogy\Calibration\CalibrationData';
out.TYTOLOGY_ROOT_PATH = 'C:\TytoLogy';
out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
%------------------------------------------------------------------------



%------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is for using RX_8(2) for output (headphones) 
% and RX5 + medusa for spike input.
% used for single-channel recording
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% out.CONFIGNAME = 'MEDUSA+HEADPHONES';
% out.TDT = 'TDT:1CHANNEL+MASKER';
% out.INDEV = 'INDEV:MEDUSA'; 
% out.OUTDEV = 'OUTDEV:HEADPHONES+MASKER';
% out.IOFUNCTION = @headphonestim_medusarec_1chan;
% out.TDTSETFUNCTION = @HPSearch_medusasettings;
% out.DATAPATH = pwd;
% out.CALDATAPATH = 'H:\Code\TytoLogy\Calibration\CalibrationData';
% out.TYTOLOGY_ROOT_PATH = 'H:\Code\TytoLogy';
% out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
% out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
%------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------


%------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------
% %------------------------------------------------------------------------
% % FROM HPSEARCH_CONFIGURATION_PENAC.m
% %------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % This is for using RX_8(2) for output (headphones) 
% % and RX5 + medusa for spike input.
% % used for single-channel recording
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% out.CONFIGNAME = 'MEDUSA+HEADPHONES';
% out.TDT = 'TDT:1CHANNEL+MASKER';
% out.INDEV = 'INDEV:MEDUSA'; 
% out.OUTDEV = 'OUTDEV:HEADPHONES+MASKER';
% out.IOFUNCTION = @headphonestim_medusarec_1chan;
% out.TDTSETFUNCTION = @HPSearch_medusasettings;
% out.DATAPATH = pwd;
% out.CALDATAPATH = 'C:\TytoLogy\Calibration\CalibrationData';
% out.TYTOLOGY_ROOT_PATH = 'C:\TytoLogy';
% out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
% out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% %------------------------------------------------------------------------
% 
% %------------------------------------------------------------------------
% % FROM HPSEARCH_CONFIGURATION_PENAH.m
% %------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % This is for using RX_8(2) for output (headphones) 
% % and RX5 + medusa for spike input.
% % used for single-channel recording
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% out.CONFIGNAME = 'MEDUSA+HEADPHONES';
% out.TDT = 'TDT:1CHANNEL+MASKER';
% out.INDEV = 'INDEV:MEDUSA'; 
% out.OUTDEV = 'OUTDEV:HEADPHONES+MASKER';
% out.IOFUNCTION = @headphonestim_medusarec_1chan;
% out.TDTSETFUNCTION = @HPSearch_medusasettings;
% out.DATAPATH = pwd;
% out.CALDATAPATH = 'H:\Code\TytoLogy\Calibration\CalibrationData';
% out.TYTOLOGY_ROOT_PATH = 'H:\Code\TytoLogy';
% out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
% out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% %------------------------------------------------------------------------
%
% % %------------------------------------------------------------------------
% % FROM HPSearch_Configuration_medusa_1chan_mask.m
% %------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % This is for using RX_8(2) for output (headphones) 
% % and RX5 + medusa for spike input.
% % used for single-channel recording
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% out.CONFIGNAME = 'MEDUSA+HEADPHONES';
% out.TDT = 'TDT:1CHANNEL+MASKER';
% out.INDEV = 'INDEV:MEDUSA'; 
% out.OUTDEV = 'OUTDEV:HEADPHONES+MASKER';
% out.IOFUNCTION = @headphonestim_medusarec_1chan;
% out.TDTSETFUNCTION = @HPSearch_medusasettings;
% out.DATAPATH = pwd;
% out.CALDATAPATH = 'H:\Code\TytoLogy\Calibration\CalibrationData';
% out.TYTOLOGY_ROOT_PATH = 'H:\Code\TytoLogy';
% out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
% out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% %------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------


%------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------
% FROM HPSearch_Configuration_RX8ONLY_C.m
% %------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % This is for using RX_8 for both input and output
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% out.CONFIGNAME = 'RX8_IO';
% out.TDT = 'TDT:SINGLECHANNEL_RX8ACQ';
% out.INDEV = 'INDEV:IODEV'; 
% out.OUTDEV = [];   % empty [] since indev is also outdev
% out.IOFUNCTION = @headphone_spikeio;
% out.TDTSETFUNCTION = @HPSearch_RX8iosettings;
% out.DATAPATH = pwd;
% out.CALDATAPATH = 'C:\TytoLogy\Calibration\CalibrationData';
% out.TYTOLOGY_ROOT_PATH = 'C:\TytoLogy\';
% out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
% out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% %------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------


%------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------
% FROM HPSearch_Configuration_RX8ONLY.m
% %------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % This is for using RX_8 for both input and output
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% out.CONFIGNAME = 'RX8_IO';
% out.TDT = 'TDT:SINGLECHANNEL_RX8ACQ';
% out.INDEV = 'INDEV:IODEV'; 
% out.OUTDEV = [];   % empty [] since indev is also outdev
% out.IOFUNCTION = @headphone_spikeio;
% out.TDTSETFUNCTION = @HPSearch_RX8iosettings;
% out.DATAPATH = pwd;
% out.CALDATAPATH = 'H:\Code\TytoLogy\Calibration\CalibrationData';
% out.TYTOLOGY_ROOT_PATH = 'H:\Code\TytoLogy\';
% out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
% out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% %------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------


%------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------
% FROM HPSearch_Configuration_working.m
% %------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % This is for using RX_8(2) for output (headphones) 
% % and RX5 + medusa for spike input.
% % used for single-channel recording
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% out.CONFIGNAME = 'MEDUSA+HEADPHONES';
% out.TDT = 'TDT:1CHANNEL+MASKER';
% out.INDEV = 'INDEV:MEDUSA'; 
% out.OUTDEV = 'OUTDEV:HEADPHONES+MASKER';
% out.IOFUNCTION = @headphonestim_medusarec_1chan;
% out.TDTSETFUNCTION = @HPSearch_medusasettings;
% out.DATAPATH = pwd;
% out.CALDATAPATH = 'H:\Code\TytoLogy\Calibration\CalibrationData';
% out.TYTOLOGY_ROOT_PATH = 'H:\Code\TytoLogy';
% out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
% out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% %------------------------------------------------------------------------
% %------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % This is for using RX_8(2) for output (headphones) 
% % and RX5 + medusa for spike input.
% % Used by SJS during testing/development
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % out.CONFIGNAME = 'MEDUSA+HEADPHONES';
% % out.TDT = 'TDT:4CHANNEL+MASKER';
% % out.INDEV = 'INDEV:MEDUSA4'; 
% % out.OUTDEV = 'OUTDEV:HEADPHONES+MASKER';
% % out.IOFUNCTION = @headphonestim_medusarec;
% % out.TDTSETFUNCTION = @HPSearch_medusasettings;
% % out.DATAPATH = pwd;
% % out.CALDATAPATH = 'H:\Code\TytoLogy\main\Calibration\CalibrationData';
% % out.TYTOLOGY_ROOT_PATH = 'H:\Code\TytoLogy';
% % out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% % out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
% % out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% %------------------------------------------------------------------------
% %------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % This is for using RX_8(2) for output (headphones) 
% % and RX5 + medusa for spike input.
% % This is the default setup for 
% % the Pena Lab Free-field rig
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % out.CONFIGNAME = 'MEDUSA+HEADPHONES';
% % out.TDT = 'TDT:4CHANNEL+MASKER';
% % out.INDEV = 'INDEV:MEDUSA4'; 
% % out.OUTDEV = 'OUTDEV:HEADPHONES+MASKER';
% % out.IOFUNCTION = @headphonestim_medusarec;
% % out.TDTSETFUNCTION = @HPSearch_medusasettings;
% % out.DATAPATH = pwd;
% % out.CALDATAPATH = 'C:\Users\TytoLogy\main\Calibration\CalibrationData';
% % out.TYTOLOGY_ROOT_PATH = 'C:\Users\TytoLogy\';
% % out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% % out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
% % out.TDT_LOCK_FILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% %------------------------------------------------------------------------
% %------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % This is for using RX_8 for both input and output
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % out.CONFIGNAME = 'RX8_IO'
% % out.TDT = 'TDT:SINGLECHANNEL';
% % out.INDEV = 'INDEV:IODEV'; 
% % out.OUTDEV = [];   % empty [] since indev is also outdev
% % out.IOFUNCTION = @headphone_spikeio;
% % out.TDTSETFUNCTION = @HPSearch_RX8iosettings
% % out.DATAPATH = 'C:\Users\Data';
% % out.CALDATAPATH = 'C:\Users\CalibrationData';
% % out.TYTOLOGY_ROOT_PATH = 'H:\Code\TytoLogy\';
% % out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% % out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
% % out.TDT_LOCK_FILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% %------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------







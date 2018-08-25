function out = NICal_Configuration
%------------------------------------------------------------------------
% out = NICal_Configuration
%------------------------------------------------------------------------
% 
% Sets initial configuration for the NICal program
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
% 		IOFUNCTION = @headphonestim_medusarec_1chan;
% 		TYTOLOGY_ROOT_PATH = 'C:\TytoLogy';
% 		TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% 		TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
%------------------------------------------------------------------------
% See also: MicrophoneCal
%------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Sharad J. Shanbhag
% sshanbhag@neomed.edu
%--------------------------------------------------------------------------
% Revision History
%	3 November, 2010 (SJS):
% 		-	created from HPSearch_Configuration
%	8 Nov, 2010 (SJS): 
% 		-	updated for SingleMicCal
%		-	added IOINIFUNCTION
%	9 July, 2012 (SJS)
% 	 -	 created NICal_Configuration from SpeakerCal_Configuration
%	14 Oct 2014 (SJS):
%	 -	some cleanup
%	 -	added settings for data output path
%	14 Mar 2017 (SJS):
%	 - added settings for use with DAQ toolbox Session interface
%		(copied from sshanbhag's settings)
%	6 Jun 2018 (SJS): post crash check
%	24 Aug 2018 (SJS):changed DEFAULT_OUTPUT_PATH to F:\Data2\Calibrate
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
% This is for using National instruments
% board and Data Acq Toolbox SESSION interface for
% sound input and output 
%
% Used for Calibration system, NEOMED Auditory Group
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
out.CONFIGNAME = 'NI';
out.IOFUNCTION = @nidaq_session_io;
out.IOINITFUNCTION = @nidaq_aiao_init;
out.TYTOLOGY_ROOT_PATH = 'C:\TytoLogy';
out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
out.CIRCUIT_PATH = '';
out.CIRCUIT_NAME = '';
out.IODEVNUM = 1;
out.BK_PRESSURE_FILE = '';
out.ATTENFUNCTION = @simPA5setatten;
% out.DEFAULT_OUTPUT_PATH = pwd;
out.DEFAULT_OUTPUT_PATH = 'F:\Data2\Calibrate';
%------------------------------------------------------------------------


% %------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % This is for using National instruments
% % board and Data Acq Toolbox for 
% % sound input and output 
% %
% % Used for Calibration system, NEOMED Auditory Group
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% out.CONFIGNAME = 'NI';
% out.IOFUNCTION = @nidaq_calibration_io;
% out.IOINITFUNCTION = @nidaq_aiao_init;
% out.TYTOLOGY_ROOT_PATH = 'C:\TytoLogy';
% out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% out.CIRCUIT_PATH = '';
% out.CIRCUIT_NAME = '';
% out.IODEVNUM = 1;
% out.BK_PRESSURE_FILE = '';
% out.ATTENFUNCTION = @simPA5setatten;
% out.DEFAULT_OUTPUT_PATH = 'D:\';
% %------------------------------------------------------------------------


% %------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % This is for using RZ_6 for sound input and output 
% %
% % Used for Merri Rosen's lab and should also work
% % for Sanes lab setups
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% out.CONFIGNAME = 'RZ6';
% out.IOFUNCTION = @RZ6calibration_io;
% out.IOINITFUNCTION = @RZ6init;
% out.TYTOLOGY_ROOT_PATH = 'X:\Code\Matlab\dev\TytoLogy';
% out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% out.CIRCUIT_PATH = 'X:\Code\Matlab\dev\TytoLogy\Toolbox\TDTToolbox\Circuits\RZ6\100KHz';
% out.CIRCUIT_NAME = 'RZ6_SpeakerOutputMicInput_zBus';
% out.IODEVNUM = 1;
% out.BK_PRESSURE_FILE = '';
% %------------------------------------------------------------------------


% %------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % This is for using RX_6(1) for output (headphones) 
% % and RZ5 + medusa for spike input.
% % used for multi-channel recording
% %
% % Used for Merri Rosen's lab and should also work
% % for Sanes lab setup
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% out.CONFIGNAME = 'RX6_RZ5';
% out.IOFUNCTION = @RX6D1calibration_io;
% out.IOINITFUNCTION = @RX6init;
% out.TYTOLOGY_ROOT_PATH = 'C:\TytoLogy';
% out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% out.CIRCUIT_PATH = 'Z:\sshanbhag\TytoLogy\toolbox\work\2.0\TDT\Circuits\RX6\50KHz';
% out.CIRCUIT_NAME = 'RX6_1_RefStimResponseFiltered';
% out.IODEVNUM = 1;
% %------------------------------------------------------------------------


% % out.IOFUNCTION = @headphonecal_io;
% % out.CIRCUIT_PATH = 'H:\Code\TytoLogy\toolbox\TDT\Circuits\RX8_2\50KHz\';
% % out.CIRCUIT_NAME = 'RX8_2_BinauralRefStimResponseFiltered';


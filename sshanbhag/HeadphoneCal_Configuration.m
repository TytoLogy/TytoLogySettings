function out = HeadphoneCal_Configuration
%------------------------------------------------------------------------
% out = HeadphoneCal_Configuration
%------------------------------------------------------------------------
% 
% Sets initial configuration for the HeadphoneCal program
% 
% Comment out/in the settings for your configuration!
% 
%------------------------------------------------------------------------
% Input Arguments:
% 	none
% 
% Output Arguments:
% 	out		struct containing settings for requested type
% 	Field Name:					Description:
% 	CONFIGNAME					identifier string for this configuration
% 	IOFUNCTION					Matlab function handle for input/output function
% 	TYTOLOGY_ROOT_PATH		Root path to TytoLogy directory
% 	TYTOLOGY_SETTINGS_PATH	Path to TytoLogy settings directory
% 	TDTLOCKFILE					Path and name of lock file for TDT hardware
% 	CIRCUIT_PATH				Path to TDT RPvD Circuit
% 	CIRCUIT_NAME				Name of TDT RPvD Circuit file (no extension)
%	IODEVNUM						ID number for TDT device
%------------------------------------------------------------------------
% See also: HeadphoneCal
%------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Sharad J. Shanbhag
% sshanbhag@neoucom.edu
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
%	22 Mar 2011 (SJS): new comments, cleaned up config
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
out.CONFIGNAME = 'RX6';
out.IOFUNCTION = @RX6D1calibration_io;
out.TYTOLOGY_ROOT_PATH = 'C:\TytoLogy';
out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
out.CIRCUIT_PATH = 'Z:\sshanbhag\TytoLogy\toolbox\work\2.0\TDT\Circuits\RX6\50KHz';
out.CIRCUIT_NAME = 'RX6_1_BinauralRefStimResponseFiltered';
out.IODEVNUM = 1;
%------------------------------------------------------------------------


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
% out.CONFIGNAME = 'RX6_RZ5';
% out.TDT = 'TDT:1CHANNEL+MASKER';
% out.INDEV = 'INDEV:RZ5_MEDUSA1'; 
% out.OUTDEV = 'OUTDEV:HEADPHONES_RX6';
% out.IOFUNCTION = @headphonestim_medusarec_1chan;
% out.TDTSETFUNCTION = @HPSearch_medusasettings;
% out.DATAPATH = pwd;
% out.CALDATAPATH = 'C:\TytoLogy\Calibration\CalibrationData';
% out.TYTOLOGY_ROOT_PATH = 'C:\TytoLogy';
% out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\'];
% out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
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



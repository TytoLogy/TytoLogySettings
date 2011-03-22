function out = MicrophoneCal_Configuration
%------------------------------------------------------------------------
% out = MicrophoneCal_Configuration
%------------------------------------------------------------------------
% 
% Sets initial configuration for the MicrophoneCal_Configuration program
% 
% Comment out/in the settings for your configuration!
% 
%------------------------------------------------------------------------
% Input Arguments:
% 	none
% 
% Output Arguments:
% 	out		struct containing settings
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
% See also: MicrophoneCal
%------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Sharad J. Shanbhag
% sshanbhag@neoucom.edu
%--------------------------------------------------------------------------
% Revision History
%	3 November, 2010, 2009 (SJS):
% 		-	created from HPSearch_Configuration
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
% This is for using RZ_6 for output 
% and RZ5 + medusa for spike input.
% used for multi-channel recording
%
% Used for Merri Rosen's lab and should also work
% for Sanes lab setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% out.CONFIGNAME = 'RZ6';
% out.IOFUNCTION = @RZ6D1calibration_io;
% out.TYTOLOGY_ROOT_PATH = 'C:\TytoLogy';
% out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
% out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat'];
% out.CIRCUIT_PATH = 'Z:\sshanbhag\TytoLogy\toolbox\work\2.0\TDT\Circuits\RX6\50KHz';
% out.CIRCUIT_NAME = 'RZ6_1_BinauralRefStimResponseFiltered';
% out.IODEVNUM = 1;
%------------------------------------------------------------------------


% % out.IOFUNCTION = @headphonecal_io;
% % out.CIRCUIT_PATH = 'H:\Code\TytoLogy\toolbox\TDT\Circuits\RX8_2\50KHz\';
% % out.CIRCUIT_NAME = 'RX8_2_BinauralRefStimResponseFiltered';


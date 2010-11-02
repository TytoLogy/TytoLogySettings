%--------------------------------------------------------------------------
% tytopaths.m
%--------------------------------------------------------------------------
% This sets up the TytoLogy paths
%
% FOR WORKING INSTALLATION
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Sharad Shanbhag
% sshanbhag@neoucom.edu
%--------------------------------------------------------------------------
% Created:
%	2 November, 2010 (SJS)
% 
% Revisions:
%--------------------------------------------------------------------------

% different paths depending on OS
PCWINroot = 'C:\TytoLogy\TytoSettings\';
MACroot = '/Users/';
LINUXroot = '/home/';

% get os type (mac, pcwin, linux) and username
os_type = computer;
name = getenv('USERNAME');

% different settings based on OS
switch os_type
	case 'PCWIN'
		rootp = PCWINroot;
	case 'MAC'
		rootp = MACroot;
	case 'GLNXA64'
		rootp = LINUXroot;
	otherwise
		error([mfilename ': ' os_type ' is unknown computer'])
end

% full path
p = [rootp name filesep];


%*************************************************************************
% 	Define some paths to toolbox, calibration, HPSearch
%*************************************************************************

% Toolbox path
toolboxpath = 'Z:\sshanbhag\TytoLogy\toolbox\work\2.0';

% Headphone Calibration Path
hpcalpath = 'Z:\sshanbhag\TytoLogy\Calibration\HeadphoneCal\work\2.0';

% Microphone Calibration Path
miccalpath = 'Z:\sshanbhag\TytoLogy\Calibration\MicrophoneCal\work\2.0';

% HPSearch Path
hpsearchpath = 'Z:\sshanbhag\TytoLogy\Experiments\HPSearch\work\2.0';

%*************************************************************************
% 	add paths
%*************************************************************************

addpath(hpcalpath, '-BEGIN');
addpath(miccalpath, '-BEGIN');
addpath(hpsearchpath, '-BEGIN');

% need to generate subdirectory paths for toolbox
nettoolboxpath = genpath(toolboxpath);

addpath(nettoolboxpath, '-BEGIN');






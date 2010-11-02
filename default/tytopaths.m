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
toolboxpath = 'C:\TytoLogy\toolbox\';

% Headphone Calibration Path
hpcalpath = 'C:\TytoLogy\Calibration\HeadphoneCal';

% Microphone Calibration Path
miccalpath = 'C:\TytoLogy\Calibration\MicrophoneCal';

% HPSearch Path
hpsearchpath = 'C:\TytoLogy\Experiments\HPSearch';

%*************************************************************************
% 	add paths
%*************************************************************************

addpath(hpcalpath, '-BEGIN');
addpath(miccalpath, '-BEGIN');
addpath(hpsearchpath, '-BEGIN');

% need to generate subdirectory paths for toolbox
nettoolboxpath = genpath(toolboxpath);

addpath(nettoolboxpath, '-BEGIN');






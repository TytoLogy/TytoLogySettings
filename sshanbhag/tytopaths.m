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
%	11 Mar 2012 (SJS): new branch, 1
%		-	updated paths to match current working branches
%--------------------------------------------------------------------------

% different paths depending on OS
PCWINroot = 'C:\TytoLogy\TytoSettings\';
MACroot = '/Users/';
LINUXroot = '/home/';

% root drive for pc
TYTODRIVE = 'X';

TYTOBASE = [TYTODRIVE ':\Code\Matlab\dev\TytoLogy'];

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
toolboxpath = [TYTOBASE '\Toolbox'];

% Headphone Calibration Path
hpcalpath = [TYTOBASE '\Calibration\HeadphoneCal\work\2.0'];

% Microphone Calibration Path
miccalpath = [TYTOBASE '\Calibration\MicrophoneCal\work\3.00'];

% Speaker Calibration Path
spkrcalpath = [TYTOBASE '\Calibration\SpeakerCal\work\1.0'];

% HPSearch Path
hpsearchpath = [TYTOBASE '\Experiments\HPSearch\3\3.0'];
	


%*************************************************************************
% 	add paths
%*************************************************************************

addpath(hpcalpath, '-BEGIN');
addpath(miccalpath, '-BEGIN');
addpath(spkrcalpath, '-BEGIN');
addpath(hpsearchpath, '-BEGIN');

% need to generate subdirectory paths for toolbox
nettoolboxpath = genpath(toolboxpath);

addpath(nettoolboxpath, '-BEGIN');






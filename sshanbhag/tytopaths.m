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
%	23 Aug 2012 (SJS): 
%		- add things for NICal on Calibrator machine
%		- added line for HPSearch Functions directory
%     - updated for newer development (git/github) management config
%--------------------------------------------------------------------------

% different paths depending on OS

%***** for installed version
%PCWINroot = 'C:\TytoLogy\TytoSettings\';
% for sharad's dev tree
PCWINroot = 'C:\Users\sshanbhag\Code\Matlab\TytoLogy\TytoLogySettings\';
MACroot = '/Users/';
LINUXroot = '/home/';

% root drive for pc
TYTODRIVE = 'C';
TYTOBASE = [TYTODRIVE ':\Users\sshanbhag\Code\Matlab\dev\TytoLogy'];

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
hpcalpath = [TYTOBASE '\Calibration\HeadphoneCal'];

% Microphone Calibration Path
miccalpath = [TYTOBASE '\Calibration\MicrophoneCal'];

% Speaker Calibration Path
spkrcalpath = [TYTOBASE '\Calibration\SpeakerCal'];

% HPSearch Path
hpsearchpath = {	[TYTOBASE '\Experiments\HPSearch']	, ...
						[TYTOBASE '\Experiments\HPSearch\Functions']	, ...
					};
				
% NICal Calibration Path
nicalpath = [TYTOBASE '\Calibration\NICal'];

%*************************************************************************
% 	add paths
%*************************************************************************

addpath(hpcalpath, '-BEGIN');
addpath(miccalpath, '-BEGIN');
addpath(spkrcalpath, '-BEGIN');
for n = 1:length(hpsearchpath)
	addpath(hpsearchpath{n}, '-BEGIN');
end
addpath(nicalpath, '-BEGIN');

% need to generate subdirectory paths for toolbox
nettoolboxpath = genpath(toolboxpath);
addpath(nettoolboxpath, '-BEGIN');






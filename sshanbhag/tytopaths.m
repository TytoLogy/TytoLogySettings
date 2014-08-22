<<<<<<< HEAD
%--------------------------------------------------------------------------
% tytopaths.m
%--------------------------------------------------------------------------
% This sets up the TytoLogy paths
%
% FOR WORKING INSTALLATION
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Sharad Shanbhag
% sshanbhag@neomed.edu
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
%	5 Dec 2012 (SJS):
% 		-	modifications to allow use on non-PC systems
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%% define things
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% define Toolboxes to include in path
TOOLBOX_NAMES =	{	'AudioToolbox', ...
							'BinaryFileToolbox', ...
							'structDlgToolbox', ...
							'TDTToolbox', ...
							'TytoLogyToolbox', ...
							'UtilitiesToolbox', ...
						};

% get os type (mac, pcwin, linux)
% different paths depending on OS

%***** for installed version
%PCWINroot = 'C:\TytoLogy\TytoSettings\';
% for sharad's dev tree
PCWINroot = 'C:\Users\sshanbhag\Code\Matlab\TytoLogy\TytoLogySettings\';
MACroot = '/Users/';
LINUXroot = '/home/';

% root drive for pc
TYTODRIVE = 'C';
TYTOBASE = [TYTODRIVE ':\Users\sshanbhag\Code\Matlab\TytoLogy'];

% get os type (mac, pcwin, linux) and username
os_type = computer;

% different paths depending on OS
if ispc
	%***** for installed version
	%PCWINroot = 'C:\TytoLogy\TytoSettings\';
	% for sharad's dev tree
	uname = getenv('USERNAME');
	PCWINroot = ['C:\Users\' uname '\Code\Matlab\TytoLogy\TytoLogySettings\'];
	% root drive for pc
	TYTODRIVE = 'C';
	TYTOBASE = [TYTODRIVE ':\Users\' uname '\Code\Matlab\TytoLogy'];
	TOOLBASE = [TYTODRIVE ':\Users\' uname '\Code\Matlab\TytoLogy\Toolboxes'];
	rootp = PCWINroot;
elseif ismac
	uname = getenv('USER');
	MACroot = ['/Users/' uname '/Work/Code/Matlab/dev/TytoLogy/TytoLogySettings/'];
	TYTOBASE = ['/Users/' uname '/Work/Code/Matlab/dev/TytoLogy'];
	TOOLBASE = ['/Users/' uname '/Work/Code/Matlab/dev/Toolboxes'];
	rootp = MACroot;
elseif isunix
	LINUXroot = '/home/';
	TYTOBASE = ['/Users/' uname '/Work/Code/Matlab/dev/TytoLogy'];
	TOOLBASE = ['/Users/' uname '/Work/Code/Matlab/dev/Toolboxes'];
	rootp = LINUXroot;	
else
	error([mfilename ': ' os_type ' is unknown computer'])
end


% full path
p = [rootp uname filesep];

% 	Define some paths to toolbox, calibration, HPSearch
if ispc
	% Utils path
	utilspath = [TOOLBASE '\UtilitiesToolbox\GeneralUtilities'];
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
else
	% Utils path
	utilspath = [TOOLBASE '/UtilitiesToolbox/GeneralUtilities'];
	% Headphone Calibration Path
	hpcalpath = [TYTOBASE '/Calibration/HeadphoneCal'];
	% Microphone Calibration Path
	miccalpath = [TYTOBASE '/Calibration/MicrophoneCal'];
	% Speaker Calibration Path
	spkrcalpath = [TYTOBASE '/Calibration/SpeakerCal'];
	% HPSearch Path
	hpsearchpath = {	[TYTOBASE '/Experiments/HPSearch']	, ...
							[TYTOBASE '/Experiments/HPSearch/Functions']	, ...
						};
	% NICal Calibration Path
	nicalpath = [TYTOBASE '/Calibration/NICal'];	
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%% 	add paths
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

addpath(utilspath, '-BEGIN');
addpath(hpcalpath, '-BEGIN');
addpath(miccalpath, '-BEGIN');
%addpath(spkrcalpath, '-BEGIN');
for n = 1:length(hpsearchpath)
	addpath(hpsearchpath{n}, '-BEGIN');
end
addpath(nicalpath, '-BEGIN');

% need to generate subdirectory paths for toolbox
for n = 1:length(TOOLBOX_NAMES)
	% generate path to each toolbox directory
	tmppath = genpath([TOOLBASE filesep TOOLBOX_NAMES{n}]);
	% remove the paths to the .git code versioning directories
	tmppath = remove_gitpaths(tmppath);
	% add path
	addpath(tmppath, '-BEGIN');
end


=======
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
PCWINroot = 'C:\TytoLogy\TytoLogySettings\';
MACroot = '/Users/';
LINUXroot = '/home/';

% root drive for pc
TYTODRIVE = 'C';
TYTOBASE = [TYTODRIVE ':\TytoLogy'];

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

% Utils path
utilspath = [TYTOBASE '\Toolbox\UtilitiesToolbox\GeneralUtilities'];

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
addpath(utilspath, '-BEGIN');
addpath(hpcalpath, '-BEGIN');
addpath(miccalpath, '-BEGIN');
%addpath(spkrcalpath, '-BEGIN');
for n = 1:length(hpsearchpath)
	addpath(hpsearchpath{n}, '-BEGIN');
end
addpath(nicalpath, '-BEGIN');
addpath(spkrcalpath, '-BEGIN');

% need to generate subdirectory paths for toolbox
nettoolboxpath = genpath(toolboxpath);
nettoolboxpath = remove_gitpaths(nettoolboxpath);
addpath(nettoolboxpath, '-BEGIN');





>>>>>>> afcb60b9e1c8bbb0b09af74534690e3e77f14d47

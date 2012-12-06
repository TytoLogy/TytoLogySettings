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
%	5 Dec 2012 (SJS):
% 		-	modifications to allow use on non-PC systems
%--------------------------------------------------------------------------

TOOLBOX_NAMES =	{	'AudioToolbox', ...
							'BinaryFileToolbox', ...
							'structDlgToolbox', ...
							'TDTToolbox', ...
							'TytoLogyToolbox', ...
							'UtilitiesToolbox', ...
						};

% get os type (mac, pcwin, linux)
os_type = computer;

% different paths depending on OS
if ispc
	%***** for installed version
	%PCWINroot = 'C:\TytoLogy\TytoSettings\';
	% for sharad's dev tree
	uname = getenv('USERNAME');
	PCWINroot = ['C:\Users\' uname '\Code\Matlab\TytoLogy\TytoLogySettings\'];
else
	uname = getenv('USER');
	MACroot = ['/Users/' uname '/Work/Code/Matlab/dev/TytoLogy/TytoLogySettings/'];
	LINUXroot = '/home/';
end

if ispc
	% root drive for pc
	TYTODRIVE = 'C';
	TYTOBASE = [TYTODRIVE ':\Users\' uname '\Code\Matlab\TytoLogy'];
	TOOLBASE = [TYTODRIVE ':\Users\' uname '\Code\Matlab\TytoLogy'];
	rootp = PCWINroot;
elseif ismac
	TYTOBASE = ['/Users/' uname '/Work/Code/Matlab/dev/TytoLogy'];
	TOOLBASE = ['/Users/' uname '/Work/Code/Matlab/dev/Toolboxes'];
	rootp = MACroot;
elseif isunix
	TYTOBASE = ['/Users/' uname '/Work/Code/Matlab/dev/TytoLogy'];
	TOOLBASE = ['/Users/' uname '/Work/Code/Matlab/dev/Toolboxes'];
	rootp = LINUXroot;	
else
	error([mfilename ': ' os_type ' is unknown computer'])
end

% full path
p = [rootp uname filesep];

%*************************************************************************
% 	Define some paths to toolbox, calibration, HPSearch
%*************************************************************************
if ispc
	% Utils path
	utilspath = [TYTOBASE '\Toolbox\UtilitiesToolbox\GeneralUtilities'];
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

% need to generate subdirectory paths for toolbox
for n = 1:length(TOOLBOX_NAMES)
	tmppath = genpath([TOOLBASE filesep TOOLBOX_NAMES{n}]);
	tmppath = remove_gitpaths(tmppath);
	addpath(tmppath);
end
% nettoolboxpath = genpath(toolboxpath);
% nettoolboxpath = remove_gitpaths(nettoolboxpath);
% addpath(nettoolboxpath, '-BEGIN');






%--------------------------------------------------------------------------
% tytopaths.m
%--------------------------------------------------------------------------
% This sets up the TytoLogy paths
%
% optogen
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
%	12 Jan 2017 (SJS): resolving conflicts in git branches
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

% get os type (mac, pcwin, linux) and username
os_type = computer;

% different paths depending on OS
if ispc
	% user name
	uname = getenv('USERNAME');
	%---------------------------------------------------
	%***** for installed version
	%---------------------------------------------------
	PCWINroot = 'C:\TytoLogy\TytoSettings\';
	%---------------------------------------------------
	% for sharad's dev tree
	%---------------------------------------------------
	% 	PCWINroot = ['C:\Users\' uname '\Code\Matlab\TytoLogy\TytoLogySettings\'];
	%---------------------------------------------------	
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


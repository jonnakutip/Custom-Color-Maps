function [cmapD, cmapS] = customCMAP(colorsIDX)
% [cmapD, cmapS] = customCMAP(colorsIDX)
%
% Reference: http://geog.uoregon.edu/datagraphics/color_scales.htm
% This function builds custom colormaps based on predefined color codes.
%
% Inputs:
%   colorsIDX : Integer from 1 to 18, representing a specific colormap.
%               See the list below for available colormaps.
%
%   colorsIDX ColormapName
%   ========= ============
%       1     Blue to Green
%       2     Blue to Orange Red
%       3     Blue to Orange 8 steps
%       4     Blue to Orange 10 steps
%       5     Blue to Orange 12 steps
%       6     Brown to Blue 10 steps
%       7     Brown to Blue 12 steps
%       8     Dark Red to Blue 12 steps
%       9     Dark Red to Blue 18 steps
%       10    Green to Magenta 16 steps
%       11    Light Blue to Dark Blue
%       12    Light Blue to Dark Blue
%       13    Blue to Dark Orange 12 steps
%       14    Blue to Dark Orange 18 steps
%       15    Blue to Gray 8 steps
%       16    RdYlBu Hue Fixed
%       17    Categorical 12 steps
%       18    Stepped Sequential
%
% Outputs:
%   cmapD : Numeric array (N x 3) representing the colormap (RGB values).
%   cmapS : Cell array of strings representing the names of the colors.
%
% Example:
%   % Try the output colormap:
%   z = peaks(25);
%   figure;
%   surf(z);
%   [cmapD, cmapS] = customCMAP(12);
%   colormap(cmapD); % Use the output colormap
%   colorbar;
%
% First version: 01 May. 2018
% Jonnakuti Pavan Kumar
% jpawan33@gmail.com
% --------------------------------------------------------------------------

if nargin < 1
    colorsIDX = 18;
end

CC = importdata('ColorCodes.xlsx');

switch colorsIDX
    case 1
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 2
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 3
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 4
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 5
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 6
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 7
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 8
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 9
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 10
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 11
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 12
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 13
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 14
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 15
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 16
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 17
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    case 18
        idx = (CC.data.ColorCodes(:, 4) == colorsIDX);
    otherwise
        error(['Error! colorIDX must be an integer from 1 to 18, ' ...
            'representing a colormap. Type ''help customCMAP'' for more info.']);
end

cmapD = CC.data.ColorCodes(idx, 1:3);
cmapS = unique(CC.textdata.ColorCodes(idx, :));

end % end of customCMAP

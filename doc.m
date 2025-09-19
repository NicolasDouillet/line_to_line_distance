%% line2linedistance
%
% Function to compute the minimum distance between two
% lines L1(M1,u1), and L2(M2,u2) of the 3D or 2D spaces.
% For 2D, just padd the third dimension (Z) of your vectors with zeros.
%
% Author : nicolas.douillet9 (at) gmail.com, 2020-2025.
%
%% Syntax
%
% d = line2linedistance(M1, u1, M2, u2);
%
%% Description
%
% d = line2linedistance(M1, u1, M2, u2) computes the distance between
% L1 and L2.
%
%% See also
%
% <https://fr.mathworks.com/matlabcentral/fileexchange/73478-point-to-line-distance-3d-2d?s_tid=prof_contriblnk point_to_line_distance> |
% <https://fr.mathworks.com/matlabcentral/fileexchange/73922-lines-intersection-3d-2d?s_tid=prof_contriblnk lines_intersection> |
% <https://fr.mathworks.com/matlabcentral/fileexchange/73760-line-plane-intersection-3d?s_tid=prof_contriblnk line_plane_intersection>
%
%% Input arguments
%
% - M1 : real row or column vector double, a point belonging to L1, numel(M1) = 3 (3D) or numel(M1) = 2 (2D). Mandatory.
%
% - u1 : real row or column vector double, one L1 director vector,  numel(u1) = 3 (3D) or numel(u1) = 2 (2D). Mandatory.
%
% - M2 : real row or column vector double, a point belonging to L2, numel(M2) = 3 (3D) or numel(M2) = 2 (2D). Mandatory.
%
% - u2 : real row or column vector double, one L2 director vector,  numel(u2) = 3 (3D) or numel(u2) = 2 (2D). Mandatory.
%
%% Output argument
%
% - d : real scalar double, the -minimum- distance between the two lines.
%
%% Example #1
u1 = [0 2 -1];
M1 = [1 2 -1];
u2 = [0 2 1];
M2 = [-1 2 1];
d = line2linedistance(M1, u1, M2, u2) % d = 2 expected

%% Example #2
u1 = [-1 1 0];
M1 = [1 1 1];
u2 = [1 1 -2];
M2 = [-1 -1 -1];
d = line2linedistance(M1, u1, M2, u2) % d = 2*sqrt(3) expected

%% Example #3
% Parallel lines
u1 = [-1 1 0];
M1 = ones(1,3)/3;
u2 = [1 -1 0]; % = -u1
M2 = -2*ones(1,3)/3;
d = line2linedistance(M1, u1, M2, u2) % d = sqrt(3) expected

%% Example #4
% Intersecting lines
u1 = [0 1 0];
M1 = [0 2 0];
u2 = [0 4 -7];
M2 = u2;
d = line2linedistance(M1, u1, M2, u2) % d = 0 expected
%% Copyright (C) 2022 - Luchika De Sousa
%% 
%% This program is free software: you can redistribute it and/or modify it under
%% the terms of the GNU General Public License as published by the Free Software
%% Foundation, either version 3 of the License, or (at your option) any later
%% version.
%% 
%% This program is distributed in the hope that it will be useful, but WITHOUT 
%% ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
%% FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more 
%% details.
%% 
%% You should have received a copy of the GNU General Public License along with 
%% this program. If not, see <https://www.gnu.org/licenses/>.
%%
%% usage: [ALPHA] = fcn_0To63TimeConstantToAlpha(TIME, FS, BLOCKSIZE)
%%
%% Calculates the correct ALPHA value for exponential smoothing filter (1st 
%% order low-pass) to obtain a step response going from 0% to 63% of 
%% steady-state final level in given TIME.
%% FS is the sample frequency in Hz, BLOCKSIZE is the number of samples in each
%% frame or 1 when working sample-by-sample.

function [ALPHA] = fcn_0To63TimeConstantToAlpha(TIME, FS, BLOCKSIZE)
    ALPHA = exp(-BLOCKSIZE / (TIME * FS));
end

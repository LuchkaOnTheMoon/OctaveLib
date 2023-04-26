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
%% usage: [Y_N] = fcn_ExpSmoothing(X_N, Y_NMINUSONE, ALPHA)
%%
%% Calculates current output sample for an exponential smoothing filter (1st 
%% order Low-Pass filter) according the following differential equation:
%%
%% y[n] = alpha * y[n-1] + (1 - alpha) * x[n]
%%
%% where current output sample y[n] is Y_N, smoothing time constant alpha is 
%% ALPHA, previous output sample y[n-1] is Y_NMINUSONE, and current input 
%% sample x[n] is X_N.

function [Y_N] = fcn_ExpSmoothing(X_N, Y_NMINUSONE, ALPHA)
	Y_N = X_N + ALPHA * (Y_NMINUSONE - X_N);
end

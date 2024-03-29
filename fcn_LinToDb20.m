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
%% usage: [DB20] = fcn_LinToDb20(LIN)
%%
%% Converts given level ratio from linear scale to dB.

function [DB20] = fcn_LinToDb20(LIN)
    DB20 = 20 .* log10(LIN);
end

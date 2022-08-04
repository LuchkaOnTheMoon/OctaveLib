%% Copyright (C) 2022 - Luca Novarini
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
%% usage: [LINESPEC] = fcn_LineSpecByIndex(IDX)
%%
%% Returns a different line specification string (color + style) for each 
%% integer index given. Could be used in conjunction to plot() to plot data in
%% a for-loop with different colors and style.
%% IDX specifies line specification strings' index, and must be > 0.
%% LINESPEC is the returned line specification string.
%%
%% Example:
%%	figure(); hold on;
%%	for ii = 1:10
%%		plot(rand(10, 1), fcn_LineSpecByIndex(ii));
%%	endfor

function [LINESPEC] = fcn_LineSpecByIndex(IDX)
    % Assert given index is valid.
    assert(IDX == int64(IDX));
    assert(IDX > 0);
    
    % Generate line specifications table (color + style).
    table = {'-k', '-r', '-g', '-b', '-y', '-m', '-c', ...
        '--k', '--r', '--g', '--b', '--y', '--m', '--c', ...
        ':k', ':r', ':g', ':b', ':y', ':m', ':c', ...
        '-.k', '-.r', '-.g', '-.b', '-.y', '-.m', '-.c'};
        
    % Wrap given index in table size.
    IDX = mod(IDX - 1, length(table)) + 1;
    
    % Return line specifications corresponding to given index.
    LINESPEC = table{IDX};
end

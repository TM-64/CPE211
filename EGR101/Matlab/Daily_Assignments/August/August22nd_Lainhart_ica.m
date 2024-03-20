%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Mitch Lautigar
%August 22nd Debugging Problem
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Debugged by:Caleb Lainhart
% Date debugged: August 22nd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [drop_distance] = August22nd_Lainhart_ica(v_init,height_dropped)
%Predeclarations

%hard error
a_g=9.81;
%Original didnt predeclare the acceleration of gravity before section 1
%------------------------------------------------------------------------%
%Original: v_conv = v_init * 1000/3600;--soft error
v_conv = v_init * 1609/3600;
%Original had wrong conversion rate for MPH to m/s
%----------------------------------------------------------------------%
h_conv = height_dropped/3.28;

%-------------------------------------------------------------------------%
%                           Section 1                                     %
%-------------------------------------------------------------------------%
%Compute Time required:
%Original: t_req = sqrt(height_conv / (0.5 * a_g));--hard error
t_req = sqrt(h_conv / (0.5 * a_g));
%Original had the wrong veriable name for the converted height 
%-------------------------------------------------------------------------%
%                           Section 2                                     %
%-------------------------------------------------------------------------%
%Original: drop_distance = v_conv/t_req;--soft error
drop_distance = v_conv*t_req;
%original divided the two variables while the correct equation should
%multiply them together
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                         Notes from Professor:                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Inputs:
%   - height_dropped: a measurement in feet
%   - v_init: cruising speed of plane heading to its location in MPH
%Outputs:
%   - drop_distance: how far away in feet the package needs to be dropped.
%-------------------------------------------------------------------------%
%Notes of importance:
%   MPH->m/s = x "mph" * 1609/3600
%  Original: feet ->m = x feet * 3.28 --soft error
%feet ->m = x feet / 3.28
%   acceleration due to gravity (a_g) = 9.81 m/s^2
%
%Section 1 should solve required time by using the following equation.
%   time_required = sqrt(height dropped (m/s) / (0.5 * acceleration due to
%   gravity
%
%Section 2 should solve drop distance by multiplying velocity (m/s) against
%   time_required from section 1.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%If v_init = 155, height_dropped = 775, drop distance = 480.8168
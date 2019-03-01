function [Con,Coneq] = Calc_constraints(x, AR, S)

% YOU SHOULD NOT NEED TO CHANGE THIS FILE FOR THIS PROBLEM

% Calculate the thrust and bending constraints from the UEFC
% parameters and N
UEFC = GetUEFC;
N = x;

% Calculate required thrust
T = GetRequiredThrust(N, AR, S);

% Calculate tip displacement (d/b)
db = Getdb(N, AR, S);

% Store constraints difference in Con (this vector is for
% inequality constraints)
Con = [T - UEFC.Tmax, db - UEFC.dbmax];

% The Coneq vector is for equality constraints (however we don't
% have any of these so the vector is empty)
Coneq = [];
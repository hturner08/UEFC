function [V] = GetV(N, AR, S, Wpay)

% Calculate speed from N, g, R

UEFC = GetUEFC;
g = UEFC.g;
R = UEFC.R;
tau = .12
epsilon = 0.03
ct = .1
Wfuse = 2.7
lambda = 2
N = .05*(19300*.12*(.12^2+.03^2).1^4)/(.018(Wfuse + Wpay)(1+lambda)^3(1+2*lambda)1.5^2)
V = 12.5*9.81*sqrt(N^2-1)

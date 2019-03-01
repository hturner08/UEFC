function T = GetRequiredThrust(N, AR, S)

% Calculate the required thrust from UEFC parameters and N, AR, S
UEFC = GetUEFC;

rho = UEFC.rho;
g = UEFC.g;
R = UEFC.R;

W = GetWeight(AR, S);

% Need to calculate CL (relate this to N, W, q, S)
q = ??????;
CL = ?????;

% Calculate CD
CD = GetCD(CL, AR, S);

% Calculate required thrust from CD, q, S
T = ??????;




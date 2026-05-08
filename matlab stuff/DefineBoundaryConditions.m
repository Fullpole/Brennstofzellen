function C = DefineBoundaryConditions ()

%%% Constants
C.Const.F=96485.33212;      % Faraday Constant [As/mol]
C.Const.MolAntO2=0.20942;   % molar fraction O2 in Air [-]
C.Const.MH2O=18.01528;      % molar mass of gaseous water [g/mol]
C.Const.VM=22.414;          % volume of one mol at norm conditions [m3/mol]
C.Const.gO2=0.20942;
C.Const.gN2=0.79058;

%%%Cellparameter

C.CP.I=300;
C.CP.nZ=400;
C.OP.StoicCathode=2;
end
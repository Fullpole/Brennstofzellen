function [MC_Nodes] = MediaDiscretisation (MC_Cell_In, C, I)
MC_Nodes = zeros(10, 3); % Initialize a 3x10 matrix with zeros
C.CP.I=300;
C.CP.nZ=400; 
C.OP.StoicCathode=2;
C.Const.F=96485.33212; 
C.Const.MolAntO2=0.20942;   % molar fraction O2 in Air [-]
C.Const.MH2O=18.01528;      % molar mass of gaseous water [g/mol]
C.Const.VM=22.414;          % volume of one mol at norm conditions [m3/mol]
C.Const.gO2=0.20942;
C.Const.gN2=0.79058;

MC_Stack_In(1)=C.CP.I*C.CP.nZ*1/(4*C.Const.F)*C.OP.StoicCathode;
MC_Stack_In(2)=0;
MC_Stack_In(3)=(MC_Stack_In(1)/C.Const.gO2)*C.Const.gN2;
C.NumParam.NumSegments=9;
C.NumParam.NodeSegments =C.NumParam.NumSegments+1;
C.CP.nO2usedPerNode=(MC_Stack_In(1))/(C.NumParam.NumSegments*C.OP.StoicCathode);
C.CP.nH2OMadePerNode=C.CP.nO2usedPerNode*2

MC_Nodes(1,1)=MC_Stack_In(1);
MC_Nodes(1,2)=MC_Stack_In(2);
MC_Nodes(1,3)=MC_Stack_In(3);
i=1
while i<10

     i=i+1;

    MC_Nodes(i,1)=MC_Stack_In(1)-(i-1)*C.CP.nO2usedPerNode;
    MC_Nodes(i,2)=MC_Stack_In(2)+(i-1)*C.CP.nH2OMadePerNode;
    MC_Nodes(i,3)=MC_Stack_In(3);
  
end

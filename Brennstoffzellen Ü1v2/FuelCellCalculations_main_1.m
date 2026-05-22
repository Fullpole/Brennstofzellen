%%% MAIN 1

%%% boundary conditions
clear;
close all;
C = DefineBoundaryConditions;



%%% Media Calculations stack and cell level
[MC_Stack_In] = MediaCalculation_Cath_IN(C);
MC_Cell_In = MC_Stack_In/C.CP.nZ;



%%% calculation electrochemical reaction along the channel
I=ones(C.NumParam.NumSegments, 1).*C.CP.I/C.NumParam.NumSegments; %calculation of the current "I" of each segment
[MC_Nodes] = MediaDiscretisation (MC_Cell_In, C, I);
[MC_Elements] = NodeToElement (MC_Nodes);



%%% plot of the results
Positions;
Plot_MediaFlowCathode;  

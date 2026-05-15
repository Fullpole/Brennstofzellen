function [MC_Stack_In] = MediaCalculation_Cath_IN(C)

MC_Stack_In(2)=0;
MC_Stack_In(1)=C.CP.I*C.CP.nZ*1/(4*C.Const.F)*C.OP.StoicCathode;
MC_Stack_In(3)=(MC_Stack_In(1)/C.Const.gO2)*C.Const.gN2;



%%%C.CP.nO2used=(MC_Stack_In(1))/(C.NumParam.NodeSegments*C.OP.StoicCathode);
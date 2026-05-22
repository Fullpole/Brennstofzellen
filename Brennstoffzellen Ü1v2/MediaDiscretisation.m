function [MC_Nodes] = MediaDiscretisation (MC_Cell_In, C, I)

MC_Nodes(1,1)=MC_Cell_In(1);
MC_Nodes(1,2)=MC_Cell_In(2);
MC_Nodes(1,3)=MC_Cell_In(3);
i=1
while i<10

     i=i+1;

    MC_Nodes(i,1)=MC_Cell_In(1)-(i-1)*C.CP.nO2usedPerNode;
    MC_Nodes(i,2)=MC_Cell_In(2)+(i-1)*C.CP.nH2OMadePerNode;
    MC_Nodes(i,3)=MC_Cell_In(3);
  
end


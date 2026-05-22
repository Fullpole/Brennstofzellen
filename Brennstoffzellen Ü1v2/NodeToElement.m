function [MC_Elements] = NodeToElement (MC_Nodes)

for i=1:(length(MC_Nodes)-1)

MC_Elements(i,1)=(MC_Nodes(i, 1)+MC_Nodes(i+1, 1))/2   
MC_Elements(i,2)=(MC_Nodes(i, 2)+MC_Nodes(i+1, 2))/2
MC_Elements(i,3)=(MC_Nodes(i, 3)+MC_Nodes(i+1, 3))/2 
end


  
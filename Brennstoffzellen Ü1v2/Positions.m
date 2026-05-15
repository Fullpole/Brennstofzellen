Distance=1/(length(MC_Nodes(:, 1))-1);

PositionNodes=zeros(length(MC_Nodes(:, 1)), 1);
PositionNodes(1)=0;
for i=2:length(PositionNodes)
  PositionNodes(i)=PositionNodes(i-1)+Distance;
end

PositionElements=zeros(length(PositionNodes)-1, 1);
PositionElements(1)=Distance/2;
for i=2:length(PositionElements)
  PositionElements(i)=PositionElements(i-1)+Distance;
end

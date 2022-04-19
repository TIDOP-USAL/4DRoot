% 0.	Install from Matlab:
% COMPUTER VISION TOOLBOX (pcshow)
% PARTIAL DIFFERENTIAL EQUATION (stlread) 
% STATISTICS AND MACHINE LEARNING TOOLBOX (treeQSM)
clc;
clear all;
close all;
%INPUTS: FILESAMPLE,FACTOR--->ASK BY CONSOLE
 prompt = 'What is the file name of the root sample without extension (*stl)?';
 filesample = input(prompt,'s');
 prompt = 'What is the scale factor to choose the minimun flexible cylinder´s height (by default 0.01)?';
 factor = input(prompt);
 prompt = 'Do you want to visualize the inpute data (yes=1, no=0)?';
 view=input(prompt);

%filesample='root1';
%factor=0.01;

ext1='.stl';
root_sample=strcat(filesample,ext1);
% 1. stl to point cloud and scale (0.01)
Mesh=stlread(root_sample);
PC=Mesh.Points;
PCscal=PC*factor;
% 2. colocate and show pc
PCscal_down=PCscal;
	PCscal_down(:,1)=PCscal(:,1);
	PCscal_down(:,2)=PCscal(:,3);
	PCscal_down(:,3)=PCscal(:,2);
if view==1
   pcshow(PCscal_down);
pause;
end
close all;
% 3. upside down
PCscal_up=PCscal_down;
PCscal_up(:,3)=PCscal_down(:,3)*(-1);
% 4. QSM
create_input
QSM=treeqsm(PCscal_up,inputs)

% 5. Results: '.XLSX' from QSM.mat
%ext='.xlsx';
%filename=strcat('Aprox_RootTraits_',filesample,ext);
%delete (filename);

%TOTAL TRAITS SHEET
TRAITS = {'TotalVolume';'PrimaryRootVolume';'LateralRootVolume';'TotalRootHeight';'TotalLenght';'PrimaryRootLenght';'LateralRootLength';'NumberOfRamifications';'Max.Ramif.Order';'TotalArea';'PrimaryRootArea';'LateralRootArea';'CrownDiamAve';'CrownDiamMax';'CrownAreaConvexHull';'CrownAreaAlphaShape';'CrownBaseeHeight';'CrownLenght';'CrownRatio';'CrownVolumeConv';'CrownVolumeAlpha';'Location x';'Location y';'Location z'};
Aprox_1 = {QSM(1).treedata.TotalVolume;QSM(1).treedata.TrunkVolume;QSM(1).treedata.BranchVolume;QSM(1).treedata.TreeHeight;QSM(1).treedata.TotalLength;QSM(1).treedata.TrunkLength;QSM(1).treedata.BranchLength;QSM(1).treedata.NumberBranches;QSM(1).treedata.MaxBranchOrder;QSM(1).treedata.TotalArea;QSM(1).treedata.TrunkArea;QSM(1).treedata.BranchArea;QSM(1).treedata.CrownDiamAve;QSM(1).treedata.CrownDiamMax;QSM(1).treedata.CrownAreaConv;QSM(1).treedata.CrownAreaAlpha;QSM(1).treedata.CrownBaseHeight;QSM(1).treedata.CrownLength;QSM(1).treedata.CrownRatio;QSM(1).treedata.CrownVolumeConv;QSM(1).treedata.CrownVolumeAlpha;QSM(1).treedata.location(1);QSM(1).treedata.location(2);QSM(1).treedata.location(3)};
Aprox_2 = {QSM(2).treedata.TotalVolume;QSM(2).treedata.TrunkVolume;QSM(2).treedata.BranchVolume;QSM(2).treedata.TreeHeight;QSM(2).treedata.TotalLength;QSM(2).treedata.TrunkLength;QSM(2).treedata.BranchLength;QSM(2).treedata.NumberBranches;QSM(2).treedata.MaxBranchOrder;QSM(2).treedata.TotalArea;QSM(2).treedata.TrunkArea;QSM(2).treedata.BranchArea;QSM(2).treedata.CrownDiamAve;QSM(2).treedata.CrownDiamMax;QSM(2).treedata.CrownAreaConv;QSM(2).treedata.CrownAreaAlpha;QSM(2).treedata.CrownBaseHeight;QSM(2).treedata.CrownLength;QSM(2).treedata.CrownRatio;QSM(2).treedata.CrownVolumeConv;QSM(2).treedata.CrownVolumeAlpha;QSM(2).treedata.location(1);QSM(2).treedata.location(2);QSM(2).treedata.location(3)};
Aprox_3 = {QSM(3).treedata.TotalVolume;QSM(3).treedata.TrunkVolume;QSM(3).treedata.BranchVolume;QSM(3).treedata.TreeHeight;QSM(3).treedata.TotalLength;QSM(3).treedata.TrunkLength;QSM(3).treedata.BranchLength;QSM(3).treedata.NumberBranches;QSM(3).treedata.MaxBranchOrder;QSM(3).treedata.TotalArea;QSM(3).treedata.TrunkArea;QSM(3).treedata.BranchArea;QSM(3).treedata.CrownDiamAve;QSM(3).treedata.CrownDiamMax;QSM(3).treedata.CrownAreaConv;QSM(3).treedata.CrownAreaAlpha;QSM(3).treedata.CrownBaseHeight;QSM(3).treedata.CrownLength;QSM(3).treedata.CrownRatio;QSM(3).treedata.CrownVolumeConv;QSM(3).treedata.CrownVolumeAlpha;QSM(3).treedata.location(1);QSM(3).treedata.location(2);QSM(3).treedata.location(3)};
Aprox_4 = {QSM(4).treedata.TotalVolume;QSM(4).treedata.TrunkVolume;QSM(4).treedata.BranchVolume;QSM(4).treedata.TreeHeight;QSM(4).treedata.TotalLength;QSM(4).treedata.TrunkLength;QSM(4).treedata.BranchLength;QSM(4).treedata.NumberBranches;QSM(4).treedata.MaxBranchOrder;QSM(4).treedata.TotalArea;QSM(4).treedata.TrunkArea;QSM(4).treedata.BranchArea;QSM(4).treedata.CrownDiamAve;QSM(4).treedata.CrownDiamMax;QSM(4).treedata.CrownAreaConv;QSM(4).treedata.CrownAreaAlpha;QSM(4).treedata.CrownBaseHeight;QSM(4).treedata.CrownLength;QSM(4).treedata.CrownRatio;QSM(4).treedata.CrownVolumeConv;QSM(4).treedata.CrownVolumeAlpha;QSM(4).treedata.location(1);QSM(4).treedata.location(2);QSM(4).treedata.location(3)};
Aprox_5 = {QSM(5).treedata.TotalVolume;QSM(5).treedata.TrunkVolume;QSM(5).treedata.BranchVolume;QSM(5).treedata.TreeHeight;QSM(5).treedata.TotalLength;QSM(5).treedata.TrunkLength;QSM(5).treedata.BranchLength;QSM(5).treedata.NumberBranches;QSM(5).treedata.MaxBranchOrder;QSM(5).treedata.TotalArea;QSM(5).treedata.TrunkArea;QSM(5).treedata.BranchArea;QSM(5).treedata.CrownDiamAve;QSM(5).treedata.CrownDiamMax;QSM(5).treedata.CrownAreaConv;QSM(5).treedata.CrownAreaAlpha;QSM(5).treedata.CrownBaseHeight;QSM(5).treedata.CrownLength;QSM(5).treedata.CrownRatio;QSM(5).treedata.CrownVolumeConv;QSM(5).treedata.CrownVolumeAlpha;QSM(5).treedata.location(1);QSM(5).treedata.location(2);QSM(5).treedata.location(3)};
Aprox_6 = {QSM(6).treedata.TotalVolume;QSM(6).treedata.TrunkVolume;QSM(6).treedata.BranchVolume;QSM(6).treedata.TreeHeight;QSM(6).treedata.TotalLength;QSM(6).treedata.TrunkLength;QSM(6).treedata.BranchLength;QSM(6).treedata.NumberBranches;QSM(6).treedata.MaxBranchOrder;QSM(6).treedata.TotalArea;QSM(6).treedata.TrunkArea;QSM(6).treedata.BranchArea;QSM(6).treedata.CrownDiamAve;QSM(6).treedata.CrownDiamMax;QSM(6).treedata.CrownAreaConv;QSM(6).treedata.CrownAreaAlpha;QSM(6).treedata.CrownBaseHeight;QSM(6).treedata.CrownLength;QSM(6).treedata.CrownRatio;QSM(6).treedata.CrownVolumeConv;QSM(6).treedata.CrownVolumeAlpha;QSM(6).treedata.location(1);QSM(6).treedata.location(2);QSM(6).treedata.location(3)};
Aprox_7 = {QSM(7).treedata.TotalVolume;QSM(7).treedata.TrunkVolume;QSM(7).treedata.BranchVolume;QSM(7).treedata.TreeHeight;QSM(7).treedata.TotalLength;QSM(7).treedata.TrunkLength;QSM(7).treedata.BranchLength;QSM(7).treedata.NumberBranches;QSM(7).treedata.MaxBranchOrder;QSM(7).treedata.TotalArea;QSM(7).treedata.TrunkArea;QSM(7).treedata.BranchArea;QSM(7).treedata.CrownDiamAve;QSM(7).treedata.CrownDiamMax;QSM(7).treedata.CrownAreaConv;QSM(7).treedata.CrownAreaAlpha;QSM(7).treedata.CrownBaseHeight;QSM(7).treedata.CrownLength;QSM(7).treedata.CrownRatio;QSM(7).treedata.CrownVolumeConv;QSM(7).treedata.CrownVolumeAlpha;QSM(7).treedata.location(1);QSM(7).treedata.location(2);QSM(7).treedata.location(3)};
Aprox_8 = {QSM(8).treedata.TotalVolume;QSM(8).treedata.TrunkVolume;QSM(8).treedata.BranchVolume;QSM(8).treedata.TreeHeight;QSM(8).treedata.TotalLength;QSM(8).treedata.TrunkLength;QSM(8).treedata.BranchLength;QSM(8).treedata.NumberBranches;QSM(8).treedata.MaxBranchOrder;QSM(8).treedata.TotalArea;QSM(8).treedata.TrunkArea;QSM(8).treedata.BranchArea;QSM(8).treedata.CrownDiamAve;QSM(8).treedata.CrownDiamMax;QSM(8).treedata.CrownAreaConv;QSM(8).treedata.CrownAreaAlpha;QSM(8).treedata.CrownBaseHeight;QSM(8).treedata.CrownLength;QSM(8).treedata.CrownRatio;QSM(8).treedata.CrownVolumeConv;QSM(8).treedata.CrownVolumeAlpha;QSM(8).treedata.location(1);QSM(8).treedata.location(2);QSM(8).treedata.location(3)};
T = table(TRAITS, Aprox_1, Aprox_2, Aprox_3, Aprox_4, Aprox_5, Aprox_6, Aprox_7, Aprox_8);
%writetable(T,filename,'Sheet','TotalTraits');
%CHOOSE 1 APROX
MX = ([QSM(1).treedata.TotalVolume QSM(2).treedata.TotalVolume QSM(3).treedata.TotalVolume QSM(4).treedata.TotalVolume QSM(5).treedata.TotalVolume QSM(6).treedata.TotalVolume QSM(7).treedata.TotalVolume QSM(8).treedata.TotalVolume]);
m=median(MX);
[minimo,position]=min(abs(MX-m));
mas_cercano=MX(position);
 ext='.xlsx';
 factor=num2str(factor);
 filename2=strcat('RootTraits_',filesample,'_s');
 filename2=strcat(filename2,factor,ext);

 delete (filename2);
if position==1
Value=Aprox_1;
end
if position==2
Value=Aprox_2;
end
if position==3
Value=Aprox_3;
end
if position==4
Value=Aprox_4;
end
if position==5
Value=Aprox_5;
end
if position==6
Value=Aprox_6;
end
if position==7
Value=Aprox_7;
end
if position==8
Value=Aprox_8;
end
T2 = table(TRAITS, Value);
writetable(T2,filename2,'Sheet','TotalTraits');

%TRAITS PER RAMIFICATION ORDER SHEET
ORDER_TRAITS={'Volume/RamificationOrder';'Area/RamificationOrder';'Lenght/RamificationOrder';'Number/RamificationOrder'};
Aprox1 = {QSM(1).treedata.VolBranchOrd;QSM(1).treedata.AreBranchOrd;QSM(1).treedata.LenBranchOrd;QSM(1).treedata.NumBranchOrd};
Aprox2 = {QSM(2).treedata.VolBranchOrd;QSM(2).treedata.AreBranchOrd;QSM(2).treedata.LenBranchOrd;QSM(2).treedata.NumBranchOrd};
Aprox3 = {QSM(3).treedata.VolBranchOrd;QSM(3).treedata.AreBranchOrd;QSM(3).treedata.LenBranchOrd;QSM(3).treedata.NumBranchOrd};
Aprox4 = {QSM(4).treedata.VolBranchOrd;QSM(4).treedata.AreBranchOrd;QSM(4).treedata.LenBranchOrd;QSM(4).treedata.NumBranchOrd};
Aprox5 = {QSM(5).treedata.VolBranchOrd;QSM(5).treedata.AreBranchOrd;QSM(5).treedata.LenBranchOrd;QSM(5).treedata.NumBranchOrd};
Aprox6 = {QSM(6).treedata.VolBranchOrd;QSM(6).treedata.AreBranchOrd;QSM(6).treedata.LenBranchOrd;QSM(6).treedata.NumBranchOrd};
Aprox7 = {QSM(7).treedata.VolBranchOrd;QSM(7).treedata.AreBranchOrd;QSM(7).treedata.LenBranchOrd;QSM(7).treedata.NumBranchOrd};
Aprox8 = {QSM(8).treedata.VolBranchOrd;QSM(8).treedata.AreBranchOrd;QSM(8).treedata.LenBranchOrd;QSM(8).treedata.NumBranchOrd};
B=table(ORDER_TRAITS,Aprox1,Aprox2,Aprox3,Aprox4,Aprox5,Aprox6,Aprox7,Aprox8);
%writetable(B,filename,'Sheet','RamificationOrder_Traits');
%CHOOSE 1
if position==1
    Order= Aprox1;
end
if position==2
        Order= Aprox2;
end
if position==3
    Order= Aprox3;
end
if position==4
    Order= Aprox4;
end
if position==5
    Order= Aprox5;
end
if position==6
        Order= Aprox6;
end
if position==7
    Order= Aprox7;
end
if position==8
    Order= Aprox8;
end
B2=table(ORDER_TRAITS,Order);
writetable(B2,filename2,'Sheet','RamificationOrder_Traits');

%STEM TAPER SHEET
STEM_TAPER1={'Aprox#1_Distance';'Aprox#1_Diameter'};
Section1={QSM(1).treedata.StemTaper(1,:),QSM(1).treedata.StemTaper(2,:)};
Section=transpose(Section1);
S=table(STEM_TAPER1,Section);
%writetable(S,filename,'Sheet','TaprootTaper');
STEM_TAPER2={'Aprox#2_Distance';'Aprox#2_Diameter'};
Section2={QSM(2).treedata.StemTaper(1,:),QSM(2).treedata.StemTaper(2,:)};
Section=transpose(Section2);
S=table(STEM_TAPER2,Section);
%writetable(S,filename,'Sheet','TaprootTaper','WriteMode','append');
STEM_TAPER3={'Aprox#3_Distance';'Aprox#3_Diameter'};
Section3={QSM(3).treedata.StemTaper(1,:),QSM(3).treedata.StemTaper(2,:)};
Section=transpose(Section3);
S=table(STEM_TAPER3,Section);
%writetable(S,filename,'Sheet','TaprootTaper','WriteMode','append');
STEM_TAPER4={'Aprox#4_Distance';'Aprox#4_Diameter'};
Section4={QSM(4).treedata.StemTaper(1,:),QSM(4).treedata.StemTaper(2,:)};
Section=transpose(Section4);
S=table(STEM_TAPER4,Section);
%writetable(S,filename,'Sheet','TaprootTaper','WriteMode','append');
STEM_TAPER5={'Aprox#5_Distance';'Aprox#5_Diameter'};
Section5={QSM(5).treedata.StemTaper(1,:),QSM(5).treedata.StemTaper(2,:)};
Section=transpose(Section5);
S=table(STEM_TAPER5,Section);
%writetable(S,filename,'Sheet','TaprootTaper','WriteMode','append');
STEM_TAPER6={'Aprox#6_Distance';'Aprox#6_Diameter'};
Section6={QSM(6).treedata.StemTaper(1,:),QSM(6).treedata.StemTaper(2,:)};
Section=transpose(Section6);
S=table(STEM_TAPER6,Section);
%writetable(S,filename,'Sheet','TaprootTaper','WriteMode','append');
STEM_TAPER7={'Aprox#7_Distance';'Aprox#7_Diameter'};
Section7={QSM(7).treedata.StemTaper(1,:),QSM(7).treedata.StemTaper(2,:)};
Section=transpose(Section7);
S=table(STEM_TAPER7,Section);
%writetable(S,filename,'Sheet','TaprootTaper','WriteMode','append');
STEM_TAPER8={'Aprox#8_Distance';'Aprox#8_Diameter'};
Section8={QSM(8).treedata.StemTaper(1,:),QSM(8).treedata.StemTaper(2,:)};
Section=transpose(Section8);
S=table(STEM_TAPER8,Section);
%writetable(S,filename,'Sheet','TaprootTaper','WriteMode','append');
% CHOOSE 1
STEM_TAPER={'Distance';'Diameter'};
if position==1
Section=Section1;
end
if position==2
Section=Section2;
end
if position==3
Section=Section3;
end
if position==4
Section=Section4;
end
if position==5
Section=Section5;
end
if position==6
Section=Sectio6;
end
if position==7
Section=Section7;
end
if position==8
Section=Section8;
end
Section=transpose(Section);
S2=table(STEM_TAPER,Section);
writetable(S2,filename2,'Sheet','TaprootTaper');

%SPREADS SHEET
%If QSM(1).treedata.TreeHeight=5-10;
SPREAD1={'Aprox#1_Spread_hz1','Aprox#1_Spread_hz2','Aprox#1_Spread_hz3','Aprox#1_Spread_hz4','Aprox#1_Spread_hz5','Aprox#1_Spread_hz6','Aprox#1_Spread_hz7','Aprox#1_Spread_hz8','Aprox#1_Spread_hz9','Aprox#1_Spread_hz10'};
Direction1={QSM(1).treedata.spreads(1,:),QSM(1).treedata.spreads(2,:),QSM(1).treedata.spreads(3,:),QSM(1).treedata.spreads(4,:),QSM(1).treedata.spreads(5,:),QSM(1).treedata.spreads(6,:),QSM(1).treedata.spreads(7,:),QSM(1).treedata.spreads(8,:),QSM(1).treedata.spreads(9,:),QSM(1).treedata.spreads(10,:)};
Direction=transpose(Direction1);
SPREAD=transpose(SPREAD1);
E=table(SPREAD,Direction);
%writetable(E,filename,'Sheet','Spreads', 'WriteMode','append');
SPREAD1={'Aprox#2_Spread_hz1','Aprox#2_Spread_hz2','Aprox#2_Spread_hz3','Aprox#2_Spread_hz4','Aprox#2_Spread_hz5','Aprox#2_Spread_hz6','Aprox#2_Spread_hz7','Aprox#2_Spread_hz8','Aprox#2_Spread_hz9','Aprox#2_Spread_hz10'};
Direction2={QSM(2).treedata.spreads(1,:),QSM(2).treedata.spreads(2,:),QSM(2).treedata.spreads(3,:),QSM(2).treedata.spreads(4,:),QSM(2).treedata.spreads(5,:),QSM(2).treedata.spreads(6,:),QSM(2).treedata.spreads(7,:),QSM(2).treedata.spreads(8,:),QSM(2).treedata.spreads(9,:),QSM(2).treedata.spreads(10,:)};
Direction=transpose(Direction2);
SPREAD=transpose(SPREAD1);
E=table(SPREAD,Direction);
%writetable(E,filename,'Sheet','Spreads', 'WriteMode','append');
SPREAD1={'Aprox#3_Spread_hz1','Aprox#3_Spread_hz2','Aprox#3_Spread_hz3','Aprox#3_Spread_hz4','Aprox#3_Spread_hz5','Aprox#3_Spread_hz6','Aprox#3_Spread_hz7','Aprox#3_Spread_hz8','Aprox#3_Spread_hz9','Aprox#3_Spread_hz10'};
Direction3={QSM(3).treedata.spreads(1,:),QSM(3).treedata.spreads(2,:),QSM(3).treedata.spreads(3,:),QSM(3).treedata.spreads(4,:),QSM(3).treedata.spreads(5,:),QSM(3).treedata.spreads(6,:),QSM(3).treedata.spreads(7,:),QSM(3).treedata.spreads(8,:),QSM(3).treedata.spreads(9,:),QSM(3).treedata.spreads(10,:)};
Direction=transpose(Direction3);
SPREAD=transpose(SPREAD1);
E=table(SPREAD,Direction);
%writetable(E,filename,'Sheet','Spreads', 'WriteMode','append');
SPREAD1={'Aprox#4_Spread_hz1','Aprox#4_Spread_hz2','Aprox#4_Spread_hz3','Aprox#4_Spread_hz4','Aprox#4_Spread_hz5','Aprox#4_Spread_hz6','Aprox#4_Spread_hz7','Aprox#4_Spread_hz8','Aprox#4_Spread_hz9','Aprox#4_Spread_hz10'};
Direction4={QSM(4).treedata.spreads(1,:),QSM(4).treedata.spreads(2,:),QSM(4).treedata.spreads(3,:),QSM(4).treedata.spreads(4,:),QSM(4).treedata.spreads(5,:),QSM(4).treedata.spreads(6,:),QSM(4).treedata.spreads(7,:),QSM(4).treedata.spreads(8,:),QSM(4).treedata.spreads(9,:),QSM(4).treedata.spreads(10,:)};
Direction=transpose(Direction4);
SPREAD=transpose(SPREAD1);
E=table(SPREAD,Direction);
%writetable(E,filename,'Sheet','Spreads', 'WriteMode','append');
SPREAD1={'Aprox#5_Spread_hz1','Aprox#5_Spread_hz2','Aprox#5_Spread_hz3','Aprox#5_Spread_hz4','Aprox#5_Spread_hz5','Aprox#5_Spread_hz6','Aprox#5_Spread_hz7','Aprox#5_Spread_hz8','Aprox#5_Spread_hz9','Aprox#5_Spread_hz10'};
Direction5={QSM(5).treedata.spreads(1,:),QSM(5).treedata.spreads(2,:),QSM(5).treedata.spreads(3,:),QSM(5).treedata.spreads(4,:),QSM(5).treedata.spreads(5,:),QSM(5).treedata.spreads(6,:),QSM(5).treedata.spreads(7,:),QSM(5).treedata.spreads(8,:),QSM(5).treedata.spreads(9,:),QSM(5).treedata.spreads(10,:)};
Direction=transpose(Direction5);
SPREAD=transpose(SPREAD1);
E=table(SPREAD,Direction);
%writetable(E,filename,'Sheet','Spreads', 'WriteMode','append');
SPREAD1={'Aprox#6_Spread_hz1','Aprox#6_Spread_hz2','Aprox#6_Spread_hz3','Aprox#6_Spread_hz4','Aprox#6_Spread_hz5','Aprox#6_Spread_hz6','Aprox#6_Spread_hz7','Aprox#6_Spread_hz8','Aprox#6_Spread_hz9','Aprox#6_Spread_hz10'};
Direction6={QSM(6).treedata.spreads(1,:),QSM(6).treedata.spreads(2,:),QSM(6).treedata.spreads(3,:),QSM(6).treedata.spreads(4,:),QSM(6).treedata.spreads(5,:),QSM(6).treedata.spreads(6,:),QSM(6).treedata.spreads(7,:),QSM(6).treedata.spreads(8,:),QSM(6).treedata.spreads(9,:),QSM(6).treedata.spreads(10,:)};
Direction=transpose(Direction6);
SPREAD=transpose(SPREAD1);
E=table(SPREAD,Direction);
%writetable(E,filename,'Sheet','Spreads', 'WriteMode','append');
SPREAD1={'Aprox#7_Spread_hz1','Aprox#7_Spread_hz2','Aprox#7_Spread_hz3','Aprox#7_Spread_hz4','Aprox#7_Spread_hz5','Aprox#7_Spread_hz6','Aprox#7_Spread_hz7','Aprox#7_Spread_hz8','Aprox#7_Spread_hz9','Aprox#7_Spread_hz10'};
Direction7={QSM(7).treedata.spreads(1,:),QSM(7).treedata.spreads(2,:),QSM(7).treedata.spreads(3,:),QSM(7).treedata.spreads(4,:),QSM(7).treedata.spreads(5,:),QSM(7).treedata.spreads(6,:),QSM(7).treedata.spreads(7,:),QSM(7).treedata.spreads(8,:),QSM(7).treedata.spreads(9,:),QSM(7).treedata.spreads(10,:)};
Direction=transpose(Direction7);
SPREAD=transpose(SPREAD1);
E=table(SPREAD,Direction);
%writetable(E,filename,'Sheet','Spreads', 'WriteMode','append');
SPREAD1={'Aprox#8_Spread_hz1','Aprox#8_Spread_hz2','Aprox#8_Spread_hz3','Aprox#8_Spread_hz4','Aprox#8_Spread_hz5','Aprox#8_Spread_hz6','Aprox#8_Spread_hz7','Aprox#8_Spread_hz8','Aprox#8_Spread_hz9','Aprox#8_Spread_hz10'};
Direction8={QSM(8).treedata.spreads(1,:),QSM(8).treedata.spreads(2,:),QSM(8).treedata.spreads(3,:),QSM(8).treedata.spreads(4,:),QSM(8).treedata.spreads(5,:),QSM(8).treedata.spreads(6,:),QSM(8).treedata.spreads(7,:),QSM(8).treedata.spreads(8,:),QSM(8).treedata.spreads(9,:),QSM(8).treedata.spreads(10,:)};
Direction=transpose(Direction8);
SPREAD=transpose(SPREAD1);
E=table(SPREAD,Direction);
%writetable(E,filename,'Sheet','Spreads', 'WriteMode','append');
%CHOOSE 1
SPREAD1={'Spread_hz1','Spread_hz2','Spread_hz3','Spread_hz4','Spread_hz5','Spread_hz6','Spread_hz7','Spread_hz8','Spread_hz9','Spread_hz10'};
if position==1
Direction18=Direction1;
end
if position==2
Direction18=Direction2;
end
if position==3
Direction18=Direction3;
end
if position==4
Direction18=Direction4;
end
if position==5
Direction18=Direction5;
end
if position==6
Direction18=Direction6;
end
if position==7
Direction18=Direction7;
end
if position==8
Direction18=Direction8;
end
Direction=transpose(Direction18);
SPREAD=transpose(SPREAD1);
E2=table(SPREAD,Direction);
writetable(E2,filename2,'Sheet','Spreads');

%CYLINDER'S DISTRIBUTION OF TOTAL ROOT
TRAIT_CYLINDER_DISTRIBUTION={'Aprox#1_VolumePerDiameterDistribution';'Aprox#1_AreaPerDiameterDistribution';'Aprox#1_LenghtPerDiameterDistribution';'Aprox#1_VolumePerHeightDistribution';'Aprox#1_AreaPerHeightDistribution';'Aprox#1_LenghtPerHeightDistribution';'Aprox#1_VolumePerZenitDistribution';'Aprox#1_AreaPerZenitDistribution';'Aprox#1_LenghtPerZenitDistribution';'Aprox#1_VolumePerAzimutDistribution';'Aprox#1_AreaPerAzimutDistribution';'Aprox#1_LenghtPerAzimutDistribution'};
CLASS1={QSM(1).treedata.VolCylDia;QSM(1).treedata.AreCylDia;QSM(1).treedata.LenCylDia;QSM(1).treedata.VolCylHei;QSM(1).treedata.AreCylHei;QSM(1).treedata.LenCylHei;QSM(1).treedata.VolCylZen;QSM(1).treedata.AreCylZen;QSM(1).treedata.LenCylZen;QSM(1).treedata.VolCylAzi;QSM(1).treedata.AreCylAzi;QSM(1).treedata.LenCylAzi};
C=table(TRAIT_CYLINDER_DISTRIBUTION, CLASS1 );
%writetable(C,filename,'Sheet','CylinderDistribution', 'WriteMode','append');
TRAIT_CYLINDER_DISTRIBUTION={'Aprox#2_VolumePerDiameterDistribution';'Aprox#2_AreaPerDiameterDistribution';'Aprox#2_LenghtPerDiameterDistribution';'Aprox#2_VolumePerHeightDistribution';'Aprox#2_AreaPerHeightDistribution';'Aprox#2_LenghtPerHeightDistribution';'Aprox#2_VolumePerZenitDistribution';'Aprox#2_AreaPerZenitDistribution';'Aprox#2_LenghtPerZenitDistribution';'Aprox#2_VolumePerAzimutDistribution';'Aprox#2_AreaPerAzimutDistribution';'Aprox#2_LenghtPerAzimutDistribution'};
CLASS2={QSM(2).treedata.VolCylDia;QSM(2).treedata.AreCylDia;QSM(2).treedata.LenCylDia;QSM(2).treedata.VolCylHei;QSM(2).treedata.AreCylHei;QSM(2).treedata.LenCylHei;QSM(2).treedata.VolCylZen;QSM(2).treedata.AreCylZen;QSM(2).treedata.LenCylZen;QSM(2).treedata.VolCylAzi;QSM(2).treedata.AreCylAzi;QSM(2).treedata.LenCylAzi};
C=table(TRAIT_CYLINDER_DISTRIBUTION, CLASS2 );
%writetable(C,filename,'Sheet','CylinderDistribution', 'WriteMode','append');
TRAIT_CYLINDER_DISTRIBUTION={'Aprox#3_VolumePerDiameterDistribution';'Aprox#3_AreaPerDiameterDistribution';'Aprox#3_LenghtPerDiameterDistribution';'Aprox#3_VolumePerHeightDistribution';'Aprox#3_AreaPerHeightDistribution';'Aprox#3_LenghtPerHeightDistribution';'Aprox#3_VolumePerZenitDistribution';'Aprox#3_AreaPerZenitDistribution';'Aprox#3_LenghtPerZenitDistribution';'Aprox#3_VolumePerAzimutDistribution';'Aprox#3_AreaPerAzimutDistribution';'Aprox#3_LenghtPerAzimutDistribution'};
CLASS3={QSM(3).treedata.VolCylDia;QSM(3).treedata.AreCylDia;QSM(3).treedata.LenCylDia;QSM(3).treedata.VolCylHei;QSM(3).treedata.AreCylHei;QSM(3).treedata.LenCylHei;QSM(3).treedata.VolCylZen;QSM(3).treedata.AreCylZen;QSM(3).treedata.LenCylZen;QSM(3).treedata.VolCylAzi;QSM(3).treedata.AreCylAzi;QSM(3).treedata.LenCylAzi};
C=table(TRAIT_CYLINDER_DISTRIBUTION, CLASS3 );
%writetable(C,filename,'Sheet','CylinderDistribution', 'WriteMode','append');
TRAIT_CYLINDER_DISTRIBUTION={'Aprox#4_VolumePerDiameterDistribution';'Aprox#4_AreaPerDiameterDistribution';'Aprox#4_LenghtPerDiameterDistribution';'Aprox#4_VolumePerHeightDistribution';'Aprox#4_AreaPerHeightDistribution';'Aprox#4_LenghtPerHeightDistribution';'Aprox#4_VolumePerZenitDistribution';'Aprox#4_AreaPerZenitDistribution';'Aprox#4_LenghtPerZenitDistribution';'Aprox#4_VolumePerAzimutDistribution';'Aprox#4_AreaPerAzimutDistribution';'Aprox#4_LenghtPerAzimutDistribution'};
CLASS4={QSM(4).treedata.VolCylDia;QSM(4).treedata.AreCylDia;QSM(4).treedata.LenCylDia;QSM(4).treedata.VolCylHei;QSM(4).treedata.AreCylHei;QSM(4).treedata.LenCylHei;QSM(4).treedata.VolCylZen;QSM(4).treedata.AreCylZen;QSM(4).treedata.LenCylZen;QSM(4).treedata.VolCylAzi;QSM(4).treedata.AreCylAzi;QSM(4).treedata.LenCylAzi};
C=table(TRAIT_CYLINDER_DISTRIBUTION, CLASS4 );
%writetable(C,filename,'Sheet','CylinderDistribution', 'WriteMode','append');
TRAIT_CYLINDER_DISTRIBUTION={'Aprox#5_VolumePerDiameterDistribution';'Aprox#5_AreaPerDiameterDistribution';'Aprox#5_LenghtPerDiameterDistribution';'Aprox#5_VolumePerHeightDistribution';'Aprox#5_AreaPerHeightDistribution';'Aprox#5_LenghtPerHeightDistribution';'Aprox#5_VolumePerZenitDistribution';'Aprox#5_AreaPerZenitDistribution';'Aprox#5_LenghtPerZenitDistribution';'Aprox#5_VolumePerAzimutDistribution';'Aprox#5_AreaPerAzimutDistribution';'Aprox#5_LenghtPerAzimutDistribution'};
CLASS5={QSM(5).treedata.VolCylDia;QSM(5).treedata.AreCylDia;QSM(5).treedata.LenCylDia;QSM(5).treedata.VolCylHei;QSM(5).treedata.AreCylHei;QSM(5).treedata.LenCylHei;QSM(5).treedata.VolCylZen;QSM(5).treedata.AreCylZen;QSM(5).treedata.LenCylZen;QSM(5).treedata.VolCylAzi;QSM(5).treedata.AreCylAzi;QSM(5).treedata.LenCylAzi};
C=table(TRAIT_CYLINDER_DISTRIBUTION, CLASS5 );
%writetable(C,filename,'Sheet','CylinderDistribution', 'WriteMode','append');
TRAIT_CYLINDER_DISTRIBUTION={'Aprox#6_VolumePerDiameterDistribution';'Aprox#6_AreaPerDiameterDistribution';'Aprox#6_LenghtPerDiameterDistribution';'Aprox#6_VolumePerHeightDistribution';'Aprox#6_AreaPerHeightDistribution';'Aprox#6_LenghtPerHeightDistribution';'Aprox#6_VolumePerZenitDistribution';'Aprox#6_AreaPerZenitDistribution';'Aprox#6_LenghtPerZenitDistribution';'Aprox#6_VolumePerAzimutDistribution';'Aprox#6_AreaPerAzimutDistribution';'Aprox#6_LenghtPerAzimutDistribution'};
CLASS6={QSM(6).treedata.VolCylDia;QSM(1).treedata.AreCylDia;QSM(6).treedata.LenCylDia;QSM(6).treedata.VolCylHei;QSM(6).treedata.AreCylHei;QSM(6).treedata.LenCylHei;QSM(6).treedata.VolCylZen;QSM(6).treedata.AreCylZen;QSM(6).treedata.LenCylZen;QSM(6).treedata.VolCylAzi;QSM(6).treedata.AreCylAzi;QSM(6).treedata.LenCylAzi};
C=table(TRAIT_CYLINDER_DISTRIBUTION, CLASS6 );
%writetable(C,filename,'Sheet','CylinderDistribution', 'WriteMode','append');
TRAIT_CYLINDER_DISTRIBUTION={'Aprox#7_VolumePerDiameterDistribution';'Aprox#7_AreaPerDiameterDistribution';'Aprox#7_LenghtPerDiameterDistribution';'Aprox#7_VolumePerHeightDistribution';'Aprox#7_AreaPerHeightDistribution';'Aprox#7_LenghtPerHeightDistribution';'Aprox#7_VolumePerZenitDistribution';'Aprox#7_AreaPerZenitDistribution';'Aprox#7_LenghtPerZenitDistribution';'Aprox#7_VolumePerAzimutDistribution';'Aprox#7_AreaPerAzimutDistribution';'Aprox#7_LenghtPerAzimutDistribution'};
CLASS7={QSM(7).treedata.VolCylDia;QSM(7).treedata.AreCylDia;QSM(7).treedata.LenCylDia;QSM(7).treedata.VolCylHei;QSM(7).treedata.AreCylHei;QSM(7).treedata.LenCylHei;QSM(7).treedata.VolCylZen;QSM(7).treedata.AreCylZen;QSM(7).treedata.LenCylZen;QSM(7).treedata.VolCylAzi;QSM(7).treedata.AreCylAzi;QSM(7).treedata.LenCylAzi};
C=table(TRAIT_CYLINDER_DISTRIBUTION, CLASS7 );
%writetable(C,filename,'Sheet','CylinderDistribution', 'WriteMode','append');
TRAIT_CYLINDER_DISTRIBUTION={'Aprox#8_VolumePerDiameterDistribution';'Aprox#8_AreaPerDiameterDistribution';'Aprox#8_LenghtPerDiameterDistribution';'Aprox#8_VolumePerHeightDistribution';'Aprox#8_AreaPerHeightDistribution';'Aprox#8_LenghtPerHeightDistribution';'Aprox#8_VolumePerZenitDistribution';'Aprox#8_AreaPerZenitDistribution';'Aprox#8_LenghtPerZenitDistribution';'Aprox#8_VolumePerAzimutDistribution';'Aprox#8_AreaPerAzimutDistribution';'Aprox#8_LenghtPerAzimutDistribution'};
CLASS8={QSM(8).treedata.VolCylDia;QSM(8).treedata.AreCylDia;QSM(8).treedata.LenCylDia;QSM(8).treedata.VolCylHei;QSM(8).treedata.AreCylHei;QSM(8).treedata.LenCylHei;QSM(8).treedata.VolCylZen;QSM(8).treedata.AreCylZen;QSM(8).treedata.LenCylZen;QSM(8).treedata.VolCylAzi;QSM(8).treedata.AreCylAzi;QSM(8).treedata.LenCylAzi};
C=table(TRAIT_CYLINDER_DISTRIBUTION, CLASS8 );
%writetable(C,filename,'Sheet','CylinderDistribution','WriteMode','append');
% CHOOSE 1
TRAIT_CYLINDER_DISTRIBUTION={'VolumePerDiameterDistribution';'AreaPerDiameterDistribution';'LenghtPerDiameterDistribution';'VolumePerHeightDistribution';'AreaPerHeightDistribution';'LenghtPerHeightDistribution';'VolumePerZenitDistribution';'AreaPerZenitDistribution';'LenghtPerZenitDistribution';'VolumePerAzimutDistribution';'AreaPerAzimutDistribution';'LenghtPerAzimutDistribution'};
if position==1
CLASS=CLASS1;
end
if position==2
CLASS=CLASS2;
end
if position==3
CLASS=CLASS3;
end
if position==4
CLASS=CLASS4;
end
if position==5
CLASS=CLASS5;
end
if position==6
CLASS=CLASS6;
end
if position==7
CLASS=CLASS7;
end
if position==8
CLASS=CLASS8;
end
C2=table(TRAIT_CYLINDER_DISTRIBUTION, CLASS );
writetable(C2,filename2,'Sheet','CylinderDistribution');

%CYLINDER'S CLASSES OF LATERAL ROOTS
TRAIT_LateralRoot_DISTRIBUTION={'Aprox#1_LateralRootVolumePerDiameterDistribution';'Aprox#1_LateralRootAreaPerDiameterDistribution';'Aprox#1_LateralRootLenghtPerDiameterDistribution';'Aprox#1_LateralRootNumberPerDiameterDistribution';'Aprox#1_LateralRootVolumePerHeightDistribution';'Aprox#1_LateralRootAreaPerHeightDistribution';'Aprox#1_LateralRootLenghtPerHeightDistribution';'Aprox#1_LateralRootNumberPerHeightDistribution';'Aprox#1_LateralRootVolumePerAngleDistribution';'Aprox#1_LateralRootAreaPerAngleDistribution';'Aprox#1_LateralRootLenghtPerAngleDistribution';'Aprox#1_LateralRootNumberPerAngleDistribution';'Aprox#1_LateralRootVolumePerAzimuthDistribution';'Aprox#1_LateralRootAreaPerAzimuthDistribution';'Aprox#1_LateralRootLenghtPerAzimuthDistribution';'Aprox#1_LateralRootNumberPerAzimuthDistribution';'Aprox#1_LateralRootVolumePerZenithDistribution';'Aprox#1_LateralRootAreaPerZenithDistribution';'Aprox#1_LateralRootLenghtPerZenithDistribution';'Aprox#1_LateralRootNumberPerZenithDistribution'};
LateralRoot_CLASS1={QSM(1).treedata.VolBranchDia;QSM(1).treedata.AreBranchDia;QSM(1).treedata.LenBranchDia;QSM(1).treedata.NumBranchDia;QSM(1).treedata.VolBranchHei;QSM(1).treedata.AreBranchHei;QSM(1).treedata.LenBranchHei;QSM(1).treedata.NumBranchHei;QSM(1).treedata.VolBranchAng;QSM(1).treedata.AreBranchAng;QSM(1).treedata.LenBranchAng;QSM(1).treedata.NumBranchAng;QSM(1).treedata.VolBranchAzi;QSM(1).treedata.AreBranchAzi;QSM(1).treedata.LenBranchAzi;QSM(1).treedata.NumBranchAzi;QSM(1).treedata.VolBranchZen;QSM(1).treedata.AreBranchZen;QSM(1).treedata.LenBranchZen;QSM(1).treedata.NumBranchZen};
B=table(TRAIT_LateralRoot_DISTRIBUTION, LateralRoot_CLASS1);
%writetable(B,filename,'Sheet','LateralRootDistribution', 'WriteMode','append');
TRAIT_LateralRoot_DISTRIBUTION={'Aprox#2_LateralRootVolumePerDiameterDistribution';'Aprox#2_LateralRootAreaPerDiameterDistribution';'Aprox#2_LateralRootLenghtPerDiameterDistribution';'Aprox#2_LateralRootNumberPerDiameterDistribution';'Aprox#2_LateralRootVolumePerHeightDistribution';'Aprox#2_LateralRootAreaPerHeightDistribution';'Aprox#2_LateralRootLenghtPerHeightDistribution';'Aprox#2_LateralRootNumberPerHeightDistribution';'Aprox#2_LateralRootVolumePerAngleDistribution';'Aprox#2_LateralRootAreaPerAngleDistribution';'Aprox#2_LateralRootLenghtPerAngleDistribution';'Aprox#2_LateralRootNumberPerAngleDistribution';'Aprox#2_LateralRootVolumePerAzimuthDistribution';'Aprox#2_LateralRootAreaPerAzimuthDistribution';'Aprox#2_LateralRootLenghtPerAzimuthDistribution';'Aprox#2_LateralRootNumberPerAzimuthDistribution';'Aprox#2_LateralRootVolumePerZenithDistribution';'Aprox#2_LateralRootAreaPerZenithDistribution';'Aprox#2_LateralRootLenghtPerZenithDistribution';'Aprox#2_LateralRootNumberPerZenithDistribution'};
LateralRoot_CLASS2={QSM(2).treedata.VolBranchDia;QSM(2).treedata.AreBranchDia;QSM(2).treedata.LenBranchDia;QSM(2).treedata.NumBranchDia;QSM(2).treedata.VolBranchHei;QSM(2).treedata.AreBranchHei;QSM(2).treedata.LenBranchHei;QSM(2).treedata.NumBranchHei;QSM(2).treedata.VolBranchAng;QSM(2).treedata.AreBranchAng;QSM(2).treedata.LenBranchAng;QSM(2).treedata.NumBranchAng;QSM(2).treedata.VolBranchAzi;QSM(2).treedata.AreBranchAzi;QSM(2).treedata.LenBranchAzi;QSM(2).treedata.NumBranchAzi;QSM(2).treedata.VolBranchZen;QSM(2).treedata.AreBranchZen;QSM(2).treedata.LenBranchZen;QSM(2).treedata.NumBranchZen};
B=table(TRAIT_LateralRoot_DISTRIBUTION, LateralRoot_CLASS2);
%writetable(B,filename,'Sheet','LateralRootDistribution', 'WriteMode','append');
TRAIT_LateralRoot_DISTRIBUTION={'Aprox#3_LateralRootVolumePerDiameterDistribution';'Aprox#3_LateralRootAreaPerDiameterDistribution';'Aprox#3_LateralRootLenghtPerDiameterDistribution';'Aprox#3_LateralRootNumberPerDiameterDistribution';'Aprox#3_LateralRootVolumePerHeightDistribution';'Aprox#3_LateralRootAreaPerHeightDistribution';'Aprox#3_LateralRootLenghtPerHeightDistribution';'Aprox#3_LateralRootNumberPerHeightDistribution';'Aprox#3_LateralRootVolumePerAngleDistribution';'Aprox#3_LateralRootAreaPerAngleDistribution';'Aprox#3_LateralRootLenghtPerAngleDistribution';'Aprox#3_LateralRootNumberPerAngleDistribution';'Aprox#3_LateralRootVolumePerAzimuthDistribution';'Aprox#3_LateralRootAreaPerAzimuthDistribution';'Aprox#3_LateralRootLenghtPerAzimuthDistribution';'Aprox#3_LateralRootNumberPerAzimuthDistribution';'Aprox#3_LateralRootVolumePerZenithDistribution';'Aprox#3_LateralRootAreaPerZenithDistribution';'Aprox#3_LateralRootLenghtPerZenithDistribution';'Aprox#3_LateralRootNumberPerZenithDistribution'};
LateralRoot_CLASS3={QSM(3).treedata.VolBranchDia;QSM(3).treedata.AreBranchDia;QSM(3).treedata.LenBranchDia;QSM(3).treedata.NumBranchDia;QSM(3).treedata.VolBranchHei;QSM(3).treedata.AreBranchHei;QSM(3).treedata.LenBranchHei;QSM(3).treedata.NumBranchHei;QSM(3).treedata.VolBranchAng;QSM(3).treedata.AreBranchAng;QSM(3).treedata.LenBranchAng;QSM(3).treedata.NumBranchAng;QSM(3).treedata.VolBranchAzi;QSM(3).treedata.AreBranchAzi;QSM(3).treedata.LenBranchAzi;QSM(3).treedata.NumBranchAzi;QSM(3).treedata.VolBranchZen;QSM(3).treedata.AreBranchZen;QSM(3).treedata.LenBranchZen;QSM(3).treedata.NumBranchZen};
B=table(TRAIT_LateralRoot_DISTRIBUTION, LateralRoot_CLASS3);
%writetable(B,filename,'Sheet','LateralRootDistribution', 'WriteMode','append');
TRAIT_LateralRoot_DISTRIBUTION={'Aprox#4_LateralRootVolumePerDiameterDistribution';'Aprox#4_LateralRootAreaPerDiameterDistribution';'Aprox#4_LateralRootLenghtPerDiameterDistribution';'Aprox#4_LateralRootNumberPerDiameterDistribution';'Aprox#4_LateralRootVolumePerHeightDistribution';'Aprox#4_LateralRootAreaPerHeightDistribution';'Aprox#4_LateralRootLenghtPerHeightDistribution';'Aprox#4_LateralRootNumberPerHeightDistribution';'Aprox#4_LateralRootVolumePerAngleDistribution';'Aprox#4_LateralRootAreaPerAngleDistribution';'Aprox#4_LateralRootLenghtPerAngleDistribution';'Aprox#4_LateralRootNumberPerAngleDistribution';'Aprox#4_LateralRootVolumePerAzimuthDistribution';'Aprox#4_LateralRootAreaPerAzimuthDistribution';'Aprox#4_LateralRootLenghtPerAzimuthDistribution';'Aprox#4_LateralRootNumberPerAzimuthDistribution';'Aprox#4_LateralRootVolumePerZenithDistribution';'Aprox#4_LateralRootAreaPerZenithDistribution';'Aprox#4_LateralRootLenghtPerZenithDistribution';'Aprox#4_LateralRootNumberPerZenithDistribution'};
LateralRoot_CLASS4={QSM(4).treedata.VolBranchDia;QSM(4).treedata.AreBranchDia;QSM(4).treedata.LenBranchDia;QSM(4).treedata.NumBranchDia;QSM(4).treedata.VolBranchHei;QSM(4).treedata.AreBranchHei;QSM(4).treedata.LenBranchHei;QSM(4).treedata.NumBranchHei;QSM(4).treedata.VolBranchAng;QSM(4).treedata.AreBranchAng;QSM(4).treedata.LenBranchAng;QSM(4).treedata.NumBranchAng;QSM(4).treedata.VolBranchAzi;QSM(4).treedata.AreBranchAzi;QSM(4).treedata.LenBranchAzi;QSM(4).treedata.NumBranchAzi;QSM(4).treedata.VolBranchZen;QSM(4).treedata.AreBranchZen;QSM(4).treedata.LenBranchZen;QSM(4).treedata.NumBranchZen};
B=table(TRAIT_LateralRoot_DISTRIBUTION, LateralRoot_CLASS4);
%writetable(B,filename,'Sheet','LateralRootDistribution', 'WriteMode','append');
TRAIT_LateralRoot_DISTRIBUTION={'Aprox#5_LateralRootVolumePerDiameterDistribution';'Aprox#5_LateralRootAreaPerDiameterDistribution';'Aprox#5_LateralRootLenghtPerDiameterDistribution';'Aprox#5_LateralRootNumberPerDiameterDistribution';'Aprox#5_LateralRootVolumePerHeightDistribution';'Aprox#5_LateralRootAreaPerHeightDistribution';'Aprox#5_LateralRootLenghtPerHeightDistribution';'Aprox#5_LateralRootNumberPerHeightDistribution';'Aprox#5_LateralRootVolumePerAngleDistribution';'Aprox#5_LateralRootAreaPerAngleDistribution';'Aprox#5_LateralRootLenghtPerAngleDistribution';'Aprox#5_LateralRootNumberPerAngleDistribution';'Aprox#5_LateralRootVolumePerAzimuthDistribution';'Aprox#5_LateralRootAreaPerAzimuthDistribution';'Aprox#5_LateralRootLenghtPerAzimuthDistribution';'Aprox#5_LateralRootNumberPerAzimuthDistribution';'Aprox#5_LateralRootVolumePerZenithDistribution';'Aprox#5_LateralRootAreaPerZenithDistribution';'Aprox#5_LateralRootLenghtPerZenithDistribution';'Aprox#5_LateralRootNumberPerZenithDistribution'};
LateralRoot_CLASS5={QSM(5).treedata.VolBranchDia;QSM(5).treedata.AreBranchDia;QSM(5).treedata.LenBranchDia;QSM(5).treedata.NumBranchDia;QSM(5).treedata.VolBranchHei;QSM(5).treedata.AreBranchHei;QSM(5).treedata.LenBranchHei;QSM(5).treedata.NumBranchHei;QSM(5).treedata.VolBranchAng;QSM(5).treedata.AreBranchAng;QSM(5).treedata.LenBranchAng;QSM(5).treedata.NumBranchAng;QSM(5).treedata.VolBranchAzi;QSM(5).treedata.AreBranchAzi;QSM(5).treedata.LenBranchAzi;QSM(5).treedata.NumBranchAzi;QSM(5).treedata.VolBranchZen;QSM(5).treedata.AreBranchZen;QSM(5).treedata.LenBranchZen;QSM(5).treedata.NumBranchZen};
B=table(TRAIT_LateralRoot_DISTRIBUTION, LateralRoot_CLASS5);
%writetable(B,filename,'Sheet','LateralRootDistribution', 'WriteMode','append');
TRAIT_LateralRoot_DISTRIBUTION={'Aprox#6_LateralRootVolumePerDiameterDistribution';'Aprox#6_LateralRootAreaPerDiameterDistribution';'Aprox#6_LateralRootLenghtPerDiameterDistribution';'Aprox#6_LateralRootNumberPerDiameterDistribution';'Aprox#6_LateralRootVolumePerHeightDistribution';'Aprox#6_LateralRootAreaPerHeightDistribution';'Aprox#6_LateralRootLenghtPerHeightDistribution';'Aprox#6_LateralRootNumberPerHeightDistribution';'Aprox#6_LateralRootVolumePerAngleDistribution';'Aprox#6_LateralRootAreaPerAngleDistribution';'Aprox#6_LateralRootLenghtPerAngleDistribution';'Aprox#6_LateralRootNumberPerAngleDistribution';'Aprox#6_LateralRootVolumePerAzimuthDistribution';'Aprox#6_LateralRootAreaPerAzimuthDistribution';'Aprox#6_LateralRootLenghtPerAzimuthDistribution';'Aprox#6_LateralRootNumberPerAzimuthDistribution';'Aprox#6_LateralRootVolumePerZenithDistribution';'Aprox#6_LateralRootAreaPerZenithDistribution';'Aprox#6_LateralRootLenghtPerZenithDistribution';'Aprox#6_LateralRootNumberPerZenithDistribution'};
LateralRoot_CLASS6={QSM(6).treedata.VolBranchDia;QSM(6).treedata.AreBranchDia;QSM(6).treedata.LenBranchDia;QSM(6).treedata.NumBranchDia;QSM(6).treedata.VolBranchHei;QSM(6).treedata.AreBranchHei;QSM(6).treedata.LenBranchHei;QSM(6).treedata.NumBranchHei;QSM(6).treedata.VolBranchAng;QSM(6).treedata.AreBranchAng;QSM(6).treedata.LenBranchAng;QSM(6).treedata.NumBranchAng;QSM(6).treedata.VolBranchAzi;QSM(6).treedata.AreBranchAzi;QSM(6).treedata.LenBranchAzi;QSM(6).treedata.NumBranchAzi;QSM(6).treedata.VolBranchZen;QSM(6).treedata.AreBranchZen;QSM(6).treedata.LenBranchZen;QSM(6).treedata.NumBranchZen};
B=table(TRAIT_LateralRoot_DISTRIBUTION, LateralRoot_CLASS6);
%writetable(B,filename,'Sheet','LateralRootDistribution', 'WriteMode','append');
TRAIT_LateralRoot_DISTRIBUTION={'Aprox#7_LateralRootVolumePerDiameterDistribution';'Aprox#7_LateralRootAreaPerDiameterDistribution';'Aprox#7_LateralRootLenghtPerDiameterDistribution';'Aprox#7_LateralRootNumberPerDiameterDistribution';'Aprox#7_LateralRootVolumePerHeightDistribution';'Aprox#7_LateralRootAreaPerHeightDistribution';'Aprox#7_LateralRootLenghtPerHeightDistribution';'Aprox#7_LateralRootNumberPerHeightDistribution';'Aprox#7_LateralRootVolumePerAngleDistribution';'Aprox#7_LateralRootAreaPerAngleDistribution';'Aprox#7_LateralRootLenghtPerAngleDistribution';'Aprox#7_LateralRootNumberPerAngleDistribution';'Aprox#7_LateralRootVolumePerAzimuthDistribution';'Aprox#7_LateralRootAreaPerAzimuthDistribution';'Aprox#7_LateralRootLenghtPerAzimuthDistribution';'Aprox#7_LateralRootNumberPerAzimuthDistribution';'Aprox#7_LateralRootVolumePerZenithDistribution';'Aprox#7_LateralRootAreaPerZenithDistribution';'Aprox#7_LateralRootLenghtPerZenithDistribution';'Aprox#7_LateralRootNumberPerZenithDistribution'};
LateralRoot_CLASS7={QSM(7).treedata.VolBranchDia;QSM(7).treedata.AreBranchDia;QSM(7).treedata.LenBranchDia;QSM(7).treedata.NumBranchDia;QSM(7).treedata.VolBranchHei;QSM(7).treedata.AreBranchHei;QSM(7).treedata.LenBranchHei;QSM(7).treedata.NumBranchHei;QSM(7).treedata.VolBranchAng;QSM(7).treedata.AreBranchAng;QSM(7).treedata.LenBranchAng;QSM(7).treedata.NumBranchAng;QSM(7).treedata.VolBranchAzi;QSM(7).treedata.AreBranchAzi;QSM(7).treedata.LenBranchAzi;QSM(7).treedata.NumBranchAzi;QSM(7).treedata.VolBranchZen;QSM(7).treedata.AreBranchZen;QSM(7).treedata.LenBranchZen;QSM(7).treedata.NumBranchZen};
B=table(TRAIT_LateralRoot_DISTRIBUTION, LateralRoot_CLASS7);
%writetable(B,filename,'Sheet','LateralRootDistribution', 'WriteMode','append');
TRAIT_LateralRoot_DISTRIBUTION={'Aprox#8_LateralRootVolumePerDiameterDistribution';'Aprox#8_LateralRootAreaPerDiameterDistribution';'Aprox#8_LateralRootLenghtPerDiameterDistribution';'Aprox#8_LateralRootNumberPerDiameterDistribution';'Aprox#8_LateralRootVolumePerHeightDistribution';'Aprox#8_LateralRootAreaPerHeightDistribution';'Aprox#8_LateralRootLenghtPerHeightDistribution';'Aprox#8_LateralRootNumberPerHeightDistribution';'Aprox#8_LateralRootVolumePerAngleDistribution';'Aprox#8_LateralRootAreaPerAngleDistribution';'Aprox#8_LateralRootLenghtPerAngleDistribution';'Aprox#8_LateralRootNumberPerAngleDistribution';'Aprox#8_LateralRootVolumePerAzimuthDistribution';'Aprox#8_LateralRootAreaPerAzimuthDistribution';'Aprox#8_LateralRootLenghtPerAzimuthDistribution';'Aprox#8_LateralRootNumberPerAzimuthDistribution';'Aprox#8_LateralRootVolumePerZenithDistribution';'Aprox#8_LateralRootAreaPerZenithDistribution';'Aprox#8_LateralRootLenghtPerZenithDistribution';'Aprox#8_LateralRootNumberPerZenithDistribution'};
LateralRoot_CLASS8={QSM(8).treedata.VolBranchDia;QSM(8).treedata.AreBranchDia;QSM(8).treedata.LenBranchDia;QSM(8).treedata.NumBranchDia;QSM(8).treedata.VolBranchHei;QSM(8).treedata.AreBranchHei;QSM(8).treedata.LenBranchHei;QSM(8).treedata.NumBranchHei;QSM(8).treedata.VolBranchAng;QSM(8).treedata.AreBranchAng;QSM(8).treedata.LenBranchAng;QSM(8).treedata.NumBranchAng;QSM(8).treedata.VolBranchAzi;QSM(8).treedata.AreBranchAzi;QSM(8).treedata.LenBranchAzi;QSM(8).treedata.NumBranchAzi;QSM(8).treedata.VolBranchZen;QSM(8).treedata.AreBranchZen;QSM(8).treedata.LenBranchZen;QSM(8).treedata.NumBranchZen};
B=table(TRAIT_LateralRoot_DISTRIBUTION, LateralRoot_CLASS8);
%writetable(B,filename,'Sheet','LateralRootDistribution', 'WriteMode','append');
%CHOOSE 1
TRAIT_LateralRoot_DISTRIBUTION={'LateralRootVolumePerDiameterDistribution';'LateralRootAreaPerDiameterDistribution';'LateralRootLenghtPerDiameterDistribution';'LateralRootNumberPerDiameterDistribution';'LateralRootVolumePerHeightDistriution';'LateralRootAreaPerHeightDistribution';'LateralRootLenghtPerHeightDistribution';'LateralRootNumberPerHeightDistribution';'LateralRootVolumePerAngleDistribution';'LateralRootAreaPerAngleDistribution';'LateralRootLenghtPerAngleDistribution';'LateralRootNumberPerAngleDistribution';'LateralRootVolumePerAzimuthDistribution';'LateralRootAreaPerAzimuthDistribution';'LateralRootLenghtPerAzimuthDistribution';'LateralRootNumberPerAzimuthDistribution';'LateralRootVolumePerZenithDistribution';'LateralRootAreaPerZenithDistribution';'LateralRootLenghtPerZenithDistribution';'LateralRootNumberPerZenithDistribution'};
if position==1
LateralRoot_CLASS=LateralRoot_CLASS1;
end
if position==2
LateralRoot_CLASS=LateralRoot_CLASS2;
end
if position==3
LateralRoot_CLASS=LateralRoot_CLASS3;
end
if position==4
LateralRoot_CLASS=LateralRoot_CLASS4;
end
if position==5
LateralRoot_CLASS=LateralRoot_CLASS5;
end
if position==6
LateralRoot_CLASS=LateralRoot_CLASS6;
end
if position==7
LateralRoot_CLASS=LateralRoot_CLASS7;
end
if position==8
LateralRoot_CLASS=LateralRoot_CLASS8;
end
B2=table(TRAIT_LateralRoot_DISTRIBUTION, LateralRoot_CLASS);
writetable(B2,filename2,'Sheet','LateralRootDistribution');

%DELETE VARIABLES
clear Aprox_1;
clear Aprox_2;
clear Aprox_3;
clear Aprox_4;
clear Aprox_5;
clear Aprox_6;
clear Aprox_7;
clear Aprox_8;
clear Value;
clear Aprox1;
clear Aprox2;
clear Aprox3;
clear Aprox4;
clear Aprox5;
clear Aprox6;
clear Aprox7;
clear Aprox8;
clear Order;
clear B;
clear B2;
clear C;
clear C2;
clear E;
clear E2;
clear B;
clear S;
clear S2;
clear T;
clear T2;
clear Section;
clear Section1;
clear Section2;
clear Section3;
clear Section4;
clear Section5;
clear Section6;
clear Section7;
clear Section8;
clear Section;
clear STEM_TAPER1;
clear STEM_TAPER2;
clear STEM_TAPER3;
clear STEM_TAPER4;
clear STEM_TAPER5;
clear STEM_TAPER6;
clear STEM_TAPER7;
clear STEM_TAPER8;
clear STEM_TAPER;
clear LateralRoot_CLASS;
clear LateralRoot_CLASS1;
clear LateralRoot_CLASS2;
clear LateralRoot_CLASS3;
clear LateralRoot_CLASS4;
clear LateralRoot_CLASS5;
clear LateralRoot_CLASS6;
clear LateralRoot_CLASS7;
clear LateralRoot_CLASS8;
clear CLASS;
clear CLASS1;
clear CLASS2;
clear CLASS3;
clear CLASS4;
clear CLASS5;
clear CLASS6;
clear CLASS7;
clear CLASS8;
clear Direction;
clear Direction18;
clear Direction1;
clear Direction2;
clear Direction3;
clear Direction4;
clear Direction5;
clear Direction6;
clear Direction7;
clear Direction8;
clear ext;
clear ext1;
clear filename;
clear filename2;
clear filesample;
clear Mesh;
clear PC;
clear PCscal;
clear PCscal_up;
clear PCscal_down;
clear ORDER_TRAITS;
clear SPREAD;
clear SPREAD1;
clear TRAIT_LateralRoot_DISTRIBUTION;
clear TRAIT_CYLINDER_DISTRIBUTION;
clear TRAIT_PER_LateralRoot_ORDER;
clear TRAITS;
clear factor;
clear prompt;
clear root_sample;
clear m;
clear mas_cercano;
clear minimo;
clear MX;
clear position;
clear view;

fin=1
%MAģ�ͣ�
clear all
%��ģ
Y=iddata(y);        %yΪʱ������
figure(1);
autocorr(y);
n=8;                %n��MAģ�͵Ľ״�
m=armax(Y,'nc',n)   %n��MA�Ľ״�
%Ԥ��
S=5;                %S��Ԥ�ⲽ��
ff=[y;zeros(S,1)];
p=iddata(ff);
P=predict(m,p,S);   %ͨ��ģ�ͽ���Ԥ��
G=get(P);
PF=G.OutputData{1,1}(length(y)+1:length(y)+S,1)    %Ԥ��ֵ
%ARMAģ�ͣ�
clear all
%��ģ
Y=iddata(y);         %yΪʱ������
%������Ժͻ������
figure(1);
autocorr(y);
figure(2);
parcorr(y);
%na��nc��ARMAģ�͵Ľ״�
na=2;               
nc=8;
m=armax(Y,[na nc])  %na��nc��ģ�ͽ״�
%Ԥ��
S=5;                %S��Ԥ�ⲽ��
ff=[y;zeros(S,1)];
p=iddata(ff);
P=predict(m,p,S);   %ͨ��ģ�ͽ���Ԥ��
G=get(P);
PF=G.OutputData{1,1}(length(y)+1:length(y)+S,1)   %Ԥ��ֵ
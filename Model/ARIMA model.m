%ARIMAģ�ͣ�
clear all
%��ģ
Y=diff(y);                %��ּ���
Z=iddata(Y);
% ������Ժͻ������
figure(1);
autocorr(Y);
figure(2);
parcorr(Y);
%p��q��ARMAģ�͵Ľ״�
p=1;
q=8;
m=armax(Z,[p q])
%Ԥ��
S=5;                      %S��Ԥ�ⲽ��
ff=[Y;zeros(S,1)];
p=iddata(ff);
P=predict(m,p,S);         %ͨ��ģ�ͽ���Ԥ��
G=get(P);
PD=G.OutputData{1,1}(length(Y)+1:length(Y)+S,1);
D=[Y;PD];
X_D=cumsum([y(1);D]);
PF=X_D(length(y)+1:end)   %Ԥ��ֵ
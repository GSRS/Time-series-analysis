%ARģ��:
clear all
%��ģ
Y=iddata(y);         %yΪʱ������
figure(1);
parcorr(y);
n=2;                 %n��ARģ�͵Ľ״�
m=ar(Y,n,'ls')       %n��AR�Ľ״Σ���ls���ǲ������Ʒ�����Ϊ��С���˷���
%Ԥ��
S=5;                 %S��Ԥ�ⲽ��
ff=[y;zeros(S,1)];    
p=iddata(ff);
P=predict(m,p,S);    %ͨ��ģ�ͽ���Ԥ��
G=get(P);
PF=G.OutputData{1,1}(length(y)+1:length(y)+S,1)     %Ԥ��ֵ
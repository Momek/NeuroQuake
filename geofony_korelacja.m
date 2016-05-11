% korelacje
close all;
clear all;

load('Test4.mat');
ox4=ox; oy4=oy; oz4=oz;
format long;
dlmwrite('ox4.txt', ox4, 'precision', '%1.15f', '-append', 'delimiter', ',');
dlmwrite('oy4.txt', oy4, 'precision', '%1.15f', '-append', 'delimiter', ',');
dlmwrite('oz4.txt', oz4, 'precision', '%1.15f', '-append', 'delimiter', ',');

ox4=normaL2(ox4);
oy4=normaL2(oy4);
oz4=normaL2(oz4);

srx4=mean(ox4);
sry4=mean(oy4);
srz4=mean(oz4);

ox4=ox4-srx4;
oy4=oy4-sry4;
oz4=oz4-srz4;

load('Test5.mat');
ox5=ox; oy5=oy; oz5=oz;
ox5=normaL2(ox5);
oy5=normaL2(oy5);
oz5=normaL2(oz5);

srx5=mean(ox5);
sry5=mean(oy5);
srz5=mean(oz5);

ox5=ox5-srx5;
oy5=oy5-sry5;
oz5=oz5-srz5;

load('Test6.mat');
ox6=ox; oy6=oy; oz6=oz;
ox6=normaL2(ox6);
oy6=normaL2(oy6);
oz6=normaL2(oz6);

srx6=mean(ox6);
sry6=mean(oy6);
srz6=mean(oz6);

ox6=ox6-srx6;
oy6=oy6-sry6;
oz6=oz6-srz6;


    
load('Test10.mat');
ox10=ox; oy10=oy; oz10=oz;
ox10=normaL2(ox10);
oy10=normaL2(oy10);
oz10=normaL2(oz10);

srx10=mean(ox10);
sry10=mean(oy10);
srz10=mean(oz10);

ox10=ox10-srx10;
oy10=oy10-sry10;
oz10=oz10-srz10;

cor4xy=xcorr(ox4,oy4);
cor4xz=xcorr(ox4,oz4);
cor4yz=xcorr(oy4,oz4);

cor5xy=xcorr(ox5,oy5);
cor5xz=xcorr(ox5,oz5);
cor5yz=xcorr(oy5,oz5);

cor6xy=xcorr(ox6,oy6);
cor6xz=xcorr(ox6,oz6);
cor6yz=xcorr(oy6,oz6);

cor10xy=xcorr(ox10,oy10);
cor10xz=xcorr(ox10,oz10);
cor10yz=xcorr(oy10,oz10);

figure;
subplot(3,1,1);
plot(cor4xy, '-r');
title('korelacja sygna³ów w osi OX z sygna³ami w osi OY');
hold on;
plot(cor10xy);
legend('samochód','kroki');
subplot(3,1,2);
plot(cor4xz, '-r');
title('korelacja sygna³ów w osi OX z sygna³ami w osi OZ');
hold on;
plot(cor10xz);
subplot(3,1,3);
plot(cor4yz, '-r');
title('korelacja sygna³ów w osi OY z sygna³ami w osi OZ');
hold on;
plot(cor10yz);


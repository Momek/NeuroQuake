%program do testowania sygna³ów z geofonów

close all;
clear all;

load('Test4.mat');
ox4=ox;
oy4=oy;
oz4=oz;
load('Test10.mat');
ox10=ox;
oy10=oy;
oz10=oz;


ts=1/2000;
fs=2000;
%t=[0:1/fs:length(ox48)/fs-1];
t=(0:1:length(ox10)-1);
tx=t/2000;


% figure(1);
% subplot(3,1,1)
% plot(tx,ox10, '-r');
% hold on;
% plot(tx,ox4, '-b')
% title('sygnal w osi x')
% legend('tupanie z odleglosci 15 m', 'samochod osobowy z odleglosci 15 m');
% % plot(ox5, '-r')
% % hold on;
% % plot(ox6, ':g')
% 
% subplot(3,1,2)
% 
% plot(tx,oy10, '-r');
% hold on;
% plot(tx,oy4, '-b')
% title('sygnal w osi y');
% legend('tupanie z odleglosci 15 m', 'samochod osobowy z odleglosci 15 m');
% % plot(oy5, '-r')
% % hold on;
% % plot(oy6, ':g')
% 
% subplot(3,1,3)
% plot(tx,oz10, '-r');
% hold on;
% plot(tx,oz4, '-b')
% title('sygnal w osi z');
% legend('tupanie z odleglosci 15 m', 'samochod osobowy z odleglosci 15 m');
% 
% figure(2)
% spectrogram(ox4,hann(128));
% 
% figure(3)
% spectrogram(oy4,hann(128));
% 
% figure(4)
% spectrogram(oz4, hann(128));
% 
figure;
cor4xy=xcorr(ox4,oy4);
cor4xz=xcorr(ox4,oz4);
cor4yz=xcorr(oy4,oz4);

cor10xy=xcorr(ox10,oy10);
cor10xz=xcorr(ox10,oz10);
cor10yz=xcorr(oy10,oz10);
subplot(3,1,1);

subplot(3,1,1);
plot(cor10xy, '-r');
hold on;
plot(cor4xy);
subplot(3,1,2);
plot(cor10xz, '-r');
hold on;
plot(cor4xz);
subplot(3,1,3);
plot(cor10yz, '-r');
hold on;
plot(cor4yz);

% 
% 
% % figure(4);
% % widmo=abs(fft(ox));
% % max(widmo)
% % plot(widmo);
% % % odwrotna=1./widmo;
% % figure(5);
% % plot(odwrotna);
% 
% 
% % 
% % plot(oz48, '-r');
% % plot(oz5, '-r')
% % hold on;
% % plot(oz6, ':g')

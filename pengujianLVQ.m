clc;
close all;
clear;
%% PEMBENTUKAN DATA LATIH
data = xlsread('data_iris.xlsx', 'uji');
data_uji = data(1:15,:);

%data uji
input_uji = data_uji(:,2:5)';
target_uji = data_uji(:,1)';

%% PROSES PENGUJIAN
load net_keluaran
hasil_uji = round(sim(net_keluaran,input_uji));
target_uji_vektor = vec2ind(hasil_uji);
hasil = [target_uji_vektor;target_uji];

%persentase akurasi pengujian
error = 0;
true = 0;
for i = 1:length(target_uji_vektor)
    if hasil(2,i)==hasil(1,i)
       true = true+1;
    end
end
true = true
error = length(target_uji_vektor)-true
persentase_akurasi = (true/length(target_uji_vektor))*100
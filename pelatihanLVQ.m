clc;
close all;
clear;
%% PEMBENTUKAN DATA LATIH
data = xlsread('data_iris.xlsx', 'latih');
data_latih = data(1:30,:);

%data latih
input_latih = data_latih(:,2:5)';
target_latih = data_latih(:,1)'; 
target_latih_vektor = ind2vec(target_latih);

%% MEMBUAT JARINGAN LVQ
net = lvqnet(50, 0.01, 'learnlv1');
net.trainParam.epochs = 500;

%proses training
net_keluaran = train(net, input_latih, target_latih_vektor);
view(net)
save net_keluaran net_keluaran

%hasil training
hasil_latih = round(sim(net_keluaran, input_latih));
target_latih_vektor = vec2ind(hasil_latih);
hasil = [target_latih_vektor;target_latih];

%% PERSENTASE AKURASI
error = 0;
true = 0;
for i = 1:length(target_latih_vektor)
    if hasil(2,i)==hasil(1,i)
       true = true+1;
    end
end
true = true
error = length(target_latih_vektor)-true
persentase_akurasi = (true/length(target_latih_vektor))*100

% DIP for 3D denoising, created by Omar M. Saad.
% Preparing the 3D patches
clc;clear;close all

% Reading Clean Data
filename = 'syn3d_30_c.bin';
fid = fopen(filename,'r');
data0 = fread(fid,[126,32*32],'float');
d = reshape(data0,[126,32,32]);

% Reading Noisy Data
filenamen = 'syn3d_30_n.bin';
fidn = fopen(filenamen,'r');
data0n = fread(fidn,[126,32*32],'float');
dn = reshape(data0n,[126,32,32]);
yc_snr(d,dn,2)

% Extracting Patches
w1=15;
w2=15;
w3=15;
s1z=1;
s2z=1;
s3z=1;
X = yc_patch3d(dn,1,w1,w2,w3,s1z,s2z,s3z);
save Syn_Example X




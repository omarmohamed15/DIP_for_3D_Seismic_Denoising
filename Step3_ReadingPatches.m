% DIP for 3D denoising, created by Omar M. Saad.
% Reading the Output patches
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

% Reading Output Patches
load Syn_Example_outpatch.mat
w1=15;
w2=15;
w3=15;
s1z=1;
s2z=1;
s3z=1;
[n1,n2,n3] = size(dn);
out1=yc_patch3d_inv(out',1,n1,n2,n3,w1,w2,w3,s1z,s2z,s3z);
yc_snr(d,out1,2)

% Writing binary files for the next step.
fid = fopen('syn3d_30_out.bin','w');
fwrite(fid,out1,'float');
fclose(fid);

fid = fopen('syn3d_30_noise.bin','w');
fwrite(fid,dn-out1,'float');
fclose(fid);



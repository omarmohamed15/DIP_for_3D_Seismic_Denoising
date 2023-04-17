# Self-attention deep image prior network for unsupervised 3-D seismic data enhancement


We develop a deep learning framework based on deep image prior (DIP) and squeeze-and-excitation (SE) networks for 3D seismic data enhancement. Firstly, the 3D noisy data is divided into several overlapped patches. Secondly, the DIP network has a U-NET architecture, where the input patches are encoded to extract the significant latent features, while the decoder tries to reconstruct the input patches using these extracted features. Besides, the SE network is used to scale the extracted features from the encoder and decoder. Thirdly, the SE output of the encoder is concatenated with the SE output of the decoder to obtain high-order features and guide the network to extract the most significant information related to the seismic signals and discard the others. Finally, the 3D seismic data are reconstructed using the output patches obtained by the DIP network. The proposed algorithm is an iterative and unsupervised approach, which does not require labeled data.

Run Step1 to create the patches.
Run Step2 to denoise the 3D noisy data.
Run Step3 to read the output patches and reconstruct the data.
Run SConstruct using the command "scons view" to plot the results.


## Reference

Saad, Omar M., Yapo Abolé Serge Innocent Oboué, Min Bai, Lotfy Samy, Liuqing Yang, and Yangkang Chen. "Self-attention deep image prior network for unsupervised 3-D seismic data enhancement." IEEE Transactions on Geoscience and Remote Sensing 60 (2021): 1-14.

BibTeX:

  @article{saad2021self,
    title={Self-attention deep image prior network for unsupervised 3-D seismic data enhancement},
    author={Saad, Omar M and Obou{\'e}, Yapo Abol{\'e} Serge Innocent and Bai, Min and Samy, Lotfy and Yang, Liuqing and Chen, Yangkang},
    journal={IEEE Transactions on Geoscience and Remote Sensing},
    volume={60},
    pages={1--14},
    year={2021},
    publisher={IEEE}
  }
-----------

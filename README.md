# 4DRoot
A spatial–temporal root architectural modeling method based on 4D data from X-ray Computed Tomography (CT) by cylindrical fitting

INSTALL FROM MATLAB:

•	COMPUTER VISION TOOLBOX 

•	PARTIAL DIFFERENTIAL EQUATION 

•	STATISTICS AND MACHINE LEARNING TOOLBOX 

INSTRUCTIONS: CODE FOR MODELING THE ROOTS
1.	Download 4DRoot
2.	Start MATLAB 2017 or newer and set the main path to the root folder, where rootQSM.m is located (from 4DRoot).

![imagen](https://user-images.githubusercontent.com/64793162/159256447-29a56d1f-1266-492a-b160-521195dfe1d9.png)

3.	Use Set Path -> Add with Subfolders -> Open -> Save -> Close to add the subfolders, where all  the code of the software is, to the paths of MATLAB.

![imagen](https://user-images.githubusercontent.com/64793162/159256521-b83f13ae-4a56-44e0-9c9a-e9d78f8c8488.png)

4.	Run rootQSM.m: 
4.1. Inputs: 3D scan of the root in *stl format, factor scale to reconstruct the cylindrical fitting (0.01 by default) and desire to view the 3Dscan.

![imagen](https://user-images.githubusercontent.com/64793162/159256583-b1fdd97d-aa11-4a53-9c86-95bf852c6730.png)

4.2. Visualization of the 3D scan as an option. Visualization tools are included.

![imagen](https://user-images.githubusercontent.com/64793162/159256678-6c428e3d-adb4-436a-9596-2550955d7cc8.png)

After the visualization, the process is paused. To continue, press any key.

4.3. Numerical and graphic results of each approximation of the cylindrical model (upside down) when 3D Root is running.

![imagen](https://user-images.githubusercontent.com/64793162/159256733-d882b6c0-b825-41f5-bdf5-33c8b61d61ae.png)

4.4. Output: Phenotypic root traits and their distribution are extracted to an excel file with several sheets. 

The units of the traits are:

	[L] as length and height: [ud]  from the scan / scale factor
  
	[L2] as area: [ud^2] from the scan / scale factor
  
	[L3] as volume: [ud^3] from the scan / scale factor * 10^(-3)
  


![imagen](https://user-images.githubusercontent.com/64793162/159256801-c8b5eb02-a7fd-448a-b350-24ba7542c15f.png)

*Noise removal: noise from the segmentation between soil and root can be removed by 4DRoot by choosing an appropriated scale factor (left: 3D scan from a root, right: QSM from the root).

![imagen](https://user-images.githubusercontent.com/64793162/159258390-d1000307-bca7-498c-92ed-d724b7880a65.png)

**In the 'samples&results' folder, there are 3 root samples to model with theirs 3 corresponding outputs.

CITE:
1.	Raumonen P, Kaasalainen M, Åkerblom M, Kaasalainen S, Kaartinen H, Vastaranta M, et al. Fast automatic precision tree models from terrestrial laser scanner data. Remote Sens. 2013;5(2):491–520.
2.	Herrero-Huerta, M., Meline, V., Iyer-Pascuzzi, A. S., Souza, A. M., Tuinstra, M. R., & Yang, Y. (2021). 4D Structural root architecture modeling from digital twins by X-Ray Computed Tomography. Plant Methods, 17(1), 1-12.

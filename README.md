# CETR-tribometer

This project aims to merge the test data from CETR UMT-2 tribometer equipped with a linear wear module. UMT-2 is an old tribology test device manufactured by CETR, without further support and update, since Bruker's acquisition of CETR in 2011.  With the linear wear module, the wear testing data generated in multiple files, divided by switching wear direction, instead of entire reciprocating data file. To address this, a MATLAB script is provided to seamlessly merge all the linear wear data files into a unified dataset.

<div align="center">
  <img src="https://github.com/okilitive/CETR-tribometer/blob/main/figure/CETR%20tribometer.jpg" alt="CETR Tribometer" width="150" style="margin-right: 20px; vertical-align: middle;"/>
  <img src="https://github.com/okilitive/CETR-tribometer/blob/main/figure/linear%20wear%20module.jpg" alt="Linear Wear Module" width="350" style="vertical-align: middle; margin-top: 100px; margin-bottom: 100px;"/>
  <p>CETR Tribometer (left), and Linear Wear Module (right)</p>
</div>

# data

In this folder, some demo testing data is provided. The data was obtained in NUS lab, which grants NUS the proprietary rights to the files. Furthermore, as the data was acquired during the commissioning of the CETR tribometer, it is not to be utilized for the purpose of explaining any phenomena.


# result

This folder is the default folder to save the result data.

# figure

Images of CETR Tribometer and Linear Wear Module are placed here.

# smooth.m

A smooth function is provided. If you need to smooth the data curve, please integrate this function into tribo.m. Based on our internal testing, this smooth function demonstrates equivalent performance to the smooth function in CETR official software.

# tribo.m

The main programme is used to merge all linear wear data files into a unified dataset. This script has been developed using MATLAB 2022.<br>
Prior to execution, please replace the default data and result paths as your own paths and adjust the compensation value based your sampling rate (default sampling rate: 50 Hz).

# At last

This is a small part from my M.Eng studies at the National University of Singapore (NUS). Although this data processing script was not included in my final thesis (instead, another rotating wear module was adopted), yet it played a special role in the forging of my path. I encountered this machine in the Materials Lab (FoE, NUS), and thus began my journey. Over time, I restored the computer, lower driver, force sensor, and the carriage-the components of CETR tribometer-one by one. And lo, after nearly a decade of dormancy, the machine did once again spring to life.<br>
This I record for my own remembrance and for those who may follow in my footsteps, though they be but imagined.


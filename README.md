Matlab library for controlling Apex AP1000

1.Download the package matlab_AP1000

2.Unzip it and move it into the folder of your Matlab project.



Using the package

Class AP1000Updated is the superclass and will need to be run first to connect to the AP1000.
While running the matlab drivers please assign the corresponding slot numbers to the modules as those assigned on the AP1000.

  1.Class AP1000Updated methods and properties
        AP1000Updated() opens the connection with the mainframe.
        Please enter the IP adress of your device in the line obj.Session = tcpip('192.168.1.49',5900); of the function obj = AP1000Updated(IPaddress,PortNumber)
        
  2.Class polarimeterUpdated 
        This class is used for controlling the polarimeter module of AP1000.
        
  3.Class EDFAUpdated 
        This class is used for controlling the EDFA module of AP1000.     
        
  4.Class filterUpdated
        This class is used for controlling the filter module of AP1000.
        
        
5.Class PowermeterUpdated
        This class is used for controlling the powermeter module of AP1000. 
        
6.Class TLSUpdated
        This class is used for controlling the TLS module of AP1000.      
 
7.Class AttenuatorUpdated
        This class is used for controlling the Attenuator module of AP1000.
        
8.Class DFBUpdated
        This class is used for controlling the DFB module of AP1000.
        
Note- not all functions have been implemented in this library. Please use the AP1000 communications interface manual and the functions already implemented here as examples for writing other functions.        

use " format longeng " inorder to get data in the scientific notation where necessary

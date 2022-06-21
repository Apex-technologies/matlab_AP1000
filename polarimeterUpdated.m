%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------------------------------------------------------%
  %author rujuta bodas, R&D engineer
  %Companny Apex Technologies
  
%---------------------------------------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
classdef polarimeterUpdated < AP1000Updated
    
    properties
        Wavelength
        Power  
    end 
    
    methods
    
        function obj2 = polarimetrUpdated(SlotNumber)
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            obj2.GetPowerdBm;
            obj2.GetPowerMW;
            obj2.GetWavelength;
            obj2.SetWavelength;
            obj2.GetAcquitionTime;
            obj2.SetAcquitionTime;
            obj2.GetStateOfPolarization;
            obj2.GetRawDigitalValues;
            obj2.GetPower;
            obj2.GetEllipticity;
            obj2.GetAzimuth;
        end
        
        function powerdBm=GetPowerdBm(obj2)
            %Optical power in Dbm
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "POL["+str2num(nn)+"]:DBM?";
            fprintf(obj2.Session, Command);
            %obj2.GetPowerdBm = fscanf(obj2.Session,'%f');  
        end
        
        function powermw=GetPowerMW(obj2)
            %Optical power in mW
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "POL["+str2num(nn)+"]:MW?";
            fprintf(obj2.Session, Command);
            %obj2.GetPowerMW = fscanf(obj2.Session,'%f');  
        end
        
        function wavelength=GetWavelength(obj2)
            %Gets the wavelength in nm
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "POL["+str2num(nn)+"]:WL?";
            fprintf(obj2.Session, Command);
            %obj2.GetWavelength = fscanf(obj2.Session,'%f');  
        end
        
        function targetwavelength=SetWavelength(obj2)
            %sets wavelength in nm
             SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            wave=input('enter the desired wavelength','s');
            wavelength=wave;
            Command = "POL["+str2num(nn)+"]:WL"+num2str(wavelength);
            fprintf(obj2.Session, Command);
        end    
        
        function acqtime=GetAcquitionTime(obj2)
            %gets acquisition time in ms
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "POL["+str2num(nn)+"]:ACQTIME?";
            fprintf(obj2.Session, Command);
            %obj2.GetAcquitionTime = fscanf(obj2.Session,'%f');  
        end
        
        function targetacqtime=SetAcquitionTime(obj2)
            %sets acquition time in ms
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            acq=input('enter the desired acquisition time','s');
            acqtime=acq;
            Command = "POL["+str2num(nn)+"]:ACQTIME"+num2str(acqtime);
            fprintf(obj2.Session, Command);
        end
        
        function SOP=GetStateOfPolarization(obj2)
            %gets states of polarization
            %S0
            %S1
            %S2
            %S3
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "POL["+str2num(nn)+"]:SOP?";
            fprintf(obj2.Session, Command);
            %obj2.GetStateOfPolarization = fscanf(obj2.Session,'%f'); 
        end
        
        function raw=GetRawDigitalValues(obj2)
            %gets the raw digital values
            %raw value of channel 0
            %raw value of channel 1
            %raw value of channel 2
            %raw value of channel 3
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "POL["+str2num(nn)+"]:RAW4?";
            fprintf(obj2.Session, Command);
            %obj2.GetRawDigitalValues = fscanf(obj2.Session,'%f'); 
        end
        
        function power=GetPower(obj2)
            %gets the the power values in dBm of the 4 detectors polarimeter
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "POL["+str2num(nn)+"]:POW4?";
            fprintf(obj2.Session, Command);
            %obj2.GetPower = fscanf(obj2.Session,'%f'); 
        end
        
        function ellipticity=GetEllipticity(obj2)
            %gets the ellipticity of the state of polarization
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "POL["+str2num(nn)+"]:ELLIPTICITY?";
            fprintf(obj2.Session, Command);
            %obj2.GetEllipticity = fscanf(obj2.Session,'%f');
        end
        
        function azimuth=GetAzimuth(obj2)
            %gets the orientation of the state of polarization
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "POL["+str2num(nn)+"]:AZIMUTH?";
            fprintf(obj2.Session, Command);
            %obj2.GetAzimuth = fscanf(obj2.Session,'%f');
        end
    end    
        
end    
  

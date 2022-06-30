classdef filterUpdated < AP1000Updated
    
    properties
        Wavelength
        
    end 
    
    methods
    
        function obj3 = filterUpdated(SlotNumber)
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            obj3.GetMaxFrequency;
            obj3.SetWavelength;
            obj3.GetWavelength;
            obj3.SetFrequency;
            obj3.GetFrequency;
            obj3.GetMinFrequency;
            obj3.GetMinWavelength;
            obj3.GetMaxWavelength;
        end
      
        function wavelength=GetWavelength(obj3)     
            %returns static wavelength in nm
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "FLT["+num2str(nn)+"]:TWL?";
            fprintf(obj3.Session, Command);
            wave = fscanf(obj3.Session);
            fprintf('%s\n',wave);
        end 
        
        function wavelength1=SetWavelength(obj3)
           %sets static wavelength in nm
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            setwavelength=input('enter the desired wavelength','s');
            Command = "FLT["+num2str(nn)+"]:TWL"+num2str(setwavelength);
            fprintf(obj3.Session, Command);
        end
        
        function frequency1=SetFrequency(obj3)
           %sets static FREQUENCY in GHz
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            setfrequency=input('enter the desired frequency','s');
            Command = "FLT["+num2str(nn)+"]:TFR"+num2str(setfrequency);
            fprintf(obj3.Session, Command);
        end
        
        function frequency1=GetFrequency(obj3)     
            %returns static frequency in GHz
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "FLT["+num2str(nn)+"]:TFR?";
            fprintf(obj3.Session, Command);
            freq = fscanf(obj3.Session);
            fprintf('%s\n',freq);
        end
        
          function maxfrequency=GetMaxFrequency(obj3)     
            %returns max frequency of the filter in GHz
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "FLT["+num2str(nn)+"]:FRMAX?";
            fprintf(obj3.Session, Command);
            maxfreq = fscanf(obj3.Session);
            fprintf('%s\n',maxfreq);
          end
        
          function minfrequency=GetMinFrequency(obj3)     
            %returns min frequency of the filter in GHz
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "FLT["+num2str(nn)+"]:FRMIN?";
            fprintf(obj3.Session, Command);
            minfreq = fscanf(obj3.Session);
            fprintf('%s\n',minfreq);
          end
        
          function minwavelength=GetMinWavelength(obj3)     
            %returns min wavelength of the filter in nm
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "FLT["+num2str(nn)+"]:WLMIN?";
            fprintf(obj3.Session, Command);
            minwave = fscanf(obj3.Session);
            fprintf('%s\n',minwave);
          end
        
          function maxwavelength=GetMaxWavelength(obj3)     
            %returns max wavelength of the filter in nm
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "FLT["+num2str(nn)+"]:WLMAX?";
            fprintf(obj3.Session, Command);
            maxwave = fscanf(obj3.Session);
            fprintf('%s\n',maxwave);
          end
    end    
        
end   

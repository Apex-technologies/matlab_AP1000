classdef TLSUpdated < AP1000Updated
    
    properties
        Wavelength
        
    end 
    
    methods
    
        function obj6 = TLSUpdated(SlotNumber)
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            obj6.GetOpticalOutput;
            obj6.SetOpticalOutput;
            obj6.GetWavelength;
            obj6.SetFrequency;
            obj6.GetFrequency;
            obj6.GetMinFrequency;
            obj6.GetMinWavelength;
            obj6.GetMaxWavelength;
            obj6.Setwavelength;
            obj6.RepeatSweep;
            obj6.SingleSweep;
            obj6.SweepMode;
            obj6.StopSweep;
        end
      
        function opticaloutput=GetOpticalOutput(obj6)     
            %Returns the optical output set value in dBm
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "TLS["+num2str(nn)+"]:TPDB?";
            fprintf(obj6.Session, Command);
            wave = fscanf(obj6.Session);
            fprintf('%s\n',wave);
        end 
        
        function opticalout=SetOpticalOutput(obj6)
           %Sets the optical output of the TLS to the specified level.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            opticalout=input('enter the desired optical output','s');
            Command = "TLS["+num2str(nn)+"]:TPDB"+num2str(opticalout);
            fprintf(obj6.Session, Command);
        end
        
        function frequency1=SetFrequency(obj6)
           %Uses the specified frequency.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            setfrequency=input('enter the desired frequency','s');
            Command = "TLS["+num2str(nn)+"]:TFR"+num2str(setfrequency);
            fprintf(obj6.Session, Command);
        end
        
        function frequency1=GetFrequency(obj6)     
            %Returns the current frequency.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "TLS["+num2str(nn)+"]:TFR?";
            fprintf(obj6.Session, Command);
            freq = fscanf(obj6.Session);
            fprintf('%s\n',freq);
        end
        
          function maxfrequency=GetMaxFrequency(obj6)     
            %Returns the maximum optical frequency that you can set
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "TLS["+num2str(nn)+"]:FRMAX?";
            fprintf(obj6.Session, Command);
            maxfreq = fscanf(obj6.Session);
            fprintf('%s\n',maxfreq);
          end
        
          function minfrequency=GetMinFrequency(obj6)     
            %Returns the minimum optical frequency that you can set.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "TLS["+num2str(nn)+"]:FRMIN?";
            fprintf(obj6.Session, Command);
            minfreq = fscanf(obj6.Session);
            fprintf('%s\n',minfreq);
          end
        
          function minwavelength=GetMinWavelength(obj6)     
            %Returns the minimum wavelength that you can set.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "TLS["+num2str(nn)+"]:WLMIN?";
            fprintf(obj6.Session, Command);
            minwave = fscanf(obj6.Session);
            fprintf('%s\n',minwave);
          end
        
          function maxwavelength=GetMaxWavelength(obj6)     
            %Returns the maximum wavelength that you can set.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "TLS["+num2str(nn)+"]:WLMAX?";
            fprintf(obj6.Session, Command);
            maxwave = fscanf(obj6.Session);
            fprintf('%s\n',maxwave);
          end
          
          
        function opticaloutput=GetWavelength(obj6)     
            %Returns The current wavelength.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "TLS["+num2str(nn)+"]:TWL?";
            fprintf(obj6.Session, Command);
            wave = fscanf(obj6.Session);
            fprintf('%s\n',wave);
        end 
        
        function wave=Setwavelength(obj6)
           %Uses the specified frequency
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            wave=input('enter the desired wavelength','s');
            Command = "TLS["+num2str(nn)+"]:TWL"+num2str(wave);
            fprintf(obj6.Session, Command);
        end
        
         function wave=RepeatSweep(obj6)
           %Starts to sweep the repeated wavelength.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "TLS["+num2str(nn)+"]:TRET";
            fprintf(obj6.Session, Command);
         end
        
         function wave=SingleSweep(obj6)
           %Starts a single wavelength sweep..
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "TLS["+num2str(nn)+"]:TSGL";
            fprintf(obj6.Session, Command);
         end
        
          function wave=StopSweep(obj6)
           %Stops wavelength sweep..
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "TLS["+num2str(nn)+"]:TSTO";
            fprintf(obj6.Session, Command);
          end
        
          function mode=SweepMode(obj6)
           %0: Selects the STATIC mode wavelength, 1: Selects the CONTINUOUS SWEEP mode of wavelength, 2: Selects the STEP SWEEP mode of wavelength.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            mode=input('enter the desired mode','s');
            Command = "TLS["+num2str(nn)+"]:TSWM"+num2str(mode);
            fprintf(obj6.Session, Command);
          end        
          
    end    
        
end   

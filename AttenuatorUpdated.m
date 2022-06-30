classdef AttenuatorUpdated < AP1000Updated
    
    properties
        Wavelength
        
    end 
    
    methods
    
        function obj4 = AttenuatorUpdated(SlotNumber)
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            obj4.GetPower;
            obj4.SetPower;
            obj4.SetPowermeterIndex;
            obj4.GetPowermeterIndex;
            obj4.PowerSetActivate;
            obj4.GetPowerSetStatus;
            obj4.GetAttenuation;
            obj4.GetWavelength;
            obj4.Setwavelength;
            obj4.SetAttenuation;
            obj4.GetcurrentAttenuation;
        end
      
        function power=GetPower(obj4)     
            %returns the target value for the power set control (if the option is available)
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "ATT["+num2str(nn)+"]:POW?";
            fprintf(obj4.Session, Command);
            pow = fscanf(obj4.Session);
            fprintf('%s\n',pow);
        end 
        
        function power1=SetPower(obj4)
           %Sets the target value for the power set control (if the option is available)
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            setpower=input('enter the desired wavelength','s');
            Command = "ATT["+num2str(nn)+"]:POW"+num2str(setpower);
            fprintf(obj4.Session, Command);
        end
        
        function PowermeterIndex=SetPowermeterIndex(obj4)
           %Sets the index of the power meter module linked to this module (if the option is available).
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            setindex=input('enter the desired powermeter index','s');
            Command = "ATT["+num2str(nn)+"]:POWIDX"+num2str(setindex);
            fprintf(obj4.Session, Command);
        end
        
        function PowermeterIndex1=GetPowermeterIndex(obj4)     
            %returns the index of the power meter module linked to this module (if the option is available).
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "ATT["+num2str(nn)+"]:POWIDX?";
            fprintf(obj4.Session, Command);
            powermeterIndex = fscanf(obj4.Session);
            fprintf('%s\n',powermeterIndex);
        end
        
          function PowerSetActivate=PowerSetActivate(obj4)
           %urn on=1 or turn off=0 the power set option of the module (if the option is available).
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            activate=input('enter desired status','s');
            Command = "ATT["+num2str(nn)+"]:POWSET"+num2str(activate);
            fprintf(obj4.Session, Command);
        end
        
          function PowerSetStatus=GetPowerSetStatus(obj4)     
            %Returns the Power set activation setting (if the option is available).
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "ATT["+num2str(nn)+"]:POWSET?";
            fprintf(obj4.Session, Command);
            powersetstatus = fscanf(obj4.Session);
            fprintf('%s\n',powersetstatus);
          end
        
          function attenuation=GetAttenuation(obj4)     
            %Returns the optical attenuation of the module to the specified value.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            channel_number=input('enter the channel number','s');
            Command = "ATT["+num2str(nn)+"]:DB["+num2str(channel_number)+"]?";
            fprintf(obj4.Session, Command);
            attenuation1 = fscanf(obj4.Session);
            fprintf('%s\n',attenuation1);
          end
        
          function wavelength=GetWavelength(obj4)     
            %returnseturns the wavelength parameter of the module in nm.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            channel_number=input('enter the channel number','s');
           Command = "ATT["+num2str(nn)+"]:WL["+num2str(channel_number)+"]?";
            fprintf(obj4.Session, Command);
            wave1 = fscanf(obj4.Session);
            fprintf('%s\n',wave1);
          end
          
          function wavelength1=Setwavelength(obj4)
           %Sets the wavelength parameter of the module to the specified value.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            channel_number=input('enter the channel number','s');
            wave=input('enter the desired wavelength','s');
            Command = "ATT["+num2str(nn)+"]:WL"+num2str(channel_number)+num2str(wave);
            fprintf(obj4.Session, Command);
          end
        
          function attenuation1=SetAttenuation(obj4)
           %Sets the optical attenuation of the module to the specified value..
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            channel_number=input('enter the channel number','s');
            Attenuation=input('enter the desired attenuation','s');
            Command = "ATT["+num2str(nn)+"]:WL"+num2str(channel_number)+num2str(Attenuation);
            fprintf(obj4.Session, Command);
        end
        
        function att=GetcurrentAttenuation(obj4)     
            %returnseturns the wavelength parameter of the module in nm.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            channel_number=input('enter the channel number','s');
            Command = "ATT["+num2str(nn)+"]:CURATT["+num2str(channel_number)+"]?";
            fprintf(obj4.Session, Command);
            wave1 = fscanf(obj4.Session);
            fprintf('%s\n',wave1);
          end
    end    
        
end    

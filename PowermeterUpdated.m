classdef PowermeterUpdated < AP1000Updated
    
    properties
        
        
    end 
    
    methods
    
        function obj5 = PowermeterUpdated(SlotNumber)
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            obj5.GetPower;
            obj5.GetPow;
            obj5.Setaverage;
            obj5.Getaverage;
            obj5.GetmaxPow;
            obj5.GetmaxPower;
            obj5.GetminPower;
            obj5.GetminPow;
        end
      
        function power=GetPower(obj5)     
            %Returns the optical power seeing on the specified channel in dBm.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            channel_number=input('enter the channel number','s');
            Command = "POW["+num2str(nn)+"]:DBM["+num2str(channel_number)+"]?";
            fprintf(obj5.Session, Command);
            pow = fscanf(obj5.Session);
            fprintf('%s\n',pow);
        end 
        
        function average=Setaverage(obj5)
           %Sets the averaging time for the module.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            setaverage=input('enter the desired averaging time','s');
            Command = "POW["+num2str(nn)+"]:SETAVERAGE"+num2str(setaverage);
            fprintf(obj5.Session, Command);
        end
        
        function POW=GetPow(obj5)
           %Returns the optical power seeing on the specified channel in mW.
           SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            channel_number=input('enter the channel number','s');
            Command = "POW["+num2str(nn)+"]:MW["+num2str(channel_number)+"]?";
            fprintf(obj5.Session, Command);
            pow1 = fscanf(obj5.Session);
            fprintf('%s\n',pow1);
        end
        
        function average1=Getaverage(obj5)     
            %Returns the averaging time for the module.
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "POW["+num2str(nn)+"]:GETAVERAGE";
            fprintf(obj5.Session, Command);
            powermeterIndex = fscanf(obj5.Session);
            fprintf('%s\n',powermeterIndex);
        end
        
          function POW1=GetmaxPow(obj5)
           %Returns the maximum value of the MIN/MAX mode seeing on the specified channel in mW.
           SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            channel_number=input('enter the channel number','s');
            Command = "POW["+num2str(nn)+"]:MAXMW["+num2str(channel_number)+"]?";
            fprintf(obj5.Session, Command);
            pow2 = fscanf(obj5.Session);
            fprintf('%s\n',pow2);
        end
        
           function POW2=GetmaxPower(obj5)
           %Returns the maximum value of the MIN/MAX mode seeing on the specified channel in dBm.
           SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            channel_number=input('enter the channel number','s');
            Command = "POW["+num2str(nn)+"]:MAXDBM["+num2str(channel_number)+"]?";
            fprintf(obj5.Session, Command);
            pow2 = fscanf(obj5.Session);
            fprintf('%s\n',pow2);
        end
        
          function POW3=GetminPower(obj5)
           %Returns the maximum value of the MIN/MAX mode seeing on the specified channel in dBm.
           SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            channel_number=input('enter the channel number','s');
            Command = "POW["+num2str(nn)+"]:MINDBM["+num2str(channel_number)+"]?";
            fprintf(obj5.Session, Command);
            pow3 = fscanf(obj5.Session);
            fprintf('%s\n',pow3);
        end
        
           function POW1=GetminPow(obj5)
           %Returns the maximum value of the MIN/MAX mode seeing on the specified channel in mW.
           SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            channel_number=input('enter the channel number','s');
            Command = "POW["+num2str(nn)+"]:MINMW["+num2str(channel_number)+"]?";
            fprintf(obj5.Session, Command);
            pow4 = fscanf(obj5.Session);
            fprintf('%s\n',pow4);
           end    
           
    end    
        
end    

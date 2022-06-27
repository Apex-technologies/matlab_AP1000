classdef EDFAUpdated < AP1000Updated
    properties
        Wavelength
        Get_Optical_output_power
        Current
        On_off
        Manual_mode
        Automatic_optical_power
        Optical_mode  
       
    end    
    
    methods
        function obj1 = EDFAUpdated(SlotNumber)
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            obj1.GetOpticalInputPower;
            obj1.GetOpticalOutputPower;
            obj1.SetCurrent;
            obj1.Mode;
            obj1.Manual;
            obj1.Autopower;
            obj1.TurnOn;
            obj1.TurnOff;
            
        end
        
        function opticalinput=GetOpticalInputPower(obj1)     %added output variable to the function definition
            %optical input power is expressed in Dbm
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "AMP["+num2str(nn)+"]:INDB?";
            fprintf(obj1.Session, Command);
            opticalinput = fscanf(obj1.Session);
            fprintf('%s\n',opticalinput);
        end
        
        function opticaloutput=GetOpticalOutputPower(obj1)
            %Optical output power is expressed in Dbm
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "AMP["+num2str(nn)+"]:OTDB?";
            fprintf(obj1.Session, Command);
            opticaloutput = fscanf(obj1.Session);
            fprintf('%s\n',opticaloutput);
        end
        
        function SetCurrent(obj1)
            %Sets the pump current in Amperes
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;   
            setCurrent=input('enter the desired current','s');
            Command = "AMP["+str2num(nn)+"]:PUMP"+num2str(setCurrent);
            fprintf(obj1.Session, Command);
        end
              
        function mode=Mode(obj1)
            %sets the manual mode
            %mode==-1    off
            %mode==0     manual 
            %mode==1     constant_power
            %mode==2     constant_gain
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;         
            Command = "AMP["+str2num(nn)+"]:MODE?";
            fprintf(obj1.Session, Command); 
            mode= fscanf(obj1.Session);
            fprintf('%s\n',mode);   
        end    
        
        function Autopower(obj1)
            %sets the automatic mode and sets the output power in dBm
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber; 
            pow=input('please enter desired power','s');
            desired_power=pow;
            Command = "AMP["+str2num(nn)+"]:AUTOPOWER"+num2str(desired_power);
            fprintf(obj1.Session, Command); 
        end 
        
      
        function TurnOn(obj1)
            %turns on or switches off the amplifier
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;         
            Command = "AMP["+str2num(nn)+"]:L1";
            fprintf(obj1.Session, Command); 
        end 
        
        function TurnOff(obj1)
            %turns on or switches off the amplifier
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber;
            Command = "AMP["+str2num(nn)+"]:L0";
            fprintf(obj1.Session, Command); 
        end
        
               
         function Manual(obj1)
            %sets the automatic mode and sets the output power in dBm
            SlotNumber=input('enter the slot number','s');
            nn=SlotNumber; 
            Command = "AMP["+str2num(nn)+"]:MANUAL";
            fprintf(obj1.Session, Command); 
        end
            
    end    
end    

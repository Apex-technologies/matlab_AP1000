%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%----------------------------------------------------%
% author rujuta bodas, R&D engineer
%company Apex Technologies
%----------------------------------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
classdef AP1000Updated < handle 
    properties
	      %Value {mustBeNumeric}
	      IPaddress;
	      ReadBufferSize  % Default = 4096. The buffer size used for reading responses in methods ReadString, QueryString. 
	      Session % TCP/IP Interface Session 
	              % Use it to acces the full scope of available interfaces,
	              % methods and properties of Class AP1000
          SlotNumber
          SoftwareVersion
          
    end
    
    properties (Constant)
         AP1000_SLOT_MIN = 0
         AP1000_SLOT_MAX = 92
         APXXXX_ERROR_COMMUNICATION = -1
         APXXXX_ERROR_BADCOMMAND = -2
         APXXXX_ERROR_ARGUMENT_TYPE = -11
         APXXXX_ERROR_ARGUMENT_VALUE = -12
         APXXXX_ERROR_BAD_FILENAME = -13
         APXXXX_ERROR_VARIABLE_NOT_DEFINED = -301
         AP1000_ERROR_SLOT_NOT_DEFINED = -151
         AP1000_ERROR_SLOT_NOT_GOOD_TYPE = -152
         AP1000_ERROR_SLOT_TYPE_NOT_DEFINED = -153
         PortNumber = 5900;
         %SlotUsed;
    end    


       methods
	      function obj = AP1000Updated(IPaddress,PortNumber)
	           % Initiates a new TCP/IP connection specified by resourceString IP address and port number. 
             % IPAddress = '192.168.1.52'; 
             obj.Session = tcpip('192.168.1.32',5900);   %please replace the ip address string with the ip address of your apex device in this line
	           
	           % Set properties for reading the data if needed  
	           %set(AP1000_APEX, 'InputBufferSize', 200);  % Specify the size of the input buffer in bytes for reading 
	           obj.Session.InputBufferSize = 3e5;          %  
	           % Specify the waiting time to complete a read or write operation if needed % deafult Timeout = 10 s
	           % AP1000_APEX.Timeout=30;
	           
	           % Open connection to the APEX AP1000. 
	           fopen(obj.Session);
             obj.SlotUsed;
             obj.SlotID;
	       end
	       
	      function IDobj = GetID(obj)
	            % Identify the APEX AP1000
	            fprintf(obj.Session, '*IDN?');   % Sending the command '*IDN?' to APEX AP1000
	            IDobj = fscanf(obj.Session) ;    % Reading the txt data from APEX AP1000
	            fprintf('%s\n', IDobj);    % format as text (default) 
	                                       %IDobj = query(AP1000_APEX, '*IDN?');
	      end
	      
	      function close(obj)
	          %% Disconnect and clean up the server connection. 
	          fclose(obj.Session); 
	          delete(obj.Session); 
	          clear obj.Session;
        end
          
          function SlotUsed(obj,SlotNumber)
              %prompt = "please entre slot number";
              SlotNumber=input('enter the slot number','s');
              nn=SlotNumber;
              %nn=num2str(nn);
              Command= "SLT["+num2str(nn)+"]EMPTY?";
              fprintf(obj.Session, Command); 
          end 
          
          function SlotID(obj,SlotNumber)
              SlotNumber=input('enter the slot number','s');
              nn=SlotNumber;
              Command= "SLT["+num2str(nn)+"]IDN?";
              fprintf(obj.Session, Command); 
          end    
       end    
end      


s = serialport("COM8", 9600); 
configureTerminator(s, "LF");

fileID = fopen('pulse_data.txt', 'w');

% Read and record for 120 seconds
disp("Recording pulse data...");
startTime = tic;
while toc(startTime) < 120
    if s.NumBytesAvailable > 0
        data = readline(s);
        fprintf(fileID, '%s\n', data);
        disp(data);
    end
end


fclose(fileID);
clear s;
disp("Recording complete. Data saved to pulse_data.txt");
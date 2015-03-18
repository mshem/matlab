function [ Y ] = waveform(duration,shape,frequency, volume)
% This function creates a set of data representing a sound wave
% volume should be a % of the max volume. 1 is full volume.
% duration in seconds is the length of the sound. we assume a sample rate
% of 44100
% shape is the type of wave
X=0:1/44100:duration;
 
switch shape
    case 'sin'
        Y=sin(2*pi*frequency*X)*volume;
    case 'square'
        period=(1/frequency);
        time=period*44100;
        %need to make array
        s=0:1:time/2;
        s0=s*0-1;
        s1=s*0+1;
        s=[s0 s1];
        Y=repmat(s,1,floor(frequency*duration))*volume;
    case 'saw'
        period=(1/frequency);
        time=period*44100;
        %need to make array
        s=0:1:time;
        rise=s*(1/time);
        Y=repmat(rise,1,floor(frequency*duration))*volume*2-1;    
    case 'triangle'
        period=(1/frequency);
        time=period*44100;
        %need to make array
        s=0:1:time/2;
        rise=s*(1/time);
        fall=rise(length(rise):-1:1);
        s=[rise fall];
        Y=repmat(s,1,floor(frequency*duration))*volume*4-1;
    otherwise
        Y=zeroes(length(X));    
end
        Y=Y(1:length(X));

    
 %   soundsc(Y,44100)

end


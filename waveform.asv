function [ X Y ] = waveform(duration,shape,frequency, volume)
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
        time=period/(1/44100);
        %need to make array
        s=0:(1/time):(period/2);
        s0=s*0;
        s1=s*0+1;
        s=[s0 s1];
        Y=repmat(s,1,frequency*duration);
    case 'saw'
    case 'triangle'
end

   %     plot(X,Y)

    

end


function [A] = ADSR(attack,decay,sustain,release,duration)
% This function has to create an envelope the length of the waveform
% which is shaped according to the adsr parameters.

% First make the array
% check that the params will fit in the waveform
totalmintime=attack+decay+release;
if totalmintime > duration
    % if the attack, decay, and release together are longer than the wave,
    % shrink them
    attack=(attack/totalmintime)*duration;
    decay=(decay/totalmintime)*duration;
    release=(release/totalmintime)*duration;
    
end

attackArray = (0:(attack*44100))/(attack*44100);
decayArray = ((decay*44100):-1:0)/(decay*44100)*(1-sustain)+sustain;
releaseArray = (((release*44100):-1:0)/(release*44100))*sustain;
sustainArray = ones(1,(duration-totalmintime)*44100)*sustain;

A= [attackArray decayArray sustainArray releaseArray];



end

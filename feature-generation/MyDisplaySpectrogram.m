
function MyDisplaySpectrogram(spec, fs, frameStep)
%Spec - enth�lt die positiven Frequenzen, egal ob komplex oder nur Amplitude
[windowSize,frameCount] = size(spec);
freqs = (0:windowSize)*fs/((windowSize-1)*2);%fs/fftSize=Frequenzunsch�rfe pro fftSample
times = (1:frameCount) * frameStep/fs;%frameStep/fs=Timestep pro frame
magSpec = abs(spec);
imagesc(times, freqs, magSpec);
axis xy




source('timbres/timbre.R')

writeWave(note(data.frame(Amplitude = c(1), Multiplier = c(1))), 'timbres/timbre1.wav')
writeWave(note(data.frame(Amplitude = c(1, 0.5, 0.5), Multiplier = c(1, 2, 3))), 'timbres/timbre2.wav')
writeWave(note(data.frame(Amplitude = c(1, rep(0.01, 9), 0.75, rep(0.01, 9), 0.5), Multiplier = seq(1, 3, by = 0.1))), 'timbres/timbre3.wav')
writeWave(note(data.frame(Amplitude = c(1, 1/3, 1/9, 1/27, 1/81), Multiplier = c(1, 2, 3, 4, 5))), 'timbres/timbre4.wav')
writeWave(note(data.frame(Amplitude = c(1, 1/4, 1/16, 1/4, 1/16), Multiplier = c(1, 2, 3, 4, 5))), 'timbres/timbre5.wav')
set.seed(1)
writeWave(note(data.frame(Amplitude = runif(11), Multiplier = seq(1, 2, by = 0.1))), 'timbres/timbre6.wav')

library('tuneR')
source('triads.R')

writeWave(major.triad(220), 'triads/major_triad.wav')
writeWave(minor.triad(220), 'triads/minor_triad.wav')
writeWave(diminished.triad(220), 'triads/diminished_triad.wav')
writeWave(augmented.triad(220), 'triads/augmented_triad.wav')

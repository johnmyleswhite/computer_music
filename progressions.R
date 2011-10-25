library('tuneR')

source('triads.R')

writeWave(bind(major.triad(220),
               silence(),
               minor.triad(interval('major-second') * 220),
               silence(),
               major.triad(220)),
          'chord_sequence.wav')

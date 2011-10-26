# base Frequency in Hz of principal note.
# interval Verbal description of desired harmony.
# tuning Can be 'pythagorean', 'just' or '12tet'. Defaults to '12tet'.

interval <- function(interval = 'octave', tuning = '12tet')
{
  # Pythagorean Tuning
  # A = 440
  # A, E, B, F#, C#, G#, D#, A#, F, C, G, D, A
  # A = 440
  # E = 660
  # B = 990 = 495 (9 / 8)
  # F# = 1485 = 742.5 (27 / 16)
  # C# = 2227.5 = 556.875 (81 / 64)
  # G# = 3341.25 = 835.3125 (243 / 128)
  # D# = 5011.875 = 626.4844 (729 / 512)
  # A# = 7517.812 = 
  # F = 11276.72
  # C = 16915.08
  # G = 25372.62
  # D = 38058.93
  # A = 57088.39
  
  pythagorean <- list('unison' = 1,
                      'minor-second' = 256 / 243,
                      'major-second' = 9 / 8,
                      'minor-third' = 32 / 27,
                      'major-third' = 81 / 64,
                      'perfect-fourth' = 4 / 3,
                      'diminished-fifth' = 729 / 512,
                      'perfect-fifth' = 3 / 2,
                      'minor-sixth' = 128 / 81,
                      'major-sixth' = 27 / 16,
                      'minor-seventh' = 16 / 9,
                      'major-seventh' = 243 / 128,
                      'octave'= 2)
  
  just <- list('unison' = 1,
               'minor-second' = 16 / 15,
               'major-second' = 9 / 8,
               'minor-third' = 6 / 5,
               'major-third' = 5 / 4,
               'perfect-fourth' = 4 / 3,
               'diminished-fifth' = 64 / 45,
               'perfect-fifth' = 3 / 2,
               'minor-sixth' = 8 / 5,
               'major-sixth' = 5 / 3,
               'minor-seventh' = 16 / 9,
               'major-seventh' = 15 / 8,
               'octave'= 2)
  
  tet <- list('unison' = 1,
              'minor-second' = 2 ^ (1 / 12),
              'major-second' = 2 ^ (2 / 12),
              'minor-third' = 2 ^ (3 / 12),
              'major-third' = 2 ^ (4 / 12),
              'perfect-fourth' = 2 ^ (5 / 12),
              'diminished-fifth' = 2 ^ (6 / 12),
              'perfect-fifth' = 2 ^ (7 / 12),
              'minor-sixth' = 2 ^ (8 / 12),
              'major-sixth' = 2 ^ (9 / 12),
              'minor-seventh' = 2 ^ (10 / 12),
              'major-seventh' = 2 ^ (11 / 12),
              'octave'= 2 ^ (12 / 12))
  
  if (tuning == 'pythagorean')
  {
    return(pythagorean[[interval]])
  }
  if (tuning == 'just')
  {
    return(just[[interval]])
  }
  else
  {
    return(tet[[interval]])
  }
}

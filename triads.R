source('interval.R')

major.triad <- function(base, tuning = '12tet', unit = '16')
{
  chord <- sine(base) +
            sine(interval('major-third', tuning = tuning) * base) +
            sine(interval('perfect-fifth', tuning = tuning) * base)
  chord <- normalize(chord, unit = unit)
  return(chord)
}

minor.triad <- function(base, tuning = '12tet', unit = '16')
{
  chord <- sine(base) +
            sine(interval('minor-third', tuning = tuning) * base) +
            sine(interval('perfect-fifth', tuning = tuning) * base)
  chord <- normalize(chord, unit = unit)
  return(chord)
}

diminished.triad <- function(base, tuning = '12tet', unit = '16')
{
  chord <- sine(base) +
            sine(interval('minor-third', tuning = tuning) * base) +
            sine(interval('diminished-fifth', tuning = tuning) * base)
  chord <- normalize(chord, unit = unit)
  return(chord)
}

augmented.triad <- function(base, tuning = '12tet', unit = '16')
{
  chord <- sine(base) +
            sine(interval('major-third', tuning = tuning) * base) +
            sine(interval('minor-sixth', tuning = tuning) * base)
  chord <- normalize(chord, unit = unit)
  return(chord)
}

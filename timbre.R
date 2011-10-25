library('tuneR')

note <- function(timbre = data.frame(Amplitude = 1, Multiplier = 1), fundamental = 440, unit = '16')
{
  result <- silence()
  
  for (i in 1:nrow(timbre))
  {
    result <- result + timbre[i, 'Amplitude'] * sine(fundamental * timbre[i, 'Multiplier'])
  }
  
  result <- normalize(result, unit = '16')
  
  return(result)
}

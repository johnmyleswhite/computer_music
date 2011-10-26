pythagorean <- c(1, 256/243, 9/8, 32/27, 81/64, 4/3, 729/512, 3/2, 128/81, 27/16, 16/9, 243/128, 2)

just <- c(1, 16/15, 9/8, 6/5, 5/4, 4/3, 64/45, 3/2, 8/5, 5/3, 16/9, 15/8, 2)

tet <- c(1, 2 ^ (1 / 12), 2 ^ (2 / 12),
         2 ^ (3 / 12), 2 ^ (4 / 12), 2 ^ (5 / 12),
         2 ^ (6 / 12), 2 ^ (7 / 12), 2 ^ (8 / 12),
         2 ^ (9 / 12), 2 ^ (10 / 12), 2 ^ (11 / 12),
         2 ^ (12 / 12))

systems <- data.frame(System = c(rep('Pythagorean', 13), rep('Just', 13), rep('12-Tet', 13)),
                      Notes = rep(c('A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A'), 3),
                      Semitones = c(0:12, 0:12, 0:12),
                      Frequency = c(440 * pythagorean, 440 * just, 440 * tet),
                      Ratio = c(pythagorean, just, tet))

ggplot(systems, aes(x = Semitones, y = Ratio, group = System, color = System)) +
  geom_point() +
  geom_line()
# Make wide plot

ggplot(systems, aes(x = Semitones, y = Ratio, group = System, color = System)) +
  geom_point() +
  geom_line() +
  scale_y_log2()

systems <- transform(systems, Difference = Ratio - tet)

ggplot(systems, aes(x = Semitones, y = Difference, group = System, color = System)) +
  geom_point() +
  geom_line()
# Make wide plot

size(600, 150) ;
for (int x = 10 ; x < width ; x += 10) {
  if (x % 50 == 0)
    if (x % 100 == 0) line(x, 0, x, 100) ;
    else line(x, 0, x, 75) ;
  else line(x, 0, x, 50) ;
}

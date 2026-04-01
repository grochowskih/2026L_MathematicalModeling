# Zmienne 
var x1;
var x2;
var x3;

# Funkcja celu
maximize f: 5 * x1 + 3 * x2 - x3;

# Ograniczenia
subject to ogr1: 0 <= x1 <= 10;
subject to ogr2: 0 <= x2 <= 15;
subject to ogr3: 0 <= x3 <= 13.5;
subject to lin: 2 * x1 + x2 + x3 <= 16;
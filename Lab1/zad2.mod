# Dane
set P := 1..3; # kolejne liczby od 1 do 3
param ogrGorne {P};
param coeffs {P};
param ogrLin {P};

# Zmienne
var x{P} >= 0;

# F celu
maximize costf: sum {p in P} coeffs[p] * x[p];

# Ograniczenia
/*subject to ogr1: x[1] <= ogrGorne[1];
#subject to ogr2: x[2] <= ogrGorne[2];
#subject to ogr3: x[3] <= ogrGorne[3];*/
subject to ogr {p in P}: x[p] <= ogrGorne[p];
subject to ogrLinOgr: sum {p in P} ogrLin[p] * x[p] <= 16;
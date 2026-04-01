# Zbiory i parametry
set P := 1..5;
param szlif {P};
param wiercenie {P};
param technicy {P};
param zysk{P};

# Zbior dwuelementowy zaciagany z pliku .dat i ograniczenia na liczby maszyn danego rodzaju
set maszyny;
param ogrMaszyny {maszyny};

# Parametry okreslajace liczbe dostepnych pracownikow, dni i godzin, zaciagane z pliku .dat
param lTech;
param dni;
param godz;

# Zmienne
var prod {P} >= 0;

# Funkcja celu
maximize fcelu: sum {p in P} zysk[p] * prod[p];

# Ograniczenia
subject to ogrSzlif: sum {p in P} szlif[p] * prod[p] <= dni * godz * (ogrMaszyny[1]);
subject to ogrWiercenie: sum {p in P} wiercenie[p] * prod[p] <= ogrMaszyny[2] * dni * godz;
subject to ogrTechnicy: sum {p in P} technicy[p] * prod[p] <= lTech * dni * godz;
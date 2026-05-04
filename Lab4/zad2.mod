# Dane
set products;
param time {products};
param weight {products};
param maxTime;
param bigM := 1000000000000;

# Zmienne
var pr {products} >= 0 integer;
var isPr {products} binary;

# Cel
maximize weightF: sum {p in products} weight[p] * pr[p];

# Ograniczenia
subject to timeCtr: sum{p in products} time[p] * pr[p] <= maxTime;
subject to isPr1: sum{p in products} isPr[p] == 1;
subject to bigMConstr {p in products}: pr[p] <= bigM * isPr[p];
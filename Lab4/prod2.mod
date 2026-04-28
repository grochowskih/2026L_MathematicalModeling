set products;
param time {products};
param weight {products};
param maxTime;
param bigM := 1000000000;

# Zmienne
var pr {products} >= 0 integer;
var isPr {products} >= 0 binary;

maximize f: sum {p in products} weight[p] * pr[p];

# Ograniczenia
subject to prodMaxTime: sum {p in products} pr[p] * time[p] <= maxTime;
subject to isPr1 {p in products}: pr[p] <= bigM * isPr[p];
subject to max2Pr: sum {p in products} isPr[p] <= 2;
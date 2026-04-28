set days;
param maxPerDay;
param orders {days};
param brakPoczatek := 0;

# Zmienne
var pr {days} >= 0 integer;
var zal {days} integer;

minimize f: 16;

# Ograniczenia
subject to prodMax {d in days}: pr[d] <= maxPerDay;
subject to ord1: zal[1] == orders[1] - pr[1];
subject to ord2: zal[2] == zal[1] + orders[2] - pr[2];
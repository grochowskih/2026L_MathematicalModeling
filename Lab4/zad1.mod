# Dane
set days;
param maxPerDay;
param orders {days};
param opozStart := 0;

# Zmienne
var pr {days} >= 0 integer;
var op {days} integer;

# Funkcja celu
minimize cost: sum {d in days} op[d];

# Ograniczenia
subject to prPrDay {d in days}: pr[d] <= maxPerDay;
# subject to realOrd {d in days}: pr[d] >= orders[d];
subject to op1: op[1] == opozStart + orders[1] - pr[1];
subject to op2: op[2] == op[1] + orders[2] - pr[2];
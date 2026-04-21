set indexIn := 0 .. 15;
set indexOut := 0 .. 7;

var x {indexIn} binary;
var h {indexOut} binary;
var k {indexOut} integer >= 0;

maximize cost: -143;

subject to ogrh0: x[0] + x[3] + x[7] + x[10] + x[15] == 2 * k[0] + h[0];
# h1
subject to c1:
    x[1] + x[4] + x[8] + x[11] = h[1] + 2*k[1];

# h2
subject to c2:
    x[2] + x[5] + x[9] + x[12] = h[2] + 2*k[2];

# h3
subject to c3:
    x[0] + x[6] + x[10] + x[13] = h[3] + 2*k[3];

# h4
subject to c4:
    x[1] + x[7] + x[11] + x[14] = h[4] + 2*k[4];

# h5
subject to c5:
    x[2] + x[8] + x[12] + x[15] = h[5] + 2*k[5];

# h6
subject to c6:
    x[3] + x[9] + x[13] + x[14] = h[6] + 2*k[6];

# h7
subject to c7:
    x[4] + x[5] + x[6] + x[10] + x[15] = h[7] + 2*k[7];
    
subject to ogrH {i in indexOut}: h[i] == 0;
subject to breakZero: x[0] == 1;
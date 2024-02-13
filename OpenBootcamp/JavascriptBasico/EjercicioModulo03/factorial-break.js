let n = 10;
let nFactorial = 1;
let m = 1;

while (true) {
  nFactorial = nFactorial * m;

  if (m == n)
    break;

  m++;
}

console.log(nFactorial);
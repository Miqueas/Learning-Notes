function fib(n) {
  let list = [ 1, 1 ];

  if (n <= 2) return list;

  for (let i = 2; i < n; i++) {
    list.push(list[i - 1] + list[i - 2]);
  }

  return list
}

console.log(fib(10));
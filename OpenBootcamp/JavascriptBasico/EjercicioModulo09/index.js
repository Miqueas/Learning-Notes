const winston = require('winston')
const logger = winston.createLogger({
  level: 'info',
  format: winston.format.combine(winston.format.colorize(), winston.format.simple()),
  transports: [ new winston.transports.Console() ]
});

function suma(x, y) {
  if (typeof(x) !== "number" || typeof(y) !== "number")
    throw new TypeError("Tanto 'x' como 'y' deben ser números");
  
  return x + y;
}

let res;

try {
  res = suma("a", "b");
} catch (e) {
  logger.log("error", e.toString());
}
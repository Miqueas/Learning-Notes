import chalk from "chalk";
import { suma, multiplica } from "./controller.js";

let resSuma = suma(8, 29);
let resMult = multiplica(4, 6);

console.log(resSuma);
console.log(chalk.green(resMult));
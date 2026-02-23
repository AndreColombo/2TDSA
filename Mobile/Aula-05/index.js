const meuArray = [1, 2, 3, 4];
console.log(meuArray);
console.log(...meuArray);
console.log([...meuArray, 4, 5, 6]);
console.log([meuArray, 4, 5, 6]);

const data = {
  firstName: "Leonardo",
  lastName: "Bragatti",
};
console.log({ ...data, email: "email@email.com" });
console.log({ data, email: "email@email.com" });

// ---------------------------------------- //

const meuArray2 = ["azul", "vermelho", "verde"];
const [cor1, cor2, cor3] = meuArray2;

console.log(cor1);
console.log(cor2);
console.log(cor3);

const meuObjeto = { a: 1, X: 10, Y: 20, Z: 30 };
const { X } = meuObjeto;
const Y = meuObjeto.Y;

console.log(X);
console.log(Y);

const carro1 = { marca: "Fiat", modelo: "500", cor: "Branco" };
const carro2 = { marca: "Fiat", modelo: "500", cor: "Branco" };

console.log(carro1);
console.log(carro1.marca);
console.log(carro1.modelo);
console.log(carro1.cor);

console.log(carro2);
console.log(carro2.marca);
console.log(carro2.modelo);
console.log(carro2.cor);

// ---------------------------------------- //

import { MinhaClasse } from "./meuModulo.js";
const a = new MinhaClasse();
a.show();

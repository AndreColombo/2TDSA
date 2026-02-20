console.log("Hello world!");

const nome = "José";
let sobrenome = "";

console.log(nome.trim + " " + sobrenome);
console.log(`${nome} ${sobrenome}`.trim());

// ---------------------------------------- //

function sayMyName(nome, sobrenome = "Diogo") {
  console.log("Hello", nome, sobrenome);
}

let sayMyName2 = function () {
  console.log("Olá");
};
sayMyName2();

// ---------------------------------------- //
const sayMyName3 = (name) => console.log(`Hello, ${name}`);

function sayMyName4(name) {
  console.log(`Hello, ${name}`);
}

sayMyName3("André");

// ---------------------------------------- //

const somar = (a, b) => a + b;
const somar2 = (a, b) => {
  return a + b;
};

const resultado = somar(10, 10);
const resultado2 = somar2(10, 10);

console.log("Resultado:", resultado);
console.log("Resultado 2:", resultado2);

// ---------------------------------------- //

const meuArray = [1, 3, 2];
console.log("Meu Array:", meuArray);
console.log("Meu Array:", ...meuArray);
console.log("Meu Array:", [meuArray, 4, 5, 6]);
console.log("Meu Array:", [...meuArray, 4, 5, 6]);
console.log("Meu Array:", [4, ...meuArray]);

const [first, ...rest] = meuArray;
console.log("First:", first);
console.log("Rest:", rest);

const [first, second, third, fourth] = meuArray;
console.log("First:", first);
console.log("Second:", second);
console.log("Third:", third);
console.log("Fourth:", fourth);

// ---------------------------------------- //

const user = {
  firstName: "André",
  lastName: "Colombo",
};
console.log("User:", user);

const updatedUser = { user, email: "andre@andre.com" };
const secondUser = { ...user, email: "andre@andre.com" };
console.log("User:", updatedUser);
console.log("User:", secondUser);

const { firstName } = user;
console.log("firstName:", firstName);

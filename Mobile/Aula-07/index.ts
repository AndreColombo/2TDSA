console.log("Hello, World!");

// ---------------------------------------- //

let firstName;
firstName = "Lucas";
firstName = 10;

let lastName = "Lopes";
lastName = 10;

// ---------------------------------------- //

function isEven(numero: number) {
  return numero % 2 === 0;
}

function isEven2(numero: number): string {
  return numero % 2 === 0;
}

function isEven3(numero: number): void {
  console.log("Hello");
  return false;
}

function isEven4(numero: number) {
  console.log("Hello");
}

function isEven5(numero: number): void {
  console.log("Hello");
  return false;
}

function isEven6(numero?: number) {
  return numero % 2 === 0;
}

// ---------------------------------------- //

let fruits: string[] = ["Banana", "Apple"];
let fruits2 = ["Banana", "Apple"];
let fruits3: Array<string> = ["Banana", "Apple"];
const muTuple: [string, number, boolean] = ["Name", 0, false];

// ---------------------------------------- //

let variavel: string | number | boolean = "Leonardo";
variavel = 100;
variavel = false;

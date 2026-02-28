import { useState, useEffect, useCallback } from "react";

const MyInput = () => {
  const [name, setName] = useState();
  // const [name, setName] = useState("");
  const [numero, setNumero] = useState();

  const minhaFuncao = useCallback(() => console.log("Minha funcao com callback", name), [name]);
  const minhaFuncaoSemCallback = () => console.log("Hey");

  useEffect(() => {
    console.log("Hello");
  }, [name, numero]);

  return (
    <>
      <input type='text' onChange={(event) => setName(event.target.value)} />
      <p>Conteúdo {name}</p>
      <button onClick={minhaFuncao}>Submit</button>
    </>
  );
};

export default MyInput;

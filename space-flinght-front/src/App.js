import React, { useEffect, useState } from "react";
import api from "./services/api";

export default function App() {
  const [article, setArticle] = useState();
  
  useEffect(() => {
    api
    .get("/api/articles.json")
    .then((response) => setArticle(response.data))
    .catch((err) => {
      console.error("ops! ocorreu um erro" + err);
    });
  }, []);

  console.log("aqui " + article)
 return (
    <div className="App">
      <p>Artigo: {article?.title}</p>
      <p>Url: {article?.url}</p>
    </div>
  );
}
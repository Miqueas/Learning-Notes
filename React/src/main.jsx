import React from "react"
import ReactDOM from "react-dom/client"
import Header from "./Header.jsx"
import Home from "./Home.jsx"

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <Header/>
    <Home/>
  </React.StrictMode>
)
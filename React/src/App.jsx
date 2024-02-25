import { Routes, Route, Outlet, Link } from "react-router-dom"
import Header from "./Header"
import Home from "./Home"
import "./App.css"

export default function App() {
  return (<Routes>
    <Route path="/" element={<Layout/>}>
      <Route index element={<Home/>}/>
    </Route>
  </Routes>)
}

function Layout() {
  return (<>
    <Header/>
    <Outlet/>
  </>)
}
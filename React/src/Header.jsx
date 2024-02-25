import "./Header.css"

export default function Header() {
  return (
    <header className="header">
      <img alt="React logo" src="react.svg" className="header-logo"/>
      <div className="header-content">
        <h1 className="header-title">React Notes</h1>
        <p>Learning React from <a href="https://react.dev/learn" target="_blank">react.dev/learn</a>.</p>
      </div>
    </header>
  )
}
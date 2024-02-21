import styles from "./Header.module.css"

export default function Header() {
  return (
    <header className={styles["header"]}>
      <img alt="React logo" src="react.svg" className={styles["header-logo"]}/>
      <div className={styles["header-content"]}>
        <h1>React Notes</h1>
        <p>Learning React from <a href="https://react.dev/learn" target="_blank">react.dev/learn</a>.</p>
      </div>
    </header>
  )
}
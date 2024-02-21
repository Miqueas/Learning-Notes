import styles from "./Home.module.css"

export default function Home() {
  return (
    <main className={styles["home"]}>
      <h3 className={styles["home-h3"]}>What's React?</h3>

      <p>From the main page, React is:</p>

      <blockquote>The library for web and native user interfaces</blockquote>

      <p>Is well known that React is one of the most popular open source Javascript projects. Developed by Facebook (formally Meta) and the community, released on May 29, 2013. React uses reactivity and components as it's main core concepts for building apps. It was initially made for the web, but since 2015, React can be used for building Android and iOS apps with React Native.</p>
    </main>
  )
}
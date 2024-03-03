const ROUTES = {
  name: "Home",
  path:  "/",
  children: [
    { name: "Basic",
      path: "/basic",
      children: [
        { name: "Introduction",
          path: "/basic/introduction",
          children: [
            { name: "Welcome", path: "/basic/introduction/welcome" },
            { name: "Your first component", path: "/basic/introduction/your-first-component" },
            { name: "Dynamic attributes", path: "/basic/introduction/dynamic-attributes" },
            { name: "Styling", path: "/basic/introduction/styling" },
            { name: "Nested components", path: "/basic/introduction/nested-components" },
            { name: "HTML tags", path: "/basic/introduction/html-tags" },
          ]
        },
        { name: "Reactivity",
          path: "/basic/reactivity",
          children: [
            { name: "Assignments", path: "/basic/reactivity/assignments" },
            { name: "Declarations", path: "/basic/reactivity/declarations" },
            { name: "Statements", path: "/basic/reactivity/statements" },
            { name: "Updating arrays and objects", path: "/basic/reactivity/updating-arrays-and-objects" },
          ]
        },
      ]
    }
  ]
}

export function getRouteByName(name) {
  const find = (routes) => {
    for (let route of routes) {
      if (route.name === name) {
        return route
      }

      if (route.children) {
        const result = find(route.children)
        if (result) {
          return result
        }
      }
    }
  };

  return find([ROUTES]) || null
}

export function getRouteByPath(path) {
  const find = (routes) => {
    for (let route of routes) {
      if (route.path === path) {
        return route
      }

      if (route.children) {
        const result = find(route.children)
        if (result) {
          return result
        }
      }
    }
  };

  return find([ROUTES]) || null
}
import { NavLink, Outlet } from "react-router-dom";

import "./Layout.css";

const navItems = [
  { to: "/", label: "Overview", end: true },
  { to: "/stations", label: "Stations" },
  { to: "/sessions", label: "Sessions" },
];

export default function Layout() {
  return (
    <div className="layout">
      <aside className="sidebar">
        <div className="sidebar__brand">
          <span className="sidebar__logo">⚡</span>
          <span>VoltPassNG</span>
        </div>
        <nav className="sidebar__nav">
          {navItems.map((item) => (
            <NavLink
              key={item.to}
              to={item.to}
              end={item.end}
              className={({ isActive }) =>
                isActive ? "nav-link nav-link--active" : "nav-link"
              }
            >
              {item.label}
            </NavLink>
          ))}
        </nav>
      </aside>
      <main className="main">
        <Outlet />
      </main>
    </div>
  );
}

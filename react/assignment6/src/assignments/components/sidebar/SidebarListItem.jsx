import React from "react";
import { NavLink } from "react-router-dom";
const SidebarListItem = ({ item }) => {
  console.log("item:", item);

  return (
    <NavLink
      to={item.path}
      className={({ isActive }) =>
        isActive ? "sidebar-list__Item--active " : "sidebar-list__Item"
      }
    >
      <i className={`icon-${item.imageSource}`}></i>
      <h2 className="Regular">{item.text}</h2>
    </NavLink>
  );
};

export default SidebarListItem;

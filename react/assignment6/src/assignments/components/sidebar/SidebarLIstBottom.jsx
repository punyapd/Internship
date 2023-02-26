import React from "react";
import SidebarListItem from "./SidebarListItem";
const SidebarListBottom = ({ items }) => {
  return (
    <div className="sidebar-list__bottom">
      {items.map((item, key) => (
        // <p>hello</p>
        <SidebarListItem item={item} />
      ))}
    </div>
  );
};

export default SidebarListBottom;

import React from "react";
import SidebarListItem from "./SidebarListItem";

const SidebarListTop = ({ items }) => {
  return (
    <nav>
      {items.map((item) => (
        <SidebarListItem item={item}/>
      ))}
    </nav>
  );
};

export default SidebarListTop;

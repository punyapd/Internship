import React from "react";
import SidebarListItem from "./SidebarListItem";
const SidebarListBottom = ({ items }) => {
    console.log("sideabar:;" , items)
  return (
    <div className="sidebar-list__bottom">
      {items.map((item, key) => (
        // <p>hello</p>
        <SidebarListItem
          imagesource={item.imageSource}
          text={item.text}
          key={key}
        />
      ))}
    </div>
  );
};

export default SidebarListBottom;

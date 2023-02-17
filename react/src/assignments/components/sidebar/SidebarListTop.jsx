import React from "react";
import SidebarListItem from "./SidebarListItem";

const SidebarListTop = ({ items }) => {
  console.log("sidebar : ", items);
  return (
    <div>
      {items.map((item, key) => (
        <SidebarListItem
          imagesource={item.imageSource}
          text={item.text}
          key={key}
        />
      ))}
    </div>
  );
};

export default SidebarListTop;

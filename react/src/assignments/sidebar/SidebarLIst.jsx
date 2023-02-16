import React from "react";
import SidebarListTop from "./SidebarListTop";
import SidebarListBottom from "./SidebarLIstBottom";

const sidebartopItems = [
  {
    imageSource: "overview",
    text: "overview",
  },
  {
    imageSource: "ticket",
    text: "Tickets",
  },
  {
    imageSource: "idea",
    text: "ideas",
  },
  {
    imageSource: "contact",
    text: "Contacts",
  },
  {
    imageSource: "agent",
    text: "Agents",
  },
  {
    imageSource: "article",
    text: "Articles",
  },
];

const sidebarbottomItems = [
  {
    imageSource: "settings",
    text: "settings",
  },
  {
    imageSource: "subscription",
    text: "subscription",
  },
];
const SidebarList = () => {
  return (
    <div className="sidebar-list">
      <SidebarListTop items={sidebartopItems} />
      <div className="sidebar-list__divider"></div>
      <SidebarListBottom items={sidebarbottomItems} />
    </div>
  );
};

export default SidebarList;

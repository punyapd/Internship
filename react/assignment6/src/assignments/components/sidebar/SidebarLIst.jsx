import React from "react";
import SidebarListTop from "./SidebarListTop";
import SidebarListBottom from "./SidebarLIstBottom";

const sidebartopItems = [
  {
    imageSource: "overview",
    text: "overview",
    path: "/overview",
  },
  {
    imageSource: "ticket",
    text: "Tickets",
    path: "/tickets",
  },
  {
    imageSource: "idea",
    text: "ideas",
    path: "/ideas",
  },
  {
    imageSource: "contact",
    text: "Contacts",
    path: "/contact",
  },
  {
    imageSource: "agent",
    text: "Agents",
    path: "/agents",
  },
  {
    imageSource: "article",
    text: "Articles",
    path: "/article",
  },
];

const sidebarbottomItems = [
  {
    imageSource: "settings",
    text: "settings",
    path: "/settings",
  },
  {
    imageSource: "subscription",
    text: "subscription",
    path: "/subscription",
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

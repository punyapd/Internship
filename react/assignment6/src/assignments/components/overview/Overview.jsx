import React from "react";
import OverViewItem from "./OverViewItem";

const Overview = () => {
  return (
    <div className="overview">
      <div className="overview-itemContainer">
        <OverViewItem title="Unresolved" quantity="60" />
        <OverViewItem title="Overview" quantity="16" />

        <OverViewItem title="Open" quantity="43" />
        <OverViewItem title="Onhold" quantity="64" />
      </div>
    </div>
  );
};

export default Overview;

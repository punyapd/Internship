import React from "react";

const OverViewItem = ({ title, quantity }) => {
  return (
    <div className="overview-item">
      <div className="overview-item-content">
        <h4>{title}</h4>
        <span>{quantity}</span>
      </div>
    </div>
  );
};

export default OverViewItem;

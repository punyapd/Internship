import React from "react";

const Avatar = ({ avatarSource }) => {
  console.log("v", avatarSource);
  return (
    <div className="ticket-list__table__ticketdetails__avatar">
      <img src={avatarSource} />
    </div>
  );
};

export default Avatar;

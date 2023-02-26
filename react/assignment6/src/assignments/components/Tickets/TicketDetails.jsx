import React from "react";
import Avatar from "./Avatar";
const TicketDetails = ({ item }) => {
  return (
    <div className="ticket-list__table__ticketdetails">
      <Avatar avatarSource={item.avatarSource} />

      <div className="ticket-list__table__ticketSubject">
        <p className="ticket-list__table__ticketSubject__title">
          {item.ticketName}
        </p>
        <div className="ticket-list__table__ticketSubject__updateInfo">
          Updated {item.updateDaysCount} day ago
        </div>
      </div>
    </div>
  );
};

export default TicketDetails;

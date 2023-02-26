import React from "react";
import TicketRightMenu from "./TicketRightMenu";
const TicketHeader = () => {
  return (
    <div className="ticket-header">
      <h1 className="Bold-24">Tickets</h1>

      <TicketRightMenu />
    </div>
  );
};

export default TicketHeader;

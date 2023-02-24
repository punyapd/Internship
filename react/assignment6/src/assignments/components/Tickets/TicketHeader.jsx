import React from "react";
import TicketRightMenu from "./TicketRightMenu";
import { useLocation } from "react-router-dom";
const TicketHeader = () => {
  const location = useLocation();
  return (
    <div className="ticket-header">
      <h1 className="Bold-24">{location.pathname.slice(1)}</h1>

      <TicketRightMenu />
    </div>
  );
};

export default TicketHeader;

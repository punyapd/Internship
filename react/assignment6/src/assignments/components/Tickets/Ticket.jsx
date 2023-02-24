import React from "react";
import { Outlet } from "react-router-dom";
import TicketHeader from "./TicketHeader";
import TicketList from "./TicketList";
const Ticket = () => {
  return (
    <div className="ticket">
      <TicketHeader />
      <Outlet />
    </div>
  );
};

export default Ticket;

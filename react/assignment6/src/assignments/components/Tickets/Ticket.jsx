import React from "react";
import { Outlet } from "react-router-dom";
import TicketHeader from "./TicketHeader";
const Ticket = () => {
  return (
    <div className="ticket">
      <TicketHeader />
      <Outlet />
    </div>
  );
};

export default Ticket;

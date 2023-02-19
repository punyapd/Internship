import React, { useState } from "react";
import TicketHeader from "./TicketHeader";
import TicketList from "./TicketList";
const Ticket = () => {
  return (
    <div className="ticket">
      <TicketHeader/>
      <TicketList
       
      />
    </div>
  );
};

export default Ticket;

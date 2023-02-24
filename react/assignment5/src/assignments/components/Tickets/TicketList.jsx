import React, { useEffect, useState } from "react";
import TicketListTop from "./TicketListTop";
import TicketListTable from "./TicketListTable";
import useTickets from "../../../customhooks/useTickets";
const TicketList = () => {
  const { tickets, loading, postTickets, deleteTicket } = useTickets();

  return (
    <div className="ticket-list">
      <TicketListTop postTickets={postTickets} />
      {loading ? (
        <div>Loading</div>
      ) : (
        <TicketListTable tickets={tickets} deleteTicketItem={deleteTicket} />
      )}
    </div>
  );
};

export default TicketList;

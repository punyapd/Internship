import React from "react";
import TicketListTop from "./TicketListTop";
import TicketListTable from "./TicketListTable";
const TicketList = () => {
  return (
    <div className="ticket-list">
      <TicketListTop />
      <TicketListTable />
    </div>
  );
};

export default TicketList;

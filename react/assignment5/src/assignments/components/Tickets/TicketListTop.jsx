import React from "react";
import SortAndFilterMenu from "./SortAndFilterMenu";
const TicketListTop = ({ postTickets }) => {
  return (
    <div className="ticket-list__top">
      <h2 className="ticket-list__top__title">All Tickets</h2>
      <SortAndFilterMenu postTickets={postTickets} />
    </div>
  );
};

export default TicketListTop;

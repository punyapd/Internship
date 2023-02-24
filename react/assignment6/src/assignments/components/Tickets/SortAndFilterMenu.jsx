import React from "react";
import Sort from "./Sort";
import Filter from "./Filter";
import AddTicket from "./AddTicket";
const SortAndFilterMenu = ({ postTickets }) => {
  return (
    <div className="ticket-list__top__sortAndFilterMenu">
      <AddTicket postTickets={postTickets} />
      <Sort />
      <Filter />
    </div>
  );
};

export default SortAndFilterMenu;

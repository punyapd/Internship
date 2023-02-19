import React, { useState } from "react";
import TicketHeader from "./TicketHeader";
import TicketList from "./TicketList";
const Ticket = () => {
  const [searchKey, setSearchKey] = useState("");

  const [filterKey, setFilterKey] = useState("");

  const handleSearchChange = (event) => {
    setSearchKey(event.target.value);
    setFilterKey("");
  };


 
  return (
    <div className="ticket">
      <TicketHeader searchKey={searchKey} onSearchChange={handleSearchChange} />
      <TicketList
        searchKey={searchKey}
        filterKey={filterKey}
        setFilterKey={setFilterKey}
      />
    </div>
  );
};

export default Ticket;

import React, { useContext } from "react";
import { filterContext } from "../../../contexts/filterContext";
import { searchContext } from "../../../contexts/searchContext";
import TableRow from "./TableRow";

const TicketListTable = ({ tickets, deleteTicketItem }) => {
  const { searchKey, setSearchKey } = useContext(searchContext);

  const { filterKey, setFilterKey } = useContext(filterContext);

  return (
    <div className="ticket-list__table">
      <table>
        <thead>
          <tr>
            <th>Ticket Details</th>
            <th>Customer Name</th>
            <th>Date</th>
            <th>Priority</th>
            <th></th>
          </tr>
        </thead>

        <tbody>
          {(filterKey
            ? tickets.filter((ticket) => ticket.priority === filterKey)
            : searchKey
            ? tickets.filter((ticket) => ticket.ticketName.includes(searchKey))
            : tickets
          ).map((item, key) => (
            <TableRow item={item} key={key} deleteItem={deleteTicketItem} />
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default TicketListTable;

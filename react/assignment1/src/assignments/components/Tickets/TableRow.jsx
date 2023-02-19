import React from "react";
import TicketDetails from "./TicketDetails";
import CustomerDetails from "./CustomerDetails";
import DateField from "./DateField";
import Priority from "./Priority";
const TableRow = ({ item, index }) => {
  return (
    <tr>
      <td>
        <TicketDetails item={item} />
      </td>
      <td>
        <CustomerDetails item={item} />
      </td>
      <td>
        <DateField item={item} />
      </td>
      <td>
        <Priority item={item} />
      </td>

      <td item={item}>
        <button className="delete-button">
          {" "}
          <img
            src="delete.png"
            alt="dlete_image"
            style={{ height: 16, width: 16 }}
          />
        </button>
      </td>
    </tr>
  );
};

export default TableRow;

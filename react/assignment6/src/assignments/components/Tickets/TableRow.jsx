import React from "react";
import TicketDetails from "./TicketDetails";
import CustomerDetails from "./CustomerDetails";
import DateField from "./DateField";
import Priority from "./Priority";

import { useNavigate } from "react-router-dom";
const TableRow = ({ item, deleteItem }) => {
  const navigate = useNavigate();

  const handleTicketClick = (item) => {
    navigate(`details/${item.id}`);
  };
  return (
    <tr>
      <td onClick={() => handleTicketClick(item)}>
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
        <button className="delete-button" onClick={() => deleteItem(item.id)}>
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

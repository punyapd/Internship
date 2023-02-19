import React from "react";

const Priority = ({ item }) => {
  return (
    <div className="ticket-list__table__priority">
      {item.priority == "HIGH" && (
        <button className="ticket-list__table__priority--buttonRed">
          HIGH
        </button>
      )}

      {item.priority == "NORMAL" && (
        <button className="ticket-list__table__priority--buttonGreen">
          NORMAL
        </button>
      )}

      {item.priority == "LOW" && (
        <button className="ticket-list__table__priority--buttonYellow">
          lOW
        </button>
      )}
    </div>
  );
};

export default Priority;

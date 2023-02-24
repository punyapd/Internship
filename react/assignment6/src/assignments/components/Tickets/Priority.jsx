import React from "react";

const Priority = ({ item }) => {
  return (
    <div className="ticket-list__table__priority">
      {item.priority == "high" && (
        <button className="ticket-list__table__priority--buttonRed">
          HIGH
        </button>
      )}

      {item.priority == "normal" && (
        <button className="ticket-list__table__priority--buttonGreen">
          NORMAL
        </button>
      )}

      {item.priority == "low" && (
        <button className="ticket-list__table__priority--buttonYellow">
          lOW
        </button>
      )}
    </div>
  );
};

export default Priority;

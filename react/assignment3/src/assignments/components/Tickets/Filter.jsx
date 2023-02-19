import React, { useState } from "react";

const priorities = ["HIGH", "NORMAL", "LOW", ""];

const Filter = ({ setFilterKey , filterKey }) => {
  const [showFilterPopup, setShowFilterPopup] = useState(false);

  const handlePriorityClick = (priority) => {
    setFilterKey(priority);
    setShowFilterPopup(!showFilterPopup);
  };

  return (
    <div className="ticket-list__top__sortAndFilterMenu__filter">
      <i
        className="icon-filter"
        onClick={() => setShowFilterPopup(!showFilterPopup)}
      ></i>
      <h3 onClick={() => setShowFilterPopup(!showFilterPopup)}>Filter</h3>
      {showFilterPopup && (
        <div className="ticket-list__top__sortAndFilterMenu__filterTab">
          <ul>
            {priorities.map((priority, key) => (
              <li
                className={priority == filterKey ? `ticket-list__top__sortAndFilterMenu__filterTab--activeItem` : ""}
                key={key}
                onClick={() => handlePriorityClick(priority)}
              >
                {priority ? priority : "ALL"}
              </li>
            ))}
          </ul>
        </div>
      )}
    </div>
  );
};

export default Filter;

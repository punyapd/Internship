import React from "react";
import Sort from "./Sort";
import Filter from "./Filter";
const SortAndFilterMenu = ({ setFilterKey, filterKey }) => {
  return (
    <div className="ticket-list__top__sortAndFilterMenu">
      <Sort />

      <Filter setFilterKey={setFilterKey} filterKey={filterKey} />
    </div>
  );
};

export default SortAndFilterMenu;

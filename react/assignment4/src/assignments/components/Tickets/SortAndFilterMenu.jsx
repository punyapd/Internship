import React from "react";
import Sort from "./Sort";
import Filter from "./Filter";
const SortAndFilterMenu = () => {
  return (
    <div className="ticket-list__top__sortAndFilterMenu">
      <Sort />

      <Filter />
    </div>
  );
};

export default SortAndFilterMenu;

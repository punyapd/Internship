import React, { useContext, useEffect, useState } from "react";
import { filterContext } from "../../../contexts/filterContext";
import { searchContext } from "../../../contexts/searchContext";
import TableRow from "./TableRow";

const ticketsDataList = [
  {
    avatarSource: "man.png",
    name: "Tom Cruise",
    ticketSubject: "Contact Email not linked",
    customerDate: "24.05.2019",
    updateDaysCount: 1,
    date: "May 26, 2019",
    time: "6:30 PM",
    priority: "HIGH",
  },
  {
    avatarSource: "customer-1.png",
    name: "Matt Damon",
    ticketSubject: "Adding Images to Featured Posts",
    customerDate: "24.05.2019",

    updateDaysCount: 1,
    date: "May 26, 2019",
    time: "6:30 PM",
    priority: "LOW",
  },
  {
    avatarSource: "customer-2.png",
    name: "Christian Bale",
    ticketSubject: "When will I be charged this month?",
    customerDate: "24.05.2019",

    updateDaysCount: 1,
    date: "May 26, 2019",
    time: "6:30 PM",
    priority: "HIGH",
  },
  {
    avatarSource: "customer-3.png",
    name: "Henry Cavil",
    ticketSubject: "Payment not going through",
    customerDate: "24.05.2019",

    updateDaysCount: 2,
    date: "May 26, 2019",
    time: "6:30 PM",
    priority: "NORMAL",
  },
  {
    avatarSource: "customer-4.png",
    name: "Chris Evans",
    ticketSubject: "Unable to add replies",
    customerDate: "24.05.2019",

    updateDaysCount: 2,
    date: "May 26, 2019",
    time: "6:30 PM",
    priority: "HIGH",
  },
  {
    avatarSource: "customer-5.png",
    name: "Sam Smith",
    ticketSubject: "Referral Bonus",
    customerDate: "24.05.2019",

    updateDaysCount: 3,
    date: "May 26, 2019",
    time: "6:30 PM",
    priority: "NORMAL",
  },

  {
    avatarSource: "customer-6.png",
    name: "Steve Rogers",
    ticketSubject: "Contact Email not linked",
    customerDate: "24.05.2019",

    updateDaysCount: 4,
    date: "May 26, 2019",
    time: "6:30 PM",
    priority: "LOW",
  },
  {
    avatarSource: "customer-7.png",
    name: "Robert Downey",
    ticketSubject: "Downtime since last week’",
    customerDate: "24.05.2019",

    updateDaysCount: 6,
    date: "May 26, 2019",
    time: "6:30 PM",
    priority: "NORMAL",
  },
];

const TicketListTable = () => {
  const [ticketsData, setTicketsData] = useState(ticketsDataList);
  const {searchKey , setSearchKey} = useContext(searchContext);

  const{filterKey , setFilterKey} = useContext(filterContext);
  // console.log("search:" , search)
  console.log('searchkey:' , searchKey)

  const deleteItem = (index) => {
    let copy = [...ticketsData];
    copy = copy.filter((item) => index != item);
    setTicketsData(copy);
  };

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
          {(searchKey
            ? ticketsData.filter((ticket) =>
                ticket.ticketSubject.includes(searchKey)
              )
            : filterKey
            ? ticketsData.filter((ticket) => ticket.priority == filterKey)
            : ticketsData
          ).map((item, key) => (
            <TableRow
              item={item}
              key={key}
              index={key}
              deleteItem={deleteItem}
            />
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default TicketListTable;

import { useState, useEffect } from "react";
import axios from "axios";
const useTickets = () => {
  const [isLoading, setIsLoading] = useState(null);
  const [tickets, setTickets] = useState([]);

  const GetTickets = async () => {
    setIsLoading(true);

    await axios
      .get(
        `https://react-js-assignment-default-rtdb.firebaseio.com/tickets.json`
      )
      .then((response) => {
        const ticketsArray = Object.entries(response.data).map(
          ([key, value]) => ({
            id: key,
            ...value,
          })
        );
        setTickets(ticketsArray);
        setIsLoading(false);
      });
  };

  //post tickets

  const postTickets = async (data) => {
    setIsLoading(true);

    await axios
      .post(
        "https://react-js-assignment-default-rtdb.firebaseio.com/tickets.json",
        data
      )
      .then((response) => {
        setTickets([data, ...tickets]);
        setIsLoading(false);
      });
  };

  //deleter tickets
  const deleteTicket = async (id) => {
    setIsLoading(true);
    console.log("id:", id);

    await axios
      .delete(
        `https://react-js-assignment-default-rtdb.firebaseio.com/tickets.json/${id}"`
      )
      .then((response) => {
        setTickets(tickets.filter((ticket) => ticket.id !== id));
        setIsLoading(false);
      });
  };

  useEffect(() => {
    GetTickets();
  }, []);

  return { tickets, isLoading, postTickets, deleteTicket };
};

export default useTickets;

import { useState, useEffect } from "react";
import axios from "axios";
const useTickets = () => {
  const [isLoading, setIsLoading] = useState(null);
  const [tickets, setTickets] = useState([]);

  const GetTickets = async () => {
    setIsLoading(true);

    await axios.get(`http://localhost:3000/tickets`).then((response) => {
      setTickets(response.data);
      setIsLoading(false);
      console.log("res:", response);
    });
  };

  //post tickets

  const postTickets = async (data) => {
    setIsLoading(true);

    await axios
      .post("http://localhost:3000/tickets/", data)
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
      .delete(`http://localhost:3000/tickets/${id}`)
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

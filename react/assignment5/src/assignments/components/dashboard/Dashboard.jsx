import React, { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import Sidebar from "../sidebar/Sidebar";
import Ticket from "../Tickets/Ticket";

const Dashboard = () => {
  const navigate = useNavigate();
  useEffect(() => {
    console.log("i", JSON.stringify(localStorage.getItem("loggedState")));
    if (!localStorage.getItem("loggedState")) {
      navigate("/login");
      console.log("i am here");
    }
  });

  return (
    <div className="dashboard">
      <Sidebar />

      <Ticket />
    </div>
  );
};

export default Dashboard;

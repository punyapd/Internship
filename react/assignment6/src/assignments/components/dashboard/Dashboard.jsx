import React, { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import Sidebar from "../sidebar/Sidebar";
import Ticket from "../Tickets/Ticket";

const Dashboard = () => {
  const navigate = useNavigate();

  // useEffect(() => {
  //   if (!localStorage.getItem("loggedState")) {
  //     navigate("/login");
  //   }
  // }, []);

  return (
    <div className="dashboard">
      <Sidebar />

      <Ticket />
    </div>
  );
};

export default Dashboard;

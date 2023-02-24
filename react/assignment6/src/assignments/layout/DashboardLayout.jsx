import React from "react";
import { Outlet } from "react-router-dom";
import Sidebar from "../components/sidebar/Sidebar";
import TicketHeader from "../components/Tickets/TicketHeader";

const DashboardLayout = () => {
  return (
    <div>
      <div>
        <Sidebar />
      </div>

      <div className="ticket">
        <TicketHeader />

        <Outlet />
      </div>
    </div>
  );
};

export default DashboardLayout;

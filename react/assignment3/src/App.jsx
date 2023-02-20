import { Routes, Route, BrowserRouter } from "react-router-dom";
import Login from "./assignments/pages/Login";

import "./app.scss";
import "./icon/style.scss";
import "./icon/variables.scss";
import "./assignments/components/dashboard/_dashboard.scss";
import "./assignments/components/sidebar/sidebar.scss";
import "./assignments/components/Tickets/_tickets.scss";
import "./assignments/components/Tickets/_ticketTable.scss";
import "./assignments/components/modals/_modal.scss";
import "./form.scss";
import "./assignments/components/reusable/_button.scss";
import Dashboard from "./assignments/components/dashboard/Dashboard";
function App() {
  return (
    <>
      {" "}
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Dashboard />} />
          <Route path="/login" element={<Login />} />
        </Routes>
      </BrowserRouter>
    </>
  );
}

export default App;

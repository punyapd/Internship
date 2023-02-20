import { useState } from "react";
import { Routes, Route, BrowserRouter } from "react-router-dom";
import { searchContext } from "./contexts/searchContext";
import { filterContext } from "./contexts/filterContext";
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
import "./assignments/pages/_mouseposition.scss";

import Dashboard from "./assignments/components/dashboard/Dashboard";
import MousePosition from "./assignments/pages/MousePosition";
function App() {
  const [searchKey, setSearchKey] = useState("");

  const [filterKey, setFilterKey] = useState("");

  const handleSearchChange = (event) => {
    setSearchKey(event.target.value);
  };

  return (
    <>
      <searchContext.Provider
        value={{ searchKey, onSearchChange: handleSearchChange }}
      >
        <filterContext.Provider value={{ filterKey, setFilterKey }}>
          <BrowserRouter>
            <Routes>
              <Route path="/" element={<Dashboard />} />
              <Route path="/login" element={<Login />} />
              <Route path="/mouse" element={<MousePosition />} />
            </Routes>
          </BrowserRouter>
        </filterContext.Provider>
      </searchContext.Provider>
    </>
  );
}

export default App;

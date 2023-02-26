import { useState, useEffect } from "react";
import { Routes, Route, BrowserRouter } from "react-router-dom";
import { searchContext } from "./contexts/searchContext";
import { filterContext } from "./contexts/filterContext";
import { ToastContainer } from "react-toastify";

import Login from "./assignments/pages/Login";
import Signup from "./assignments/pages/Signup";
import TicketList from "./assignments/components/Tickets/TicketList";
import Overview from "./assignments/components/overview/Overview";
import TicketDetailsPage from "./assignments/pages/TicketDetailsPage";
import Dashboard from "./assignments/components/dashboard/Dashboard";
import MousePosition from "./assignments/pages/MousePosition";

import "react-toastify/dist/ReactToastify.css";
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
import "./assignments/components/overview/overview.scss";
import "./assignments/pages/pagenotfound.scss";
import "./assignments/pages/ticketDetails.scss";
import PageNotFound from "./assignments/pages/PageNotFound";

function App() {
  const [searchKey, setSearchKey] = useState("");

  const [filterKey, setFilterKey] = useState("");

  const handleSearchChange = (event) => {
    setSearchKey(event.target.value);
  };

  useEffect(() => {
    if (localStorage.getItem("loggedState") == "true") {
      localStorage.setItem("loggedState", true);
    }
  }, []);

  return (
    <>
      <searchContext.Provider
        value={{ searchKey, onSearchChange: handleSearchChange }}
      >
        <filterContext.Provider value={{ filterKey, setFilterKey }}>
          <BrowserRouter>
            <Routes>
              <Route exact path="/" element={<Dashboard />}>
                <Route index element={<Overview />} />

                <Route path="/tickets" element={<TicketList />} />
                <Route path="/overview" element={<Overview />} />
              </Route>
              <Route path="/login" element={<Login />} />
              <Route path="/signup" element={<Signup />} />
              <Route
                path="/tickets/details/:id"
                element={<TicketDetailsPage />}
              />

              <Route path="/mouse" element={<MousePosition />} />
              <Route path="*" element={<PageNotFound />} />
            </Routes>
          </BrowserRouter>
        </filterContext.Provider>
      </searchContext.Provider>

      <ToastContainer
        position="top-right"
        autoClose={1000}
        hideProgressBar={false}
        newestOnTop={false}
        closeOnClick
        rtl={false}
        pauseOnFocusLoss
        draggable
        pauseOnHover
        theme="light"
      />
    </>
  );
}

export default App;

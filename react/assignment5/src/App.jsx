import { useState, useEffect } from "react";
import { Routes, Route, BrowserRouter } from "react-router-dom";
import { searchContext } from "./contexts/searchContext";
import { filterContext } from "./contexts/filterContext";
import Login from "./assignments/pages/Login";
import Signup from "./assignments/pages/Signup";
import { ToastContainer } from "react-toastify";
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

import Dashboard from "./assignments/components/dashboard/Dashboard";
import MousePosition from "./assignments/pages/MousePosition";
function App() {
  const [searchKey, setSearchKey] = useState("");

  const [filterKey, setFilterKey] = useState("");

  const handleSearchChange = (event) => {
    setSearchKey(event.target.value);
  };

  // console.log("dddd", localStorage.getItem("loggedState"));
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
              <Route path="/" element={<Dashboard />} />
              <Route path="/login" element={<Login />} />
              <Route path="/signup" element={<Signup />} />

              <Route path="/mouse" element={<MousePosition />} />
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

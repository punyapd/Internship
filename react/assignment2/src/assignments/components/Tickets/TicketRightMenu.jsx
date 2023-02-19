import React, { useState } from "react";
import NotificationTab from "./NotificationTab";
import UserIcon from "./UserIcon";
const TicketRightMenu = () => {
  const [showNotificationTab, setShowNotificationTab] = useState(false);
  const [showSearchBar, setShowSearchBar] = useState(false);


  //handle notification tab
  const handleNotificaton = () => {
    setShowNotificationTab(!showNotificationTab);
  };

  //handleing searc bar
  const handleSearchBar = () => {
    setShowSearchBar(!showSearchBar);
  };

  return (
    <div className="ticket-header__rightMenu">
      {showSearchBar && (
        <div className="ticket-header__rightMenu__searchbar">
          <input type="text" placeholder="Search" />
        </div>
      )}

      <div className="ticket-header__rightMenu__icons">
        <i className="icon-search" onClick={() => handleSearchBar()} />

        <div className="ticket-header__rightMenu__icons__notification">
          <span className="ticket-header__rightMenu__icons__notification__count"></span>
          <i
            className="icon-notification"
            onClick={() => handleNotificaton()}
          />

          {showNotificationTab && <NotificationTab />}
        </div>
      </div>

      <div className="ticket-header__rightMenu__divider"></div>

      <div className="ticket-header__rightMenu__userdetails">
        <h5 className="semibold-14">Jones Ferdinand</h5>

        <UserIcon />
      </div>
    </div>
  );
};

export default TicketRightMenu;

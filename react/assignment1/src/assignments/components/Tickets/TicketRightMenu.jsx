import React, { useState } from "react";
import UserIcon from "./UserIcon";
const TicketRightMenu = () => {
  return (
    <div className="ticket-header__rightMenu">
      <div className="ticket-header__rightMenu__icons">
        <i className="icon-search" />

        <div className="ticket-header__rightMenu__icons__notification">
          <span className="ticket-header__rightMenu__icons__notification__count"></span>
          <i className="icon-notification" />
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

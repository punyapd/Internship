import React from "react";
import AddTicketModal from "../modals/AddTicketModal";

const AddTicket = ({postTickets}) => {
  const [modalIsOpen, setIsOpen] = React.useState(false);

  function openModal() {
    setIsOpen(true);
  }

  function closeModal() {
    setIsOpen(false);
  }
  return (
    <div className="ticket-list__top__sortAndFilterMenu__addTicket">
      <button className="ticket-list__top__sortAndFilterMenu__addTicket__button" onClick={openModal}>
        Add Ticket
      </button>

      <AddTicketModal modalIsOpen={modalIsOpen} openModal={openModal} closeModal = {closeModal} postTickets={postTickets}/>
    </div>
  );
};

export default AddTicket;

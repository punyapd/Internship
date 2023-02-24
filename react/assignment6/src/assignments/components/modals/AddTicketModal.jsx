import React from "react";
import Modal from "react-modal";
import AddTicketForm from "../form/AddTicketForm";
const AddTicketModal = ({
  modalIsOpen,
  openModal,
  closeModal,
  postTickets,
}) => {
  return (
    <div className="add-ticket-modal-container">
      <Modal
        isOpen={modalIsOpen}
        onRequestClose={closeModal}
        contentLabel="Example Modal"
        className="add-ticket-modal"
      >
        <div style={{ height: "100vh" }}>
          <AddTicketForm postTickets={postTickets} />
        </div>
      </Modal>
    </div>
  );
};

export default AddTicketModal;

import React from "react";
import Modal from "react-modal";
const UserModal = ({ modalIsOpen, openModal, closeModal }) => {
  let subtitle;

  function afterOpenModal() {
    subtitle.style.color = "#f00";
  }

  return (
    <div>
      <Modal
        isOpen={modalIsOpen}
        onAfterOpen={afterOpenModal}
        onRequestClose={closeModal}
        contentLabel="Example Modal"
       

      >
        <button onClick={closeModal}>close</button>
        <div>I am a modal</div>
        <form>
          <input />
          <button>tab navigation</button>
          <button>stays</button>
          <button>inside</button>
          <button>the modal</button>
        </form>
      </Modal>
    </div>
  );
};

export default UserModal;

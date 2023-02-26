import React from "react";
import Modal from "react-modal";
import { useNavigate } from "react-router-dom";
const UserModal = ({ modalIsOpen, openModal, closeModal }) => {
  let subtitle;

  function afterOpenModal() {
    subtitle.style.color = "#f00";
  }

  const navigate = useNavigate();
  const handleLogOut = (e) => {
    localStorage.removeItem("loggedState");
    navigate("/login");
  };

  Modal.setAppElement("#root");
  return (
    <div>
      <Modal
        isOpen={modalIsOpen}
        onAfterOpen={afterOpenModal}
        onRequestClose={closeModal}
        contentLabel="Example Modal"
      >
        <button onClick={closeModal}>close</button>

        <button
          className="button"
          style={{
            marginLeft: "20px",
            background: "blue",
            padding: "10px 15px",
            color: "white",
            border: "none",
            cursor: "pointer",
          }}
          onClick={handleLogOut}
        >
          logout
        </button>
      </Modal>
    </div>
  );
};

export default UserModal;

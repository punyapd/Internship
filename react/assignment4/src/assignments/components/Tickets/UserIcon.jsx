import React from "react";
import UserModal from "../modals/UserModal";
const UserIcon = () => {
  const [modalIsOpen, setIsOpen] = React.useState(false);

  function openModal() {
    setIsOpen(true);
  }


  function closeModal() {
    setIsOpen(false);
  }
  return (
    <>
      <div className="ticket-header__rightMenu__userdetails__usericon"  onClick={openModal}></div>

      <UserModal
        modalIsOpen={modalIsOpen}
        openModal={openModal}
        closeModal={closeModal}
      />
    </>
  );
};

export default UserIcon;

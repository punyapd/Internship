import React, { useState } from "react";
import { toast } from "react-toastify";
import CustomInputFields from "../reusable/CustomInputFiels";
const AddTicketForm = ({ postTickets }) => {
  const [addTicketData, setAddTicketData] = useState({
    name: "",
    ticketName: "",
    customerDate: "",
    updateDaysCount: "",
    date: "",
    time: "",
    priority: "",
    avatarSource: "",
    id: Math.floor(Math.random() * 1000),
  });

  function handleChange(event) {
    const { name, value } = event.target;
    setAddTicketData({ ...addTicketData, [name]: value });
  }

  const notify = (msg) => {
    toast.success(msg);
  };

  // const { response, isLoading, postData } = usePostHook();

  const handleSubmit = async (event) => {
    event.preventDefault();
    let result = postTickets(addTicketData);

    if (result) {
      notify("Ticket Added!!");
    }
  };
  return (
    <div className="form add-ticket-form">
      <form onSubmit={(e) => handleSubmit(e)}>
        <CustomInputFields
          type="text"
          label="name"
          handleChange={handleChange}
          value={addTicketData.fullName}
          name={"name"}
          placeholder={"Enter Full Name"}
          className="form__input"
        />
        <CustomInputFields
          type="text"
          label="Ticket Name"
          handleChange={handleChange}
          value={addTicketData.ticketName}
          name={"ticketName"}
          placeholder={"Enter Ticket Name"}
          className="form__input"
        />
        <CustomInputFields
          type="number"
          label="Days Count"
          handleChange={handleChange}
          value={addTicketData.updateDaysCount}
          name={"updateDaysCount"}
          placeholder={"Enter number of days"}
          className="form__input"
        />
        <CustomInputFields
          type="date"
          label="customerDate"
          handleChange={handleChange}
          value={addTicketData.customerDate}
          name={"customerDate"}
          placeholder={"Enter customer date"}
          className="form__input"
        />
        <CustomInputFields
          type="date"
          label="date"
          handleChange={handleChange}
          value={addTicketData.date}
          name={"date"}
          placeholder={"Enter Full date"}
          className="form__input"
        />

        <CustomInputFields
          type="time"
          label="time"
          handleChange={handleChange}
          value={addTicketData.time}
          name={"time"}
          placeholder={"Enter Full time"}
          className="form__input"
        />

        <CustomInputFields
          type="text"
          label="priority"
          handleChange={handleChange}
          value={addTicketData.priority.toUpperCase()}
          name={"priority"}
          placeholder={"Enter priority"}
          className="form__input"
        />

        <CustomInputFields
          type="text"
          label="Avatar"
          handleChange={handleChange}
          value={addTicketData.avatarSource}
          name={"avatarSource"}
          placeholder={"choose Avatar"}
          className="form__input"
        />

        <div className="button">
          <button type="submit"> Add Ticket</button>
        </div>
      </form>
    </div>
  );
};

export default AddTicketForm;

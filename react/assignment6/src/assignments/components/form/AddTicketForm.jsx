import React, { useState } from "react";
import { toast } from "react-toastify";
import CustomInputFields from "../reusable/CustomInputFiels";
import dayjs from "dayjs";
import localizedFormat from "dayjs/plugin/localizedFormat";
import relativeTime from "dayjs/plugin/relativeTime";
dayjs.extend(localizedFormat);
dayjs.extend(relativeTime);
let currentTime = dayjs().format("L");
const AddTicketForm = ({ postTickets }) => {
  const [addTicketData, setAddTicketData] = useState({
    name: "",
    ticketName: "",
    customerDate: dayjs().format("L"),
    date: dayjs().format("LL"),
    time: dayjs().format("LT"),
    updateDaysCount: dayjs(currentTime).fromNow(),
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
          required={true}
        />
        <CustomInputFields
          type="text"
          label="Ticket Name"
          handleChange={handleChange}
          value={addTicketData.ticketName}
          name={"ticketName"}
          placeholder={"Enter Ticket Name"}
          className="form__input"
          required={true}
        />
        {/* <CustomInputFields
          type="number"
          label="Days Count"
          handleChange={handleChange}
          value={addTicketData.updateDaysCount}
          name={"updateDaysCount"}
          placeholder={"Enter number of days"}
          className="form__input"
        /> */}

        <CustomInputFields
          type="text"
          label="priority"
          handleChange={handleChange}
          value={addTicketData.priority}
          name={"priority"}
          placeholder={"Enter priority"}
          className="form__input"
          required={true}
        />

        <CustomInputFields
          type="text"
          label="Avatar"
          handleChange={handleChange}
          value={addTicketData.avatarSource}
          name={"avatarSource"}
          placeholder={"choose Avatar"}
          className="form__input"
          required={true}
        />

        <div className="button">
          <button type="submit"> Add Ticket</button>
        </div>
      </form>
    </div>
  );
};

export default AddTicketForm;

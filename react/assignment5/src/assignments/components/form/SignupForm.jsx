import axios from "axios";
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import Button from "../reusable/Button";
import CustomInputFields from "../reusable/CustomInputFiels";
import PasswordField from "../reusable/PasswordField";
import { toast } from "react-toastify";
const SignupForm = ({ activeForm }) => {
  const [signupData, setSignupData] = useState({
    fullName: "",
    email: "",
    password: "",
    confirmPassword: "",
  });

  function handleChange(event) {
    const { name, value } = event.target;
    setSignupData({ ...signupData, [name]: value });
  }
  const navigate = useNavigate();

  const notify = (msg) => {
    toast.success(msg);
  };
  function handleSubmit(e) {
    e.preventDefault();
    axios
      .post(
        "https://react-js-assignment-default-rtdb.firebaseio.com/users.json",
        signupData
      )
      .then((response) => {
        if (response.status == "200") {
          navigate("/login");
          notify("user added successfully");
        }
      });
  }

  // console.log("R:", response);

  return (
    <div className="form">
      <form action="" onSubmit={(e) => handleSubmit(e)}>
        <CustomInputFields
          type="text"
          label="FullName"
          handleChange={handleChange}
          value={signupData.fullName}
          name={"fullName"}
          placeholder={"Enter Full Name"}
          className="form__input"
          required={true}
        />
        <CustomInputFields
          type="email"
          label="Email"
          handleChange={handleChange}
          value={signupData.email}
          name={"email"}
          placeholder={"Enter Email"}
          className="form__input"
          required={true}
        />

        <PasswordField
          type="password"
          label="password"
          handleChange={handleChange}
          value={signupData.password}
          name={"password"}
          placeholder={"Enter Password"}
          className="form__input"
          required={true}
        />

        <PasswordField
          type="password"
          label="Confirm Password"
          handleChange={handleChange}
          value={signupData.confirmPassword}
          name={"confirmPassword"}
          placeholder={"Enter Password Again"}
          className="form__input"
          required={true}
        />

        <Button activeForm={activeForm} />
      </form>
    </div>
  );
};

export default SignupForm;

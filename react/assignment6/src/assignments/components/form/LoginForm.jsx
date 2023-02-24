import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import CustomInputFields from "../reusable/CustomInputFiels";
import Button from "../reusable/Button";
import PasswordField from "../reusable/PasswordField";
import useGetUsers from "../../../customhooks/useGetUsers";
import { toast } from "react-toastify";
useGetUsers;
const LoginForm = ({ activeForm }) => {
  const navigate = useNavigate();
  const [inputValues, setInputValue] = useState({
    email: "",
    password: "",
    remember: null,
  });

  const { users, isLoading } = useGetUsers();

  function handleChange(event) {
    const { name, value } = event.target;
    setInputValue({ ...inputValues, [name]: value });
  }

  const notify = (msg) => {
    toast.success(msg);
  };

  function handleLoginSubmit(e) {
    e.preventDefault();
    let find = users.some(
      (user) =>
        user.email === inputValues.email &&
        user.password === inputValues.password
    );
    console.log("find:", find);

    if (find) {
      navigate("/");
      notify("Login Successfull!!");
    }
  }

  return (
    <div className="form">
      <form action="" onSubmit={(e) => handleLoginSubmit(e)}>
        <CustomInputFields
          type="email"
          label="Email"
          handleChange={handleChange}
          value={inputValues.email}
          name={"email"}
          placeholder={"Enter Email"}
          className="form__input"
          activeForm={activeForm}
        />

        <PasswordField
          type="password"
          label="password"
          handleChange={handleChange}
          value={inputValues.password}
          name={"password"}
          placeholder={"Enter Password"}
          className="form__input"
          activeForm={activeForm}
        />

        <div className="remember-me">
          <input type="checkbox" id="remember" name="remember" value="Bike" />
          <label>Remember Me</label>
        </div>

        <Button activeForm={activeForm} />
      </form>
    </div>
  );
};

export default LoginForm;

import React, { useState } from "react";
import CustomInputFields from "../reusable/CustomInputFiels";
import Button from "../reusable/Button";
import PasswordField from "../reusable/PasswordField";
const LoginForm = ({activeForm}) => {
  const [inputValues, setInputValue] = useState({
    email: "",
    password: "",
  });

  function handleChange(event) {
    const { name, value } = event.target;
    setInputValue({ ...inputValues, [name]: value });
  }
  

  function handleLoginSubmit(e){
    e.preventDefault();
    console.log("login data:" , inputValues)
  }

  return (
    <div className="form">
      <form action="" onSubmit={(e)=>handleLoginSubmit(e)}>
        <CustomInputFields
          type="email"
          label="Name"
          handleChange={handleChange}
          value={inputValues.email}
          name={"email"}
          placeholder={"Enter Email"}
          className = "form__input"
          activeForm = {activeForm}
        />

        <PasswordField
          type="password"
          label="password"
          handleChange={handleChange}
          value={inputValues.password}
          name={"password"}
          placeholder={"Enter Password"}
          className = "form__input"
          activeForm = {activeForm}


        />

        <div className="remember-me">
        <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike" />
           <label for="vehicle1">Remember Me</label>
        </div>

        <Button activeForm = {activeForm}/>

      </form>
    </div>
  );
};

export default LoginForm;

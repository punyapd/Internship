import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import FormTitle from "./FormTitle";
import FormTop from "./FormTop";
import LoginForm from "./LoginForm";
import SignupForm from "./SignupForm";
import BottomText from "../reusable/BottomText";
import InstructionText from "./InstructionText";
const FormComponent = ({ activeForm }) => {
  const navigate = useNavigate();

  const handleFormChange = () => {
    activeForm == "login" ? navigate("/signup") : navigate("/login");
  };
  return (
    <div className="form-component">
      <FormTop />
      <FormTitle text={activeForm} />

      {activeForm == "login" && <InstructionText />}
      {activeForm == "login" && <LoginForm activeForm={activeForm} />}
      {activeForm == "signup" && <SignupForm activeForm={activeForm} />}

      <BottomText activeForm={activeForm} handleFormChange={handleFormChange} />
    </div>
  );
};

export default FormComponent;

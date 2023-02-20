import React , {useState} from "react";
import Button from "../reusable/Button";
import CustomInputFields from "../reusable/CustomInputFiels";
import PasswordField from "../reusable/PasswordField";
PasswordField
const SignupForm = ({activeForm}) => {
  const [inputValues, setInputValue] = useState({
    fullName:"",
    email: "",
    password: "",
    confirmPassword:"",
  });

  function handleChange(event) {
    const { name, value } = event.target;
    setInputValue({ ...inputValues, [name]: value });
  }

  function handleSubmit(e){
    e.preventDefault()
    console.log("ivalues:" , inputValues)
  }

  return (
    <div className="form" >
      <form action="" onSubmit={(e)=>handleSubmit(e)}>
        <CustomInputFields
          type="text"
          label="FullName"
          handleChange={handleChange}
          value={inputValues.fullName}
          name={"fullName"}
          placeholder={"Enter Full Name"}
          className="form__input"
        />
        <CustomInputFields
          type="email"
          label="Email"
          handleChange={handleChange}
          value={inputValues.email}
          name={"email"}
          placeholder={"Enter Email"}
          className="form__input"
        />

        <PasswordField
          type="password"
          label="password"
          handleChange={handleChange}
          value={inputValues.password}
          name={"password"}
          placeholder={"Enter Password"}
          className="form__input"
        />

        <PasswordField
          type="password"
          label="Confirm Password"
          handleChange={handleChange}
          value={inputValues.confirmPassword}
          name={"confirmPassword"}
          placeholder={"Enter Password Again"}
          className="form__input"
        />

        

        <Button activeForm={activeForm}/>
      </form>
    </div>
  );
};

export default SignupForm;

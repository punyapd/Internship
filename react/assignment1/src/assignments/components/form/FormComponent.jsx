import React , {useState} from 'react'
import FormTitle from './FormTitle'
import FormTop from './FormTop'
import LoginForm from './LoginForm'
import SignupForm from './SignupForm'
import BottomText from '../reusable/BottomText'
import InstructionText from './InstructionText'
const FormComponent = () => {

    const [activeForm , setActiveForm] = useState("login")

    const handleFormChange = () => {
        setActiveForm(activeForm == "login" ? "signup" : "login")
    }
  return (
    <div className='form-component'>
        <FormTop />
        <FormTitle  text = {activeForm} />

        {activeForm == "login" && <InstructionText />}
        {activeForm == "login" && <LoginForm  activeForm = {activeForm}/>}
        {activeForm == "signup" && <SignupForm  activeForm={activeForm}/>}
        
        <BottomText  activeForm={activeForm} handleFormChange={handleFormChange}/>


    </div>
  )
}

export default FormComponent

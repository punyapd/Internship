import React from 'react'

const BottomText = ({activeForm , handleFormChange}) => {
    console.log("activeFrom:" , activeForm)
  return (
    <div className='form-component__bottomText'>
        <p>Don't have an Account ? <span onClick={handleFormChange}> {activeForm == "login" ? "Sign up": "Log In" }</span></p>
    </div>
  )
}

export default BottomText

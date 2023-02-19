import React from 'react'

const FormTitle = ({text}) => {
  return (
    <div className='form-title'>
        <h3> {text == 'login' ? "Log In" : "Sign Up"} to Dashboard Kit</h3>
    </div>
  )
}

export default FormTitle

import React from 'react'

const CustomInputFields = (Props) => {
 const { value, label, name, placeholder, type, handleChange  , required} = Props

  return (
    <div className='custom-input-field'>
        <label htmlFor="">{label}</label>
        <input
      type={type}
      value={value}
      name={name}
      className="form_input"
      placeholder = {placeholder}
      onChange = {(e)=>handleChange(e)}
      required = {required}
    />
    </div>
  )
}

export default CustomInputFields

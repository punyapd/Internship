import React from 'react'

const SidebarListItem = ({imagesource , text}) => {
    console.log("imag:" , imagesource)
  return (
    <div className='sidebar-list__Item'>
         {/* <img src = {imagesource} alt = "icon"/> */}
         <i className = {`icon-${imagesource}`}></i>
         <h2 className='Regular'>{text}</h2>
    </div>
  )
}

export default SidebarListItem;

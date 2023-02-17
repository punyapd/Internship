import React from 'react'

const Avatar = ({item}) => {
  return (
    <div className='ticket-list__table__ticketdetails__avatar'>
           <img src={item.avatarSource}  />

            
    </div>
  )
}

export default Avatar

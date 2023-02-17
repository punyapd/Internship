import React from 'react'

const CustomerDetails = ({item}) => {
  return (
    <div className='ticket-list__table__customerDetails'>
         <p className='ticket-list__table__customerDetails__customerName'>{item.name}</p>
         <span className='ticket-list__table__customerDetails__date'>on {item.customerDate}</span>
    </div>
  )
}

export default CustomerDetails

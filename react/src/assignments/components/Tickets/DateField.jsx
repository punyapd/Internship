import React from 'react'

const DateField = ({item}) => {
  return (
    <div className='ticket-list__table__dateField'>
         <p className='ticket-list__table__dateField__fulldate'>{item.date}</p>
         <span className='ticket-list__table__dateField__time'>{item.time}</span>
    </div>
  )
}

export default DateField

import React from 'react'
import Avatar from './Avatar'
const TicketDetails = ({item}) => {
  return (
    <div className='ticket-list__table__ticketdetails'>
        <Avatar  item={item} />

        <div className="ticket-list__table__ticketSubject">
             <p className='ticket-list__table__ticketSubject__title'>
               {item.ticketSubject}
             </p>
             <div className='ticket-list__table__ticketSubject__updateInfo'>
                Updated {item.updateDaysCount} day ago
             </div>
        </div>

    </div>
  )
}

export default TicketDetails

import React  from 'react'
import TicketRightMenu from './TicketRightMenu'
const TicketHeader = ({searchKey , onSearchChange}) => {
  
  return (
    <div className='ticket-header'>
        <h1 className='Bold-24'>Ticket</h1>

         <TicketRightMenu  searchKey = {searchKey} onSearchChange = {onSearchChange}/>
    </div>
  )
}

export default TicketHeader

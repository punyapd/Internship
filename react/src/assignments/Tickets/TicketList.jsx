import React  from 'react'
import TicketListTop from './TicketListTop'
import TicketListTable from './TicketListTable'
const TicketList = ({searchKey}) => {
  return (
    <div className='ticket-list'>
         <TicketListTop />
         <TicketListTable searchKey={searchKey}/>
    </div>
  )
}

export default TicketList

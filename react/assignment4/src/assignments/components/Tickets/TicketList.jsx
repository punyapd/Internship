import React  from 'react'
import TicketListTop from './TicketListTop'
import TicketListTable from './TicketListTable'
const TicketList = ({searchKey , filterKey , setFilterKey}) => {
  return (
    <div className='ticket-list'>
         <TicketListTop setFilterKey={setFilterKey}/>
         <TicketListTable searchKey={searchKey} filterKey = {filterKey} />
    </div>
  )
}

export default TicketList

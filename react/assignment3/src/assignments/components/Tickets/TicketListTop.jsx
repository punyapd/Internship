import React from 'react'
import SortAndFilterMenu from './SortAndFilterMenu'
const TicketListTop = ({setFilterKey , filterKey}) => {
  return (
    <div className='ticket-list__top'>
        <h2 className='ticket-list__top__title'>All Tickets</h2>
        <SortAndFilterMenu   setFilterKey = {setFilterKey}  filterKey ={filterKey}/>
    </div>
  )
}

export default TicketListTop

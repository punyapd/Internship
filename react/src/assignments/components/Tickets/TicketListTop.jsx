import React from 'react'
import SortAndFilterMenu from './SortAndFilterMenu'
const TicketListTop = ({setFilterKey}) => {
  return (
    <div className='ticket-list__top'>
        <h2 className='ticket-list__top__title'>All Tickets</h2>
        <SortAndFilterMenu   setFilterKey = {setFilterKey} />
    </div>
  )
}

export default TicketListTop

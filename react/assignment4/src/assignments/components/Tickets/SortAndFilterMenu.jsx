import React from 'react'
import Sort from './Sort'
import Filter from './Filter'
const SortAndFilterMenu = ({setFilterKey}) => {
  return (
    <div className='ticket-list__top__sortAndFilterMenu'>
        <Sort />
           
        <Filter  setFilterKey = {setFilterKey} />
    </div>
  )
}

export default SortAndFilterMenu

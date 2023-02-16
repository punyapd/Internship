import React , {useState}from 'react'
import TicketHeader from './TicketHeader'
import TicketList from './TicketList'
const Ticket = () => {
  const [searchKey  , setSearchKey] = useState("")

  const handleSearchChange = (event) =>{
     setSearchKey(event.target.value);
  }
  return (
    <div className='ticket'>
       <TicketHeader searchKey={searchKey} onSearchChange = {handleSearchChange} />
       <TicketList searchKey = {searchKey}/>
    </div>
  )
}

export default Ticket

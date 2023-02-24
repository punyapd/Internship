import React from 'react'
import Sidebar from '../sidebar/Sidebar'
import Ticket from '../Tickets/Ticket'

const Dashboard = () => {
  return (
    <div className='dashboard'>
         <Sidebar />
         
         <Ticket/>
    </div>
  )
}

export default Dashboard

import { useParams } from "react-router-dom";
import useTickets from "../../customhooks/useTickets";
import Avatar from "../components/Tickets/Avatar";
const TicketDetailsPage = () => {
  const { id } = useParams("id");
  console.log("id", id);

  const { singleTicket } = useTickets(id);

  console.log("ticket", singleTicket);
  return (
    <div className="ticket-details-info">
      <div className="ticket-details-info-container">
        <h1>Ticket Details</h1>

        <div style={{ marginInline: "auto" }}>
          <Avatar avatarSource={`../../${singleTicket.avatarSource}`} />
        </div>

        <h2>Name:{singleTicket.name}</h2>

        <h3>Ticket Name:{singleTicket.ticketName}</h3>
        <h3>Ticket Id:{singleTicket.id} </h3>
        <h3>Date:{singleTicket.date}</h3>
        <h3>priority:{singleTicket.priority}</h3>
      </div>
    </div>
  );
};

export default TicketDetailsPage;

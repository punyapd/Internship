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
          <Avatar avatarSource="../../man.png" />
        </div>

        <h2>Name:Tom Cruise</h2>

        <h3>Ticket Name:Contact Email Not Linked</h3>
        <h3>Ticket Id: </h3>
        <h3>Date:</h3>
        <h3>priority:</h3>
      </div>
    </div>
  );
};

export default TicketDetailsPage;

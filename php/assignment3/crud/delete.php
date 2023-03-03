<?php include 'conn.php';
$id = $_GET['id']; // get id through query string
$sql = "DELETE fROM `Notes` WHERE id = $id";
$result = mysqli_query($conn, $sql);

if ($result) {
    header("location:index.php");
}

<?php include 'conn.php'; ?>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (!empty($_POST["username"]) && !empty($_POST["email"]) && !empty($_POST["password"])) {

        $username = $_POST["username"];
        $email = $_POST["email"];
        $password = $_POST["password"];

        echo $username;
        echo $email;
        echo $password;
        // Sql query to be executed
        $sql = "INSERT INTO `users` (`username`, `email` , `password`) VALUES ('$username', '$email' , '$password')";
        $result = mysqli_query($conn, $sql);


        if ($result) {
            header("location:login.php");
        } else {
            echo "The record was not inserted successfully because of this error ---> " . mysqli_error($conn);
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
</head>

<body>
    <form action="action.php" method="get">
        <h1>Signup</h1>
        <input type="text" name="username" placeholder="Enter username" required /> <br><br>

        <input type="email" name="email" placeholder="Enter Email" required /> <br><br>
        <input type="password" name="password" placeholder="Enter password" required /><br><br>
        <input type="submit" value="signup" />
    </form>
</body>

</html>
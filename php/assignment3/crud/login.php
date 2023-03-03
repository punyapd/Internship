<?php include 'conn.php'; ?>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (!empty($_POST["email"]) && !empty($_POST["password"])) {

        $email = $_POST['email'];
        $password = $_POST['password'];

        //to prevent from mysqli injection  
        $email = stripcslashes($email);
        $password = stripcslashes($password);
        $email = mysqli_real_escape_string($conn, $email);
        $password = mysqli_real_escape_string($conn, $password);

        $sql = "SELECT * FROM users WHERE email = '$email' and password = '$password'";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
        $count = mysqli_num_rows($result);

        if ($count == 1) {
            header("location:index.php");
            echo "<h1><center> Login successful </center></h1>";
        } else {
            echo "<h1><center> Login failed. Invalid email or password.<center></h1>";
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
    <title>login</title>
</head>

<body>
    <form action=" <?php echo $_SERVER['PHP_SELF']; ?>" method="post">
        <h1>Login</h1>

        <input type="email" name="email" placeholder="Enter Email" required /> <br><br>
        <input type="password" name="password" placeholder="Enter password" required /><br><br>
        <input type="submit" value="login" />
    </form>
</body>

</html>
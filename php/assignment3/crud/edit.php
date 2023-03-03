<?php
include 'conn.php';
$id = $_GET['id'];

$sql = "SELECT  * FROM Notes WHERE id = $id";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {
    $data  = $row;
}



if ($_SERVER['REQUEST_METHOD'] = 'POST') {
    if (!empty($_POST["title"]) && !empty($_POST["noteinput"])) {

        $title = $_POST["title"];
        $description = $_POST["noteinput"];

        // Sql query to be executed

        try {

            $sql1 = "UPDATE Notes SET
            id = '$id',
            title = '$title',
            desc = '$description'
            WHERE id = '$id';";

            $result1 = mysqli_query($conn, $sql1);
        } catch (mysqli_sql_exception $e) {
            var_dump($e);
            exit;
        }

        if ($result1) {
            $update = true;
        } else {
            echo "The record was not updated successfully because of this error ---> " . mysqli_error($conn);
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
    <title>Edit Notes</title>
</head>

<body>
    <div class="container active">

        <form action="<?php echo htmlspecialchars(basename($_SERVER['REQUEST_URI'])); ?>" method="post">
            <h1>
                Edit Note
            </h1>

            <input type="text" name="title" value="<?php echo $data['title'] ?>" /><br><br>
            <textarea name="noteinput" id="noteinput" cols="50" rows="20"><?php echo $data['desc'] ?></textarea> <br><br>

            <button type="submit">update </button>


        </form>
    </div>
</body>

</html>
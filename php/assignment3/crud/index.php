<?php include 'conn.php'; ?>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  if (!empty($_POST["title"]) && !empty($_POST["noteinput"])) {

    $title = $_POST["title"];
    $description = $_POST["noteinput"];

    // Sql query to be executed
    $sql = "INSERT INTO `Notes` (`title`, `desc`) VALUES ('$title', '$description')";
    $result = mysqli_query($conn, $sql);


    if ($result) {
      $insert = true;
    } else {
      echo "The record was not inserted successfully because of this error ---> " . mysqli_error($conn);
    }
  }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="https://kit.fontawesome.com/5c79833193.css" crossorigin="anonymous" />
  <link rel="stylesheet" href="style.css" />
  <title>Document</title>
</head>

<body>
  <div class="container active">
    <header>
      <button id="add" title="Add new note">
        <i class="fi fi-plus-a"></i>
      </button>
      <h3>Notes</h3>

    </header>
    <aside>

      <div class="search-box">
        <input type="text" id="search" placeholder="Search" />
      </div>
      <ul id="notelist">
        <?php
        $sql = "SELECT * FROM `Notes`";
        $result = mysqli_query($conn, $sql);
        $sno = 0;
        while ($row = mysqli_fetch_assoc($result)) {
          $sno = $sno + 1;
        ?>
          <li>

            <span><?php echo $row['title'] ?></span>

            <span>
              <a href="edit.php?id= <?php echo $row['id'] ?> "> <button>Edit</button></a>
              <a href="delete.php?id= <?php echo $row['id'] ?>"> <button>Delete</button></a>

            </span>
          </li>


        <?php } ?>
      </ul>
    </aside>
    <main>
      <form action=" <?php echo $_SERVER['PHP_SELF']; ?>" method="post">
        <input type="text" name="title" placeholder="Enter Note title" required />
        <input type="submit" value="save" />
        <textarea name="noteinput" id="noteinput" cols="50" rows="50" placeholder="Create new note"></textarea>
      </form>
    </main>
  </div>
</body>

</html>
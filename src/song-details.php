<?php
$db = new mysqli('localhost', 'root', '', 'my_harmony');

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Fetch song details
    $result = $db->query("SELECT * FROM songs WHERE id=$id");
    $song = $result->fetch_assoc();

    $db->close();
} else {
    // Redirect if no ID is provided
    header('Location: index.php');
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $song['title']; ?> | My Harmony</title>

    <!-- link to custom css -->
    <link rel="stylesheet" href="../assets/css/main.css">

    <!-- link to favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico" type="image/x-icon">

    <!-- link to custom js -->
    <script src="../assets/js/scripts.js"></script>
</head>
<body>
<div class="landing-page">
        <header id="navbar">
            <div class="container">
                <a href="./index.php" class="logo"><img src="../assets/images/favicon.ico" alt="logo">My Harmony</a>
                <ul class="links">
                    <a href="#lyrics"><li>View Lyrics</li></a>
                </ul>
            </div>
        </header>

    </div>

    <section id="lyrics" class="details container">
        <h2>Song Title: <?php echo isset($song['title']) ? $song['title'] : 'Title not Available'; ?></h2>

        
        <h3>Lyrics</h3>
        <p>
            <?php
            echo isset($song['lyrics']) ? $song['lyrics'] : 'Lyrics not Available';
            ?>
        </p>


        
    </section>
</body>
</html>
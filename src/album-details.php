<?php
$config = include '../config.php';

// Get database connection parameters
$host = $config['DB_HOST'];
$username = $config['DB_USER'];
$password = $config['DB_PASSWORD'];
$database = $config['DB_DATABASE'];

// Create connection
$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Fetch album details
    $result = $conn->query("SELECT * FROM albums WHERE id=$id");
    $album = $result->fetch_assoc();

    // Fetch songs
    $result = $conn->query("SELECT * FROM songs WHERE album_id=$id");
    $songs = $result->fetch_all(MYSQLI_ASSOC);

    $conn->close();
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
    <title>
        <?php echo $album['title']; ?> | My Harmony
    </title>

    <!-- link to custom css -->
    <link rel="stylesheet" href="./assets/css/main.css">

    <!-- link to favicon -->
    <link rel="shortcut icon" href="./assets/images/favicon.ico" type="image/x-icon">

    <!-- link to custom js -->
    <script src="./assets/js/scripts.js"></script>
</head>

<body>
    <div class="landing-page">
        <header id="navbar">
            <div class="container">
                <a href="./index.php" class="logo"><img src="./assets/images/favicon.ico" alt="logo">My Harmony</a>
                <ul class="links">
                    <a href="#songs">
                        <li>Browse Songs</li>
                    </a>
                </ul>
            </div>
        </header>

    </div>

    <section id="songs" class="details container">
        <h2>Album:
            <?php echo $album['title']; ?>
        </h2>
        <h4>Release Year:
            <?php echo $album['release_year']; ?>
        </h4>
        <h3>Songs</h3>

        <ul>
            <?php foreach ($songs as $song): ?>
                <li>
                    <?php
                    echo $song['title'];
                    echo '<a href="song-details.php?id=' . $song['id'] . '" class="read-more">';
                    echo ' View Song';
                    echo '</a>';
                    ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </section>
</body>

</html>
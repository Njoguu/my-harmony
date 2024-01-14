<?php
$db = new mysqli('localhost', 'root', '', 'my_harmony');

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Fetch musician details
    $result = $db->query("SELECT * FROM artists WHERE id=$id");
    $musician = $result->fetch_assoc();

    // Fetch albums
    $result = $db->query("SELECT * FROM albums WHERE musician_id=$id");
    $albums = $result->fetch_all(MYSQLI_ASSOC);

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
    <title>
        <?php echo $musician['name']; ?> | My Harmony
    </title>

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
                    <a href="#albums">
                        <li>Browse Albums</li>
                    </a>

                </ul>
            </div>
        </header>

        <div class="content">
            <div class="container">
                <div class="info">
                    <h1>
                        <?php echo $musician['name']; ?>
                    </h1>
                    <p>
                        <?php echo $musician['description']; ?>
                    </p>
                    <a href="#albums">
                        <button>Browse Albums</button>
                    </a>
                </div>
                <div class="image">
                    <img src="<?php echo $musician['photo_url']; ?>" alt="<?php echo $musician['name']; ?> ">
                </div>
            </div>
        </div>
    </div>

    <section id="albums" class="details container">
        <h2>Albums</h2>

        <ul>
            <?php foreach ($albums as $album): ?>
                <li>
                    <?php
                    echo $album['title'] . ' (' . $album['release_year'] . ')';
                    echo '<a href="album-details.php?id=' . $album['id'] . '" class="read-more">';
                    echo ' View Album';
                    echo '</a>';
                    ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </section>

</body>

</html>
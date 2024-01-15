<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | My Harmony</title>

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
                    <li>Home</li>
                    <li>About</li>
                    <a href="#artists">
                        <li>Browse Artists</li>
                    </a>
                </ul>
            </div>
        </header>

        <div class="content">
            <div class="container">
                <div class="info">
                    <h1>Welcome to My Harmony</h1>
                    <p>Discover a selection of my favorite Gospel artists in Kenya whose performances and heartfelt solo
                        expressions span various styles that enrich your soul.</p>
                    <a href="#artists">
                        <button>Browse Artists</button>
                    </a>
                </div>
                <div class="image">
                    <img
                        src="https://static.vecteezy.com/system/resources/previews/012/487/457/non_2x/man-listening-music-free-vector.jpg">
                </div>
            </div>
        </div>
    </div>

    <section id="artists" class="details container">
        <h2>My Favourite Artists</h2>

        <div class="articles">
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

            $result = $conn->query("SELECT * FROM artists");

            while ($row = $result->fetch_assoc()) {
                echo '<article>';
                echo '<div class="article-wrapper">';
                echo '<figure>';
                echo '<img src="' . $row['photo_url'] . '" alt="' . $row['name'] . '" />';
                echo '</figure>';
                echo '<div class="article-body">';
                echo '<h3>' . $row['name'] . '</h3>';
                echo '<p>';
                echo '' . $row['description'] . '';
                echo '</p>';
                echo '<a href="artist-details.php?id=' . $row['id'] . '" class="read-more">';
                echo 'More Details';
                echo '<svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">';
                echo '<path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />';
                echo '</svg>';
                echo '</a>';
                echo '</div>';
                echo '</div>';
                echo '</article>';
            }

            $conn->close();
            ?>
            </article>
        </div>
    </section>

</body>

</html>
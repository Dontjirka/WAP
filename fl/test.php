<?php
$con = @mysqli_connect("127.0.0.1", "root", "", "flights", "3306");
if ($con === false){
    die("DB error");
}
mb_internal_encoding('UTF-8');
mysqli_query($con, "SET CHARACTER SET UTF8");
?>
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>airport</title>
</head>
<body>
    <?php
$q= "SELECT * FROM airport";
$result = mysqli_query($con, $q);
echo '<table>';
while (($airport = mysqli_fetch_array($result, MYSQLI_ASSOC))!== null) {
    echo '<tr><th class="code">code</th>'.'<td>' . $airport['code'] . '</td></tr>';
    echo '<tr><th class = "name">name</th>'.'<td class ="tdd">' . $airport['name'] . '</td></tr>';

}
echo '</table>';
    ?>
</body>
</html>
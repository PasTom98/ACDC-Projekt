<?php

$connect = mysqli_connect(
    'db',
    'admin',
    'adm1n',
    'ACDC_LAMP',
    3306
);

$query = 'SELECT * FROM authors';
$result = mysqli_query($connect, $query);

echo '<h1> SQL Content:</h1>';

while ($record = mysqli_fetch_assoc($result)) {
    echo '<h2>' . $record['first_name'] . '</h2>';
    echo '<p>' . $record['last_name'] . '</p>';
    echo '<p>' . $record['email'] . '</p>';
}

<?php

$host = 'localhost';
$db = 'rakesh';
$user = 'root';
$pass = '';

$pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8", $user, $pass);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$url = 'https://dummyjson.com/products';

$curl = curl_init();
curl_setopt_array($curl, array(
    CURLOPT_URL => $url,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'GET',
   
));

$response = curl_exec($curl);

$data = json_decode($response, true);
$productData = $pdo->query("SELECT name, price, rating, description FROM products")->fetchAll(PDO::FETCH_ASSOC);

if (count($productData) <= 200):
    $count = 200 - count($productData);
    $usedArray = array_slice($data['products'], 0, $count);
    unset($data);
    if (!empty($usedArray)):
        insertData($pdo, $usedArray);
    endif;
endif;
function insertData($pdo, $products)
{

    $insertsql = $pdo->prepare("INSERT INTO products (name, price, rating, description) VALUES (:name, :price, :rating, :description)");
    foreach ($products as $product) {
        $insertsql->execute([
            ':name' => $product['title'],
            ':price' => $product['price'],
            ':rating' => $product['rating'],
            ':description' => $product['description']
        ]);
    }
}


$a = 1;

$sql_avg = "SELECT AVG(price) AS avg_price, AVG(rating) AS avg_rating FROM products";
$data_avg = $pdo->query($sql_avg);
$avg_data = $data_avg->fetch();
$avg_price = number_format($avg_data['avg_price'], 2);
$avg_rating = number_format($avg_data['avg_rating'], 2);

$sql_min_max = "SELECT MIN(price) AS min_price, MAX(price) AS max_price FROM products";
$data_min_max = $pdo->query($sql_min_max);
$min_max_data = $data_min_max->fetch();
$min_price = number_format($min_max_data['min_price'], 2);
$max_price = number_format($min_max_data['max_price'], 2);

$sql_top_rated = "SELECT name, rating FROM products group by name ORDER BY rating DESC LIMIT 3";
$top_rated = $pdo->query($sql_top_rated);
$top_rated_products = $top_rated->fetchAll();

$sql_expensive = "SELECT name, price FROM products group by name ORDER BY price DESC LIMIT 3";
$data_expensive = $pdo->query($sql_expensive);
$expensive_products = $data_expensive->fetchAll();


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">


    <link href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">


    <style>
        .col-card .card {
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .col-card .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
        }

        h4,
        h5 {
            font-weight: bold;
        }

        .text-primary {
            color: #007bff;
        }

        .text-success {
            color: #28a745;
        }

        .text-danger {
            color: #dc3545;
        }

        table.dataTable thead>tr>th.sorting {
            cursor: pointer;
            position: relative;
            padding-right: 26px;
            background-color: #cbcbcb;
        }
    </style>
</head>

<body>
    <div class="container-fuild  py-5 px-4">
        <div class="row col-card">
            <div class="col-md-4 d-flex align-items-stretch px-2">
                <div class="card shadow-sm rounded border-0 p-3 bg-light w-100">
                    <!-- <h4 class="mb-3 text-primary">Product Insights</h4> -->
                    <p><strong>Average Price:</strong> $<?= $avg_price; ?></p>
                    <p><strong>Average Rating:</strong> <?= $avg_rating; ?> / 5</p>
                    <p><strong>Price Range:</strong> $<?= $min_price; ?> - $<?= $max_price; ?></p>
                </div>
            </div>
            <div class="col-md-4 d-flex align-items-stretch px-2">
                <div class="card shadow-sm rounded border-0 p-3 bg-light w-100">
                    <h5 class="mb-3 text-success">Top 3 Highest Rated Products:</h5>
                    <ul class="list-unstyled">
                        <?php foreach ($top_rated_products as $product): ?>
                            <li>
                                <i class="bi bi-star-fill text-warning"></i>
                                <?php echo htmlspecialchars($product['name']); ?> - Rating: <?php echo $product['rating']; ?> / 5
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 d-flex align-items-stretch px-2">
                <div class="card shadow-sm rounded border-0 p-3 bg-light w-100">
                    <h5 class="mb-3 text-danger">Top 3 Most Expensive Products:</h5>
                    <ul class="list-unstyled">
                        <?php foreach ($expensive_products as $product): ?>
                            <li>
                                <i class="bi bi-tag-fill text-primary"></i>
                                <?php echo htmlspecialchars($product['name']); ?> - Price: $<?php echo number_format($product['price'], 2); ?>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </div>
        </div>


        <div class="row py-4 " id="table">

            <div class="card py-3">

                <table id="productsTable" class="table table-bordered table-striped py-2">
                    <thead>
                        <tr>
                            <th>Sl.No</th>
                            <th>Name</th>
                            <th>Price ($)</th>
                            <th>Rating</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($productData as $product): ?>
                            <tr>
                                <td><?= $a++; ?></td>
                                <td><?= $product['name']; ?></td>
                                <td><?= number_format($product['price'], 2); ?></td>
                                <td><?= $product['rating']; ?></td>
                                <td><?= $product['description']; ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>


    </div>


    <script>
        $(document).ready(function() {
            $('#productsTable').DataTable({
                paging: true,
                lengthChange: true,
                searching: true,
                ordering: true,
                info: true,
                autoWidth: false,
                pageLength: 5,
                dom: "<'row align-items-center mb-3'<'col-sm-6'i><'col-sm-6'f>>" +
                    "<'row'<'col-sm-12'tr>>" +
                    "<'row'<'col-sm-12'p>>",
                language: {
                    search: "",
                    searchPlaceholder: "Search",
                    info: "<b>Total Product </b>: _TOTAL_",
                    infoEmpty: "No entries available",
                },
            });

            // Optional: Apply border radius to search input
            $('#productsTable_filter input').css('border-radius', '6px');
        });
    </script>

</body>

</html>
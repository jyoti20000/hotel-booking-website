<?php

require('include_1/essentials.php');
require('include_1/db_config.php');

adminLogin();


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Bookings Records </title>

    <?php require('include_1/links.php'); ?>


</head>

<body class="bg-light">
    <?php require('include_1/header.php'); ?>
    <div class="container-fluid" id="main-content">
        <div class="row">
            <div class="col-lg-10 ms-auto p-4 overflow-hidden">
                <h3 class="mb-4">Bookings Records</h3>

                <div class="card border-0 shadow-sm mb-4">
                    <div class="card-body">
                        <div class="text-end mb-4">
                            <input type="text" id="search_input" oninput="get_bookings(this.value)"
                                class="form-control shadow-none w-25 ms-auto" placeholder="Type to search here.">
                        </div>

                        <div class="table-responsive">
                            <table class="table table-hover border" style="min-width: 1200px;">
                                <thead>
                                    <tr class="bg-dark text-light">
                                        <th scope="col">#</th>
                                        <th scope="col">User Details</th>
                                        <th scope="col">Room Details</th>
                                        <th scope="col">Bookings Details</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="table-data">

                                </tbody>
                            </table>
                        </div>

                        <nav>
                            <ul class="pagination mt-3" id="table-pagination">
                                
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>







    <?php require('include_1/scripts.php'); ?>

    <script src="scripts/bookings_records.js"></script>


</body>

</html>
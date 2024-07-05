<?php
require('admin/include_1/db_config.php');
require('admin/include_1/essentials.php');

// require('include/razorpay-php/Razorpay.php');


date_default_timezone_set("Asia/Kolkata");

session_start();

if (!(isset($_SESSION['login']) && $_SESSION['login'] == true)) 
{
    redirect('index.php');
}

if (isset($_POST['submit']))
{
   $frm_data = filteration($_POST);


   $query1 = "INSERT INTO `booking_order`( `user_id`, `room_id`, `check_in`, `check_out`) VALUES (?,?,?,?)";

    insert($query1,[$_SESSION['uId'],$_SESSION['room']['id'],$frm_data['checkin'],$frm_data['checkout']],'iiss');

    $booking_id = mysqli_insert_id(($conn));

    $query2 = "INSERT INTO `booking_details1`(`booking_id`, `room_name`, `price`, `total_pay`, `user_name`, `phonenum`, `email`, `address`, `child`, `adult`) VALUES (?,?,?,?,?,?,?,?,?,?)";

    insert($query2,[$booking_id, $_SESSION['room']['name'],$_SESSION['room']['price'],$_SESSION['room']['payment'],$frm_data['name'],$frm_data['phonenum'],$frm_data['email'],$frm_data['address'],$frm_data['child'],$frm_data['adult']],'isssssssss');

    echo<<<data
        <div class="col-12-px-4">
            <p class="fw-bold alert alert-success">
               <i class="bi bi-check-circle-fill"></i>
               <h1 style='color:red'>Your Payment is Done! You have successfully booked this room .......</h1>
                 <br><br>
                <h2><a href = 'bookings.php'>Go to Bookings</a></h2>
            </p>
        </div>
    data;

    
    $upd_query = "UPDATE `booking_order` SET `booking_status` = 'booked' WHERE `booking_id`='$booking_id'";

    mysqli_query($conn,$upd_query);

    
}
?>







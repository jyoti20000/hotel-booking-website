<?php
require('../include_1/db_config.php');
require('../include_1/essentials.php');
adminLogin();



if (isset($_POST['booking_analytics'])) {

  $frm_data = filteration($_POST);

  $condition="";

  if($frm_data['period']==1)
  {
    $condition="WHERE datentime BETWEEN DATE_SUB(NOW(), INTERVAL 30 DAY) AND NOW()";
  }
  else if($frm_data['period']==2)
  {
    $condition="WHERE datentime BETWEEN DATE_SUB(NOW(), INTERVAL 90 DAY) AND NOW()";
  }

  else if($frm_data['period']==3)
  {
    $condition="WHERE datentime BETWEEN DATE_SUB(NOW(), INTERVAL 1 YEAR) AND NOW()";
  }


  $result = mysqli_fetch_assoc(mysqli_query($conn, "SELECT bo.*, bd.*,
      COUNT(bo.booking_id) AS total_bookings,
      SUM(bd.total_pay) AS total_amt,
    
      COUNT(CASE WHEN bo.booking_status='booked' AND bo.arrival=1 THEN 1 END) AS active_bookings,
      SUM(CASE WHEN bo.booking_status='booked' AND bo.arrival=1 THEN total_pay END) AS active_amt,
    
      COUNT(CASE WHEN bo.booking_status='cancelled' AND bo.refund=1 THEN 1 END) AS cancelled_bookings,
      SUM(CASE WHEN bo.booking_status='cancelled' AND bo.refund=1 THEN total_pay END) AS cancelled_amt
    
      FROM booking_order bo
      INNER JOIN booking_details1 bd ON bo.booking_id = bd.booking_id
      $condition"));

    $output = json_encode($result);

    echo $output;
}

if (isset($_POST['user_analytics'])) {

  $frm_data = filteration($_POST);

  $condition="";

  if($frm_data['period']==1)
  {
    $condition="WHERE datentime BETWEEN DATE_SUB(NOW(), INTERVAL 30 DAY) AND NOW()";
  }
  else if($frm_data['period']==2)
  {
    $condition="WHERE datentime BETWEEN DATE_SUB(NOW(), INTERVAL 90 DAY) AND NOW()";
  }

  else if($frm_data['period']==3)
  {
    $condition="WHERE datentime BETWEEN DATE_SUB(NOW(), INTERVAL 1 YEAR) AND NOW()";
  }

  $total_review = mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(sr_no) AS `count` 
    FROM `rating_review` $condition"));

  $total_queries = mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(sr_no) AS `count` 
    FROM `user_queries` $condition "));

  $total_new_reg = mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(id) AS `count` 
    FROM `user_cred1` $condition"));

    $output = ['total_queries' => $total_queries['count'],
      'total_reviews' => $total_review['count'],
      'total_new_reg' => $total_new_reg['count']
    ];

    $output = json_encode($output);
    echo $output;
}
?>
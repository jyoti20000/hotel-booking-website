<?php
require('../include_1/db_config.php');
require('../include_1/essentials.php');
adminLogin();



if (isset($_POST['get_bookings'])) {

  $frm_data = filteration($_POST);

  $query = "SELECT bo.*, bd.* FROM `booking_order` bo 
   INNER JOIN `booking_details1` bd ON bo.booking_id = bd.booking_id
   WHERE (bo.user_id LIKE ? OR bd.phonenum LIKE ? OR bd.user_name LIKE ?)
   AND (bo.booking_status=? AND bo.arrival=?) ORDER BY bo.booking_id ASC";

  $res = select($query,["%$frm_data[search]%","%$frm_data[search]%","%$frm_data[search]%","booked",0],'ssssi');
  
  $i = 1;
  $table_data = "";

  if(mysqli_num_rows($res)==0)
  {
    echo "<b>No Data Found!<b/>";
    exit;
  }

  while ($data = mysqli_fetch_assoc($res)) {
    $date = date("d-m-Y", strtotime($data['datentime']));
    $checkin = date("d-m-Y", strtotime($data['check_in']));
    $checkout = date("d-m-Y", strtotime($data['check_out']));

    $table_data .= "
      <tr>
          <td>$i</td>
          <td>
            <span class='badge bg-primary'>
              User_ID: $data[user_id]
            </span>
            <br>
            <b>Name:</b> $data[user_name]
            <br>
            <b>Phone No:</b> $data[phonenum]
            <br>
            <b>Email:</b> $data[email]
          </td>
          <td>
            <b>Room:</b> $data[room_name]
            <br>
            <b>Price:</b> ₹$data[price]
          </td>
          <td>
            <b>Check in:</b> $checkin
            <br>
            <b>checkout:</b> $checkout
            <br>
            <b>Paid:</b> ₹$data[total_pay]
            <br>
            <b>Date:</b> $date
          </td>
          <td>
            <button type='button' onclick='assign_room($data[booking_id])' class='btn text-white btn-sm fw-bold custom-bg shadow-none ' data-bs-toggle='modal' data-bs-target='#assign-room'>
              <i class='bi bi-check2-square'></i> Assign Room
            </button>
            <br>
            <br>
            <button type='button' onclick='cancel_booking($data[booking_id])' class='mb-2 btn btn-danger btn-sm fw-bold shadow-none'>
              <i class='bi bi-trash'></i> Cancel Bookings
            </button>
          </td>  
        </tr>
    ";
    $i++;
  }
  echo $table_data;
}


if (isset($_POST['assign_room'])) {
  $frm_data = filteration($_POST);

  $query = "UPDATE  `booking_order` bo 
  INNER JOIN `booking_details1` bd 
  ON bo.booking_id = bd.booking_id
  SET bo.arrival = ?, bo.rate_review = ?, bd.room_no = ?
  WHERE bo.booking_id = ?";

  $values = [1, 0, $frm_data['room_no'], $frm_data['booking_id']];

  $res = update($query, $values, 'iisi');

  echo ($res == 2) ? 1 : 0; // $res==2 indicated that there are two table which are affected
}

if (isset($_POST['cancel_booking'])) {
  $frm_data = filteration($_POST);

  $query = "UPDATE `booking_order` SET `booking_status`=?,  `refund`=? WHERE `booking_id`=?";

  $values = ['cancelled',0,$frm_data['booking_id']];

  $res = update($query, $values, 'sii');

  echo $res; 
  

}
















?>
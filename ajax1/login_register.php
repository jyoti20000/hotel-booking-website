<?php
require('../admin/include_1/db_config.php');
require('../admin/include_1/essentials.php');
//require('../include/sendgrid/sendgrid-php.php');

date_default_timezone_set("Asia/Kolkata");

// function send_mail($uemail,$name,$token)
// {
//    $email = new \SendGrid\Mail\Mail(); 
//    //$email->setFrom(SENDGRID_EMAIL, SENDGRID_NAME);
//    $email->setFrom("mushusharma123@gmail.com", "Mushkan Sharma");
//    $email->setSubject("Account Verification Link");

//    $email->addTo($uemail, $name);

//    $email->addContent(
//             "text/html", 
//             "
//                Click the link to confirm your email: <br>
//                <a href='".SITE_URL."email_confirm.php?email_confirmation&email=$uemail&token=$token"."'>
//                CLICK ME
//                </a>
//             "
//         );

//    $sendgrid = new \SendGrid(SENDGRID_API_KEY);
//     try 
//     {
//         ($sendgrid->send($email));
//          return 1;

//     }
//     catch (Exception $e)
//      {
//         return 0;

//      }
// }

if (isset($_POST['register'])) {
    $data = filteration($_POST);

    // match password and confirmpass

    if ($data['pass'] != $data['cpass']) {
        echo 'pass_mismatch';
        exit;
    }

    // check user exist or not

    $u_exist = select("SELECT * FROM `user_cred1` WHERE `email` = ? OR `phonenum` = ? LIMIT 1", [$data['email'], $data['phonenum']], "si");

    if (mysqli_num_rows($u_exist) != 0) {
        $u_exist_fetch = mysqli_fetch_assoc($u_exist);
        echo ($u_exist_fetch['email'] == $data['email']) ? 'email_already' : 'phone_already';
        exit;
    }

    // upload user image to server

    $img = uploadUserImage($_FILES['profile']);

    if ($img == 'inv_img') {
        echo 'inv_img';
        exit;
    } else if ($img == 'upd_failed') {
        echo 'upd_failed';
        exit;
    }

    // send confirmation link

    // $token = bin2hex(random_bytes(16));
    // if(!send_mail($data['email'],$data['name'],$token))
    // {
    //     echo 'mail_failed';
    //     exit;
    // }

    //$enc_pass = password_hash($data['pass'], PASSWORD_BCRYPT);

    // $query = "INSERT INTO `user_cred`(`name`, `email`, `phonenum`, `address`, `pincode`, `dob`, `profile`, `pass`,`token`) VALUES (?,?,?,?,?,?,?,?,?)";
    // $values = [$data['name'], $data['email'], $data['phonenum'], $data['address'], $data['pincode'], $data['dob'], $img, $enc_pass, $token];

    $query = "INSERT INTO `user_cred1`(`name`, `email`, `phonenum`, `address`, `pincode`, `dob`, `pass`, `profile`) VALUES (?,?,?,?,?,?,?,?)";
    $values = [$data['name'], $data['email'], $data['phonenum'], $data['address'], $data['pincode'], $data['dob'], $data['pass'],$img];
    if (insert($query, $values, 'ssssssss')) {
        echo 1;
    } else {
        echo 'ins_failed';
    }
}

if (isset($_POST['login']))
{
    $data = filteration($_POST);
    $u_exist = select("SELECT * FROM `user_cred1` WHERE `email`=? OR `phonenum`=? LIMIT 1", [$data['email_mob'], $data['email_mob']], "si");

    if (mysqli_num_rows($u_exist) == 0) 
    {
        echo 'inv_email_mob';
        
    } 
    else 
    {
        $u_fetch = mysqli_fetch_assoc($u_exist);

        if ($u_fetch['status'] == 0) 
        {
            echo 'inactive';
        } 
        // else if (!password_verify($data['pass'], $u_fetch['pass'])) 
        // {
        //     echo 'invalid_pass';
        // } 
         else if ($data['pass'] != $u_fetch['pass']) {
            echo 'invalid_pass';
            
        }
        else 
        {
            session_start();
            $_SESSION['login'] = true;
            $_SESSION['uId'] = $u_fetch['id'];
            $_SESSION['uName'] = $u_fetch['name'];
            $_SESSION['uPic'] = $u_fetch['profile'];
            $_SESSION['uPhone'] = $u_fetch['phonenum'];
            echo 1;
        }
    }
}

if (isset($_POST['forgot_pass']))
{
    $data = filteration($_POST);
    $u_exist = select("SELECT * FROM `user_cred1` WHERE `email`=? OR `phonenum`=? LIMIT 1", [$data['email_mob'], $data['email_mob']], "ss");
    if (mysqli_num_rows($u_exist)) 
    {
       $res = mysqli_fetch_assoc($u_exist);

       $msg =  "<h3 style='color:blue'>Your Passwrod is :".$res['pass']."</h3>";
        
    } 
    else
    {
        $msg= "<h3 style='color:red'>Invalid  details</h3>";
    
        //     $u_fetch = mysqli_fetch_assoc($u_exist);

    //     if ($u_fetch['status'] == 0) 
    //     {
    //         echo 'inactive';
    //     } 
    //     else
    //     {

       }
    }








?>
<?php

/**
 * https://github.com/suendri
 * --
 * e-mail : suendri@gmail.com
 * WA     : 62852-6361-6901
 * --
 */

namespace App\Models;

use App\Core\Model;

class Login extends Model
{
     public function proses()
     {
          $email = $_POST['email'];
          $password = $_POST['password'];

          $query = "SELECT * FROM tb_users WHERE user_email=:user_email LIMIT 1";
          $stmt = $this->db->prepare($query);
          $stmt->bindParam(":user_email", $email);
          $stmt->execute();

          $row = $stmt->fetch();

          if (!empty($row) and password_verify($password, $row['user_password'])) {
               return $row;
          }
     }
}

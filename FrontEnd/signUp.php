<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!--Link Style.css
    <link rel="stylesheet" href="style.css">
    -->
  <!--Boostrap CDN-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


  <style>
    body {
      margin: 0;
      padding: 0;
      background: linear-gradient(100deg, #000915, #003465);
    }

    button {
      border-radius: 30px;
    }

    h1 {
      font-family: "palatino linotype", palatino, serif;
      color: azure;
    }

    label {
      color: azure;
    }

    .userImg {
      width: 30px;
      height: 30px;
      margin-top: 10px;
    }

    .pwImg {
      width: 30px;
      height: 30px;
      margin-top: 10px;
    }

    .nameImg {
      width: 30px;
      height: 30px;
      margin-top: 10px;
    }

    .emailImg {
      width: 30px;
      height: 30px;
      margin-top: 10px;
    }

    .userName {
      display: flex;
      flex-direction: row;
    }

    .password {
      display: flex;
      flex-direction: row;
    }

    .email {
      display: flex;
      flex-direction: row;
    }

    .name {
      display: flex;
      flex-direction: row;
    }

    .form-control {
      margin-left: 10px;
    }

    .btn-signUp {
      background-color: #06d001 !important;
      border-color: #06d001;
    }

    .create {
      text-decoration: none;
      color: aquamarine;
    }

    .bg {
      background-color: #fdfeff47;
      -webkit-backdrop-filter: blur(5px);
      backdrop-filter: blur(5px);
      height: 100%;
      width: 100%;
      border-radius: 20px;
    }
  </style>
  <title>Sign Up</title>
</head>

<body class="body">
  <section class="vh-100">
    <div class="container py-5 h-100">
      <div class="row d-flex align-items-center justify-content-center h-100">
        <div class="col-md-8 col-lg-7 col-xl-6">
          <img id="genarateImg" class="img-fluid " src="src/img1.png" alt="Register img">
        </div>
        <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
          <div class="bg">
            <form method="post" action="#" id="signUp-Form">
              <h1 class="text-center">Sign Up</h1>
              <!-- email input -->
              <div data-mdb-input-init class="form-outline m-4 email">
                <img src="src/Email.png" alt="user" class="emailImg">
                <input id="email" type="email" name="email" class="form-control form-control-lg" placeholder="Email" />
              </div>

              <!-- name input -->
              <div data-mdb-input-init class="form-outline m-4 name">
                <img src="src/Id-card.png" alt="user" class="nameImg">
                <input id="name" type="text" name="name" class="form-control form-control-lg" placeholder="Name" />
              </div>

              <!-- userName input -->
              <div data-mdb-input-init class="form-outline m-4 userName">
                <img src="src/User.png" alt="user" class="userImg">
                <input id="userName" type="text" name="userName" class="form-control form-control-lg" placeholder="UserName" />
              </div>

              <!-- Password input -->
              <div data-mdb-input-init class="form-outline m-4 password">
                <img src="src/Padlock.png" alt="pw" class="pwImg">
                <input id="password" type="password" name="password" class="form-control form-control-lg" placeholder="Password" />
              </div>
              <!-- ContactNo input -->
              <div data-mdb-input-init class="form-outline m-4 password">
                <img src="src/Padlock.png" alt="pw" class="pwImg">
                <input id="contactNo" type="tel" name="contactNo" class="form-control form-control-lg" placeholder="Contact No" />
              </div>

              <div class="d-flex justify-content-around align-items-center m-4">
                <!-- Checkbox -->
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="form1Example3" checked />
                  <label class="form-check-label"> Remember me </label>
                </div>
                <div>
                  <div class="col">
                    <div class="row">
                      <label>Have Account?<a href="signIn.php" class="create"> Sign In</a></label>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Submit button -->
              <div class="d-flex justify-content-center">
                <button type="submit" class="btn btn-primary btn-lg btn-block btn-signUp m-4" name="signUpBtn">Sign Up</button>
              </div>
            </form>

            <script>
              // Validations
              document.getElementById('signUp-Form').addEventListener('submit', function(event) {
                let email = document.getElementById('email').value;
                let name = document.getElementById('name').value;
                let userName = document.getElementById('userName').value;
                let password = document.getElementById('password').value;
                let contactNo = document.getElementById('contactNo').value;

                let errorMessages = [];

                if (email === "") {
                  errorMessages.push('Please enter Email.');
                }
                if (name === "") {
                  errorMessages.push('Please enter Name.');
                }
                if (userName === "") {
                  errorMessages.push('Please enter UserName.');
                }
                if (password === "") {
                  errorMessages.push('Please enter Password.');
                }
                if (contactNo === "" || isNaN(contactNo) || contactNo.length !== 10) {
                  errorMessages.push('Please enter a valid 10-digit Contact No.');
                }

                if (errorMessages.length > 0) {
                  event.preventDefault();
                  alert(errorMessages.join('\n'));
                }
              });
            </script>


</body>

</html>

<?php
require_once "../BackEnd/Viewer.php";
if (isset($_POST['signUpBtn'])) {
  if (isset($_POST["userName"], $_POST["name"], $_POST["email"], $_POST["password"], $_POST["contactNo"])) {

    $userName = $_POST["userName"];
    $name = $_POST["name"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $contactNo  = $_POST["contactNo"];

    // cookies

    setcookie('userName', $userName, time() + 3600, '/', "", 0);
    setcookie('password', $password, time() + 3600, '/', "", 0);
    setcookie('email', $email, time() + 3600, '/', "", 0);
  }
  $obj = new Viewer();
  $obj->registration($userName, $name, $email, $password, $contactNo);
}

?>
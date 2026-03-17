<link href="./css/main.min.css" rel="stylesheet" type="text/css" media="all" />

<!-- Header -->
<div class="header ">
    <div class=" position-absolute w-100 top-0 z-3">
        <nav class="  navbar navbar-expand-lg navbar-dark  d-flex justify-content-center align-items-center text-dark cunav ">
            <!-- Logo -->
            <a class="navbar-brand " href="index.php">RoyalBanquettt</a>

            <!-- Toggle Button for Mobile -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar Links -->
             <div>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" href="index.php">Home</a></li>

                            <li class="nav-item"><a class="nav-link" href="about.php">About</a></li>
                            <li class="nav-item"><a class="nav-link" href="services.php">Services</a></li>

                            <?php if (strlen($_SESSION['obbsuid']) != 0) { ?>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="accountDropdown" role="button" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">My Accountt</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="profile.php">Profile</a>
                                    <a class="dropdown-item" href="booking-history.php">Booking History</a>
                                    <a class="dropdown-item" href="change-password.php">Change Password</a>
                                    <a class="dropdown-item" href="logout.php">Logout</a>
                                </div>
                            </li>
                            <?php } ?>

                            <li class="nav-item"><a class="nav-link" href="mail.php">Mail Us</a></li>
                            <li class="nav-item"><a class="nav-link" href="login.php">Login</a></li>
                            <li class="nav-item"><a class="nav-link" href="signup.php">Register</a></li>
                            <li class="nav-item"><a class="nav-link" href="admin/login.php">Admin</a></li>
                        </ul>
                    </div>
            </div>
        </nav>
    </div>
</div>

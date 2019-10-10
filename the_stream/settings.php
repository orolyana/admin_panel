<?php include('session.php'); ?>
<?php include("public/menubar.php"); ?>

<?php

include('public/fcm.php');

$qry = "SELECT * FROM tbl_fcm_api_key where id = '1'";
$result = mysqli_query($connect, $qry);
$settings_row = mysqli_fetch_assoc($result);

if(isset($_POST['submit'])) {

    $sql_query = "SELECT * FROM tbl_fcm_api_key WHERE id = '1'";
    $img_res = mysqli_query($connect, $sql_query);
    $img_row=  mysqli_fetch_assoc($img_res);

    $data = array(
        'app_fcm_key' => $_POST['app_fcm_key'],
        'api_key' => $_POST['api_key']
    );

    $news_edit = Update('tbl_fcm_api_key', $data, "WHERE id = '1'");

    if ($news_edit > 0) {
        $_SESSION['msg'] = "";
        header( "Location:settings.php");
        exit;
    }
}

?>

<!-- START CONTENT -->
<section id="content">

    <!--breadcrumbs start-->
    <div id="breadcrumbs-wrapper" class=" grey lighten-3">
        <div class="container">
            <div class="row">
                <div class="col s12 m12 l12">
                    <h5 class="breadcrumbs-title">Settings</h5>
                    <ol class="breadcrumb">
                        <li><a href="dashboard.php">Dashboard</a>
                        </li>
                        <li><a class="active">Settings</a>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs end-->

    <div class="container">
        <div class="section">
            <div class="row">
                <form method="post" enctype="multipart/form-data">
                    <div class="col s12 m12 l12">
                        <button type="submit" name="submit" class="btn cyan waves-effect waves-light right">Save Settings</button>
                    </div>
                    <div class="col s12 m12 l12">
                        <div class="card-panel">
                            <div class="row">
                                <div class="row">
                                    <div class="input-field col s12">

                                        <?php if(isset($_SESSION['msg'])) { ?>
                                            <div class='card-panel teal lighten-2'>
                                            <span class='white-text text-darken-2'>
                                                Successfully Saved...
                                            </span>
                                            </div>
                                            <?php unset($_SESSION['msg']); }?>

                                        <div class="row">
                                            <div class="input-field col s3">
                                                Your Server Key
                                                <br>
                                                <a href="#server-key" class="modal-trigger">How to obtain your FCM Server Key?</a>
                                            </div>

                                            <div class="input-field col s9">
                                                <textarea name="app_fcm_key" class="materialize-textarea" id="app_fcm_key" required><?php echo $settings_row['app_fcm_key'];?></textarea>
                                                <label for="app_fcm_key">FCM Server Key</label>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="input-field col s3">
                                                Your API Key
                                                <br>
                                                <a href="#api-key" class="modal-trigger">Where I have to put my API Key?</a>
                                            </div>

                                            <div class="input-field col s9">
                                                <input type="text" name="api_key" id="api_key" value="<?php echo $settings_row['api_key'];?>" required />
                                                <label for="api_key">API Key :</label>

                                                <a href="change-api-key.php" class="btn cyan waves-effect waves-light">Change API Key</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<?php include('public/footer.php'); ?>

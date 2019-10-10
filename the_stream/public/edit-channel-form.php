<?php
	include_once('functions.php');
	require_once("thumbnail_images.class.php");
?>

	<?php

		if(isset($_GET['id'])){
			$ID = $_GET['id'];
		}else{
			$ID = "";
		}

		// create array variable to store category data
		$category_data = array();

		$sql_query = "SELECT cid, category_name
				FROM tbl_category
				ORDER BY cid ASC";

		$stmt_category = $connect->stmt_init();
		if($stmt_category->prepare($sql_query)) {
			// Execute query
			$stmt_category->execute();
			// store result
			$stmt_category->store_result();
			$stmt_category->bind_result($category_data['cid'],
				$category_data['category_name']
				);

		}

		$sql_query = "SELECT channel_image FROM tbl_channel WHERE id = ?";

		$stmt = $connect->stmt_init();
		if($stmt->prepare($sql_query)) {
			// Bind your variables to replace the ?s
			$stmt->bind_param('s', $ID);
			// Execute query
			$stmt->execute();
			// store result
			$stmt->store_result();
			$stmt->bind_result($previous_channel_image);
			$stmt->fetch();
			$stmt->close();
		}


		if(isset($_POST['btnEdit'])){

			$channel_name = $_POST['channel_name'];
			$cid = $_POST['cid'];
			$channel_url = $_POST['channel_url'];
			$channel_description = $_POST['channel_description'];

			// get image info
			$channel_image = $_FILES['channel_image']['name'];
			$image_error = $_FILES['channel_image']['error'];
			$image_type = $_FILES['channel_image']['type'];

			// create array variable to handle error
			$error = array();

			if(empty($channel_name)){
				$error['channel_name'] = " <span class='label label-danger'>Required, please fill out this field!!</span>";
			}

			if(empty($cid)){
				$error['cid'] = " <span class='label label-danger'>Required, please fill out this field!!</span>";
			}

			if(empty($channel_url)){
				$error['channel_url'] = " <span class='label label-danger'>Required, please fill out this field!!</span>";
			}

			if(empty($channel_description)){
				$error['channel_description'] = " <span class='label label-danger'>Required, please fill out this field!!</span>";
			}

			// common image file extensions
			$allowedExts = array("gif", "jpeg", "jpg", "png");

			// get image file extension
			error_reporting(E_ERROR | E_PARSE);
			$extension = end(explode(".", $_FILES["channel_image"]["name"]));

			if(!empty($channel_image)){
				if(!(($image_type == "image/gif") ||
					($image_type == "image/jpeg") ||
					($image_type == "image/jpg") ||
					($image_type == "image/x-png") ||
					($image_type == "image/png") ||
					($image_type == "image/pjpeg")) &&
					!(in_array($extension, $allowedExts))){

					$error['channel_image'] = "*<span class='label label-danger'>Image type must jpg, jpeg, gif, or png!</span>";
				}
			}


			if( !empty($channel_name) &&
				!empty($cid) &&
				!empty($channel_url) &&
				!empty($channel_description) &&
				empty($error['channel_image'])){

				if(!empty($channel_image)){

					// create random image file name
					$string = '0123456789';
					$file = preg_replace("/\s+/", "_", $_FILES['channel_image']['name']);
					$function = new functions;
					$channel_image = $function->get_random_string($string, 4)."-".date("Y-m-d").".".$extension;

					// delete previous image
					$delete = unlink('upload/'."$previous_channel_image");
					// $delete = unlink('upload/thumbs/'."$previous_channel_image");

					// upload new image
					$unggah = 'upload/'.$channel_image;
					$upload = move_uploaded_file($_FILES['channel_image']['tmp_name'], $unggah);

					// updating all data
					$sql_query = "UPDATE tbl_channel
							SET channel_name = ? , category_id = ?, channel_url = ?, channel_description = ?, channel_image = ?
							WHERE id = ?";

					$upload_image = $channel_image;
					$stmt = $connect->stmt_init();
					if($stmt->prepare($sql_query)) {
						// Bind your variables to replace the ?s
						$stmt->bind_param('ssssss',
									$channel_name,
									$cid,
									$channel_url,
									$channel_description,
									$upload_image,
									$ID);
						// Execute query
						$stmt->execute();
						// store result
						$update_result = $stmt->store_result();
						$stmt->close();
					}
				}else{

					// updating all data except image file
					$sql_query = "UPDATE tbl_channel
							SET channel_name = ? , category_id = ?, channel_url = ?, channel_description = ?
							WHERE id = ?";

					$stmt = $connect->stmt_init();
					if($stmt->prepare($sql_query)) {
						// Bind your variables to replace the ?s
						$stmt->bind_param('sssss',
									$channel_name,
									$cid,
									$channel_url,
									$channel_description,
									$ID);
						// Execute query
						$stmt->execute();
						// store result
						$update_result = $stmt->store_result();
						$stmt->close();
					}
				}

				// check update result
				if($update_result) {
					$error['update_data'] = "<div class='card-panel teal lighten-2'>
											    <span class='white-text text-darken-2'>
												    Channel Successfully Updated
											    </span>
											</div>";
				} else {
					$error['update_data'] = "<div class='card-panel red darken-1'>
											    <span class='white-text text-darken-2'>
												    Update Failed
											    </span>
											</div>";
				}
			}

		}

		// create array variable to store previous data
		$data = array();

		$sql_query = "SELECT * FROM tbl_channel WHERE id = ?";

		$stmt = $connect->stmt_init();
		if($stmt->prepare($sql_query)) {
			// Bind your variables to replace the ?s
			$stmt->bind_param('s', $ID);
			// Execute query
			$stmt->execute();
			// store result
			$stmt->store_result();
			$stmt->bind_result($data['id'],
					$data['cid'],
					$data['channel_name'],
					$data['channel_image'],
					$data['channel_url'],
					$data['channel_description']
					);
			$stmt->fetch();
			$stmt->close();
		}

	?>

	<!-- START CONTENT -->
    <section id="content">

        <!--breadcrumbs start-->
        <div id="breadcrumbs-wrapper" class=" grey lighten-3">
          	<div class="container">
            	<div class="row">
              		<div class="col s12 m12 l12">
               			<h5 class="breadcrumbs-title">Edit Channel</h5>
		                <ol class="breadcrumb">
                            <li><a href="dashboard.php">Dashboard</a></li>
                            <li><a href="channel.php">Manage Channel</a></li>
		                    <li><a class="active">Edit Channel</a>
		                  </li>
		                </ol>
              		</div>
            	</div>
          	</div>
        </div>
        <!--breadcrumbs end-->

         <!--start container-->
        <div class="container">
          	<div class="section">
				<div class="row">
		        	<div class="col s12 m12 l12">
		        		<div class="card-panel">
		                	<div class="row">
		                 		<form method="post" class="col s12" enctype="multipart/form-data">
		                  			<div class="row">
		                  			<?php echo isset($error['update_data']) ? $error['update_data'] : '';?>
		                    			<div class="input-field col s12">
		                    			<div class="col s12 m12 l5">

											<div class="row">
						                      <div class="input-field col s12">
						                        <input type="text" name="channel_name" id="channel_name" value="<?php echo $data['channel_name']; ?>" required/>
						                        <label for="channel_name">Channel Name</label><?php echo isset($error['channel_name']) ? $error['channel_name'] : '';?>
						                      </div>
						                    </div>

						                    <div class="row">
							                    <div class="input-field col s12">
	                                            <select name="cid">
													<?php while($stmt_category->fetch()){
														if($category_data['cid'] == $data['cid']){?>
															<option value="<?php echo $category_data['cid']; ?>" selected="<?php echo $data['cid']; ?>" ><?php echo $category_data['category_name']; ?></option>
														<?php }else{ ?>
															<option value="<?php echo $category_data['cid']; ?>" ><?php echo $category_data['category_name']; ?></option>
														<?php }}
													?>
	                                            </select>
	                                            <label>Category</label><?php echo isset($error['cid']) ? $error['cid'] : '';?></div>
                                            </div>

											<div class="row">
						                      <div class="input-field col s12">
						                        <input type="text" name="channel_url" id="channel_url" value="<?php echo $data['channel_url']; ?>" required/>
						                        <label for="channel_url">Channel Url</label><?php echo isset($error['channel_url']) ? $error['channel_url'] : '';?>
						                      </div>
						                    </div>

                                            <div class="row">
                                                <div class="input-field col s12 m12 l12">
                                                    <input type="file" name="channel_image" id="channel_image"
                                                           class="dropify-image" data-max-file-size="1M"
                                                           data-allowed-file-extensions="jpg png gif"
                                                           data-default-file="upload/<?php echo $data['channel_image']; ?>"
                                                           data-show-remove="false"/>
                                                    <div class="div-error"><?php echo isset($error['channel_image']) ? $error['channel_image'] : ''; ?></div>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="col s12 m12 l7">
                                        	<div class="row">
								                <div class="input-field col s12">
									                <span class="grey-text text-grey lighten-2">Description</span>
									                    <?php echo isset($error['channel_description']) ? $error['channel_description'] : '';?>
													<textarea name="channel_description" id="channel_description" class="materialize-textarea" rows="16"><?php echo $data['channel_description']; ?></textarea>
													<script type="text/javascript" src="assets/js/ckeditor/ckeditor.js"></script>
													<script type="text/javascript">
													            CKEDITOR.replace( 'channel_description' );
													            CKEDITOR.config.allowedContent = true;
													</script>
												</div>
								            </div>

								            <br>
								            <button class="btn cyan waves-effect waves-light right"
	                                                type="submit" name="btnEdit">Update
	                                            <i class="mdi-content-send right"></i>
	                                        </button>

                                        </div>

                                    </div>
						            </div>
						        </form>
						    </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

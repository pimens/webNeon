<?php include 'header_browse.php'; ?>
<?php
$documentary_details	=	$this->db->get_where('documentary', array('documentary_id' => $documentary_id))->result_array();
foreach ($documentary_details as $row) :
	?>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/frontend/' . $selected_theme; ?>/hovercss/demo.css" />
	<link rel="stylesheet" href="https://cdn.plyr.io/3.5.6/plyr.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/frontend/' . $selected_theme; ?>/hovercss/set1.css" />
	<style>
		.documentary_thumb {}

		video {
			width: 100% !important;
			height: auto !important;
		}

		.btn_opaque {
			font-size: 20px;
			border: 1px solid #939393;
			text-decoration: none;
			margin: 10px;
			background-color: rgba(0, 0, 0, 0.74);
			color: #fff;
		}

		.btn_opaque:hover {
			border: 1px solid #939393;
			text-decoration: none;
			background-color: rgba(57, 57, 57, 0.74);
			color: #fff;
		}

		.video_cover {
			position: relative;
			padding-bottom: 30px;
		}

		.video_cover:after {
			content: "";
			display: block;
			position: absolute;
			top: 0;
			left: 0;
			background-image: url(<?php echo $this->crud_model->get_poster_url('documentary', $row['documentary_id']); ?>);
			width: 100%;
			height: 100%;
			opacity: 0.2;
			z-index: -1;
			background-size: cover;
		}

		.select_black {
			background-color: #000;
			height: 45px;
			padding: 12px;
			font-weight: bold;
			color: #fff;
		}

		.profile_manage {
			font-size: 25px;
			border: 1px solid #ccc;
			padding: 5px 30px;
			text-decoration: none;
		}

		.profile_manage:hover {
			font-size: 25px;
			border: 1px solid #fff;
			padding: 5px 30px;
			text-decoration: none;
			color: #fff;
		}
	</style>
	<!-- VIDEO PLAYER -->

	<div class="video_cover">
		<div class="container" style="padding-top:100px; text-align: center;">
			<div class="row">
				<div class="col-md-12">

					<video poster="/path/to/poster.jpg" id="player" playsinline controls>
						<source src="<?php echo base_url() . "assets/global/documentary_video/" . $row['file_video']; ?>" type="video/mp4" />
						<source src="/path/to/video.webm" type="video/webm" />

						<!-- Captions are optional -->
						<track kind="captions" label="English captions" src="/path/to/captions.vtt" srclang="en" default />
					</video>

				</div>
			</div>
		</div>
	</div>

	<!-- VIDEO DETAILS HERE -->
	<div class="container" style="margin-top: 30px;">
		<div class="row">
			<div class="col-lg-8">
				<div class="row">
					<div class="col-lg-3">
						<img src="<?php echo $this->crud_model->get_thumb_url('documentary', $row['documentary_id']); ?>" style="height: 60px; margin:20px;" />
					</div>
					<div class="col-lg-9">
						<!-- VIDEO TITLE -->
						<h3>
							<?php echo $row['title']; ?>
						</h3>
						<!-- RATING CALCULATION -->
						<div>
							<?php
								for ($i = 1; $i <= $row['rating']; $i++) :
									?>
								<i class="fa fa-star" aria-hidden="true"></i>
							<?php endfor; ?>
							<?php
								for ($i = 5; $i > $row['rating']; $i--) :
									?>
								<i class="fa fa-star-o" aria-hidden="true"></i>
							<?php endfor; ?>
						</div>
					</div>
				</div>
			</div>
			<script>
				// submit the add/delete request for mylist
				// type = movie/series, task = add/delete, id = movie_id/series_id
				function process_list(type, task, id) {
					$.ajax({
						url: "<?php echo base_url(); ?>index.php?browse/process_list/" + type + "/" + task + "/" + id,
						success: function(result) {
							//alert(result);
							if (task == 'add') {
								$("#mylist_button_holder").html($("#mylist_delete_button").html());
							} else if (task == 'delete') {
								$("#mylist_button_holder").html($("#mylist_add_button").html());
							}
						}
					});
				}

				// Show the add/delete wishlist button on page load
				$(document).ready(function() {

					// Checking if this documentary_id exist in the active user's wishlist
					mylist_exist_status = "<?php echo $this->crud_model->get_mylist_exist_status('documentary', $row['documentary_id']); ?>";

					if (mylist_exist_status == 'true') {
						$("#mylist_button_holder").html($("#mylist_delete_button").html());
					} else if (mylist_exist_status == 'false') {
						$("#mylist_button_holder").html($("#mylist_add_button").html());
					}
				});
			</script>
			<div class="col-lg-4">
				<!-- ADD OR DELETE FROM PLAYLIST -->
				<span id="mylist_button_holder">
				</span>
				<span id="mylist_add_button" style="display:none;">
					<a href="#" class="btn btn-danger btn-md" style="font-size: 16px; margin-top: 20px;" onclick="process_list('documentary' , 'add', <?php echo $row['documentary_id']; ?>)">
						<i class="fa fa-plus"></i> <?php echo get_phrase('Add_to_My_list'); ?>
					</a>
				</span>
				<button class="btn btn-danger btn-md" id='watch_button' style="font-size: 16px; margin-top: 20px;" onclick="divToggle()">
					<i class="fa fa-eye"></i> <?php echo get_phrase('watch_trailer'); ?>
				</button>
				<span id="mylist_delete_button" style="display:none;">
					<a href="#" class="btn btn-default btn-md" style="font-size: 16px; margin-top: 20px;" onclick="process_list('documentary' , 'delete', <?php echo $row['documentary_id']; ?>)">
						<i class="fa fa-check"></i> <?php echo get_phrase('Added_to_My_list'); ?>
					</a>
				</span>
				<!-- DOCUMENTARY GENRE -->
				<div style="margin-top: 10px;">
					<strong><?php echo get_phrase('Genre'); ?></strong> :
					<a href="<?php echo base_url(); ?>index.php?browse/documentary/<?php echo $row['genre_id']; ?>">
						<?php echo $this->db->get_where('genre', array('genre_id' => $row['genre_id']))->row()->name; ?>
					</a>
				</div>
				<!-- DOCUMENTARY YEAR -->
				<div>
					<strong><?php echo get_phrase('Year'); ?></strong> : <?php echo $row['year']; ?>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top:20px;">
			<div class="col-lg-12">
				<div class="bs-component">
					<ul class="nav nav-tabs">
						<li class="active" style="width:33%;">
							<a href="#about" data-toggle="tab">
								<?php echo get_phrase('About'); ?>
							</a>
						</li>
						<li style="width:33%;">
							<a href="#cast" data-toggle="tab">
								<?php echo get_phrase('Cast'); ?>
							</a>
						</li>
						<li style="width:34%;">
							<a href="#more" data-toggle="tab">
								<?php echo get_phrase('More'); ?>
							</a>
						</li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<!-- TAB FOR TITLE -->
						<div class="tab-pane active in" id="about">
							<p>
								<?php echo $row['description_long']; ?>
							</p>
						</div>
						<!-- TAB FOR ACTORS -->
						<div class="tab-pane " id="cast">
							<p>
								<?php
									$actors	=	json_decode($row['actors']);
									for ($i = 0; $i < sizeof($actors); $i++) {
										?>
									<div style="float: left; text-align:center; color: #fff; font-weight: bold;">
										<img src="<?php echo $this->crud_model->get_actor_image_url($actors[$i]); ?>" style="height: 160px; margin:5px;" />
										<br>
										<?php echo $this->db->get_where('actor', array('actor_id' => $actors[$i]))->row()->name; ?>
									</div>
								<?php
									}
									?>
							</p>
						</div>
						<!-- TAB FOR SAME CATEGORY DOCUMENTARY -->
						<div class="tab-pane  " id="more">
							<p>
								<div class="content">
									<div class="grid">
										<?php
											$documentarys = $this->crud_model->get_documentary($row['genre_id'], 10, 0);
											foreach ($documentarys as $row) {
												$title	=	$row['title'];
												$link	=	base_url() . 'index.php?browse/playdocumentary/' . $row['documentary_id'];
												$thumb	=	$this->crud_model->get_thumb_url('documentary', $row['documentary_id']);
												include 'thumb.php';
											}
											?>
									</div>
								</div>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr style="border-top:1px solid #333;">
		<?php include 'footer.php'; ?>
	</div>
<?php endforeach; ?>

<script type="text/javascript">
	function divToggle() {
		if ($('#trailer_div').hasClass('hidden')) {
			$('#trailer_div').removeClass('hidden');
			$('#movie_div').addClass('hidden');
			$('#watch_button').html('<?php echo '<i class="fa fa-eye"></i> ' . get_phrase('watch_documentary') ?>');
			player.pause();
		} else {
			$('#movie_div').removeClass('hidden');
			$('#trailer_div').addClass('hidden');
			$('#watch_button').html('<?php echo '<i class="fa fa-eye"></i> ' . get_phrase('watch_trailer') ?>');
			trailer_url.pause();
		}
		$("html, body").animate({
			scrollTop: 0
		}, 500);
	}
</script>
<style>
ul.list {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f00606;
}

li.list a {
  display: block;
  color: #f9f9f9;
  padding: 8px 16px;
  text-decoration: none;
}

/* Change the link color on hover */
li.list a:hover {
  background-color: #f9f9f9;
  color: black;
}
</style>

<?php include 'header_browse.php'; ?>
<?php
$ecourse_details	=	$this->db->get_where('ecourse', array('id_ecourse' => $id_ecourse))->result_array();
foreach ($ecourse_details as $row) :
	?>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/frontend/' . $selected_theme; ?>/hovercss/demo.css" />
	<link rel="stylesheet" href="https://cdn.plyr.io/3.5.6/plyr.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/frontend/' . $selected_theme; ?>/hovercss/set1.css" />

	<!-- VIDEO DETAILS HERE -->
	<div class="container" style="margin-top: 30px;">
		<div class="row" style="margin-top:20px;">
			<div class="btn-group-vertical">
				<div class="col-lg-12">
					<h4><?php echo $read = $row['kategori']; ?></h4>
					
					<!-- <p><?php echo $row['deskripsi_kategori']; ?></p> -->
				</div>
				<div class="col-lg-12">								
				<button type="button" class="btn btn-default"><i class="fa fa-home"></i>  Home</button>
			  	<button type="button" class="btn btn-default"><i class="fa fa-edit"></i> Konsultasi</button>
			  	<button type="button" class="btn btn-default"><i class="fa fa-eye"></i>  Hasil Karya </button>
			  	<button type="button" class="btn btn-default"><i class="fa fa-trophy"></i>  Poin</button>		
			  	<br><br><br>
				</div>

			</div>
			<!-- <div class="btn-group-vertical" style="padding-left: 50px">
				
			</div> -->
			
			<div class="col-lg-12">
				<div class="bs-component">
					<ul class="nav nav-tabs">
						<li class="active" style="width:33%;">
							<a href="#about" data-toggle="tab">
								<?php echo get_phrase('List E-Course'); ?>
							</a>
						</li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<!-- TAB FOR TITLE -->
						<div class="tab-pane active in" id="about">
							<?php
								$viewecourse = $this->crud_model->get_viewecourse($read);
								foreach ($viewecourse as $rows) {
							?>
							<a href="<?php echo base_url('index.php?browse/viewecourse/'.$rows->id_ecourse)?>">
								<h5><?php echo $rows->judul; ?></h5>
								<br>
								<p><?php echo $rows->deskripsi_kategori; ?></p>
								<hr>
							</a>
							<?php } ?>
						</div>
					<?php endforeach; ?>	
					</div>
				</div>
			</div>
		</div>
		<hr style="border-top:1px solid #333;">
		<?php include 'footer.php'; ?>
	</div>


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

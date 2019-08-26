<link rel="stylesheet" href="<?php echo base_url('assets/backend/css/video-js.min.css'); ?>" type="text/css">
<?php
	$video_detail = $this->db->get_where('video',array('id_video'=>$id_video))->row();
?>
<form method="post" action="<?php echo base_url();?>index.php?admin/video_edit/<?php echo $id_video;?>" enctype="multipart/form-data">
	<div class="row">
	    <div class="col-6">
	        <div class="card">
	            <div class="card-body">
					<div class="form-group mb-3">
	                    <label for="simpleinput1">Video Title</label>
	                    <input type="text" class="form-control" id = "simpleinput1" name="judul" value="<?php echo $video_detail->judul;?>">
	                </div>
	                <div class="form-group mb-3">
	                    <label for="simpleinput1">Level</label>
	                    <input type="text" class="form-control" id = "simpleinput1" name="level" value="<?php echo $video_detail->level;?>">
	                </div>
	                <div class="form-group mb-3">
	                    <label for="simpleinput1">Category</label>
	                    <input type="text" class="form-control" id = "simpleinput1" name="kategori" value="<?php echo $video_detail->kategori;?>">
	                </div>

		            <div class="form-group mb-3">
	                    <label for="">Video</label>
						<span class="help">- Video File</span>
	                    <input type="file" class="form-control" name="file_video">
	                </div>

					<div class="form-group mb-3">
	                    <label for="">Thumbnail</label>
						<span class="help">- icon image of the video</span>
	                    <input type="file" class="form-control" name="thumbnail">
	                </div>

					<div class="form-group mb-3">
						<label for="description_long">Video description</label>
						<textarea class="form-control" id="description_long" name="deskripsi_video" rows="6"></textarea>
					</div>

	            </div>
	        </div>
	    </div>
			<div class="col-6">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<div class="form-group">
								<label class="form-label">Preview:</label>

								<!-- Video player generator starts -->
								<video class="video-js vjs-default-skin" width="440" height="240"
				                 poster="<?php echo "<img src=".base_url('assets/global/video/'.$video_detail->thumbnail)."'  > " ?>"
					                data-setup='{"controls" : true, "autoplay" : false, "preload" : "auto"}'>
					            
					            <source type='video/mp4' src="<?php echo base_url('assets/global/video/'.$video_detail->file_video); ?>"  />
					            
					            </video>
								<!-- Video player generator ends -->

							</div>
						</div>
					</div>
				</div>
		</div>
		<hr>

		</div>

		<div class="row">
			<div class="form-group col-3">
				<input type="submit" class="btn btn-success col-12" value="Update Movie">
			</div>
			<div class="col-3">
				<a href="<?php echo base_url();?>index.php?admin/movie_list" class="btn btn-secondary col-12">Go back</a>
			</div>
		</div>
	</div>
</form>

<script src="<?php echo base_url('assets/backend/js/video.js'); ?>"></script>
<script>
    /*memanggil file video-js-swf yang ada di folder js */
    videojs.options.flash.swf = "<?php echo base_url('assets/backend/js/video-js.swf'); ?>";
</script>
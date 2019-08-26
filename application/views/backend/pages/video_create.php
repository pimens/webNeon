<div class="row justify-content-center">
    <div class="col-xl-8 col-lg-9 col-md-12 col-sm-12 col-12">
        <div class="card">
            <div class="card-body">
            	<?php echo form_open_multipart("index.php?admin/video_create"); ?>
				<!-- <form method="post" action="<?php echo base_url();?>index.php?admin/video_create" enctype="multipart/form-data"> -->
					<div class="row justify-content-center">
						<div class="col-12">
							<div class="form-group mb-3">
			                    <label for="name">Video Title</label>
								<span class="help">e.g. "Serigala Terakhir"</span>
			                    <input type="text" class="form-control" id = "judul" name="judul">
			                </div>
							<div class="form-group mb-3">
			                    <label for="name">Level</label>
			                    <input type="text" class="form-control" name="level">
			                </div>
			                <div class="form-group mb-3">
			                    <label for="name">Category</label>
			                    <input type="text" class="form-control" name="kategori">
			                </div>
			                <div class="form-group mb-3">
			                    <label for="name">Video</label>
			                    <input type="file" class="form-control" name="file_video">
			                </div>
			                <div class="form-group mb-3">
			                    <label for="name">Thumbnail</label>
			                    <input type="file" class="form-control" name="thumbnail">
			                </div>
			                <div class="form-group mb-3">
			                    <label for="name">Video Description</label>
			                    <input type="text" class="form-control" name="deskripsi_video">
			                </div>
							<div class="form-group">
								<input type="submit" class="btn btn-success" value="Create">
								<a href="<?php echo base_url();?>index.php?admin/video_list" class="btn btn-secondary">Go back</a>
							</div>
						</div>
					</div>
				<!-- </form> -->
				<?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>

<div class="row justify-content-center">
    <div class="col-xl-8 col-lg-9 col-md-12 col-sm-12 col-12">
        <div class="card">
            <div class="card-body">
            	<?php echo form_open_multipart("index.php?admin/reality_create"); ?>
				<!-- <form method="post" action="<?php echo base_url();?>index.php?admin/video_create" enctype="multipart/form-data"> -->
					<div class="row justify-content-center">
						<div class="col-12">

							<div class="form-group mb-3">
			                    <label for="name">Reality Title</label>
								<span class="help">e.g. "Serigala Terakhir"</span>
			                    <input type="text" class="form-control" id = "title" name="title">
			                </div>

			                <div class="form-group mb-3">
								<label for="description_long">Long description</label>
								<textarea class="form-control" id="description_long" name="description_long" rows="6"></textarea>
							</div>

							<div class="form-group mb-3">
								<label for="description_short">Short description</label>
								<textarea class="form-control" id="description_short" name="description_short" rows="6"></textarea>
							</div>

			                <div class="form-group mb-3">
			                    <label for="name">File Reality Show</label>
			                    <input type="file" class="form-control" name="file_video">
			                </div>

			                <div class="form-group mb-3">
			                    <label for="name">Thumbnail</label>
			                    <input type="file" class="form-control" name="thumbnail">
			                </div>

			                <div class="form-group mb-3">
								<label for="actors">Actors</label>
								<span class="help">- select multiple actors</span>
								<select class="form-control select2" id="actors" multiple name="actors[]">
									<?php
										$actors	=	$this->db->get('actor')->result_array();
										foreach ($actors as $row2):?>
									<option value="<?php echo $row2['actor_id'];?>">
										<?php echo $row2['name'];?>
									</option>
									<?php endforeach;?>
								</select>
							</div>

							<div class="form-group mb-3">
								<label for="genre_id">Genre</label>
								<span class="help">- genre must be selected</span>
								<select class="form-control select2" id="genre_id" name="genre_id">
									<?php
										$genres	=	$this->crud_model->get_genres();
										foreach ($genres as $row2):?>
									<option value="<?php echo $row2['genre_id'];?>">
										<?php echo $row2['name'];?>
									</option>
									<?php endforeach;?>
								</select>
							</div>

							<div class="form-group mb-3">
								<label for="year">Publishing Year</label>
								<span class="help">- year of publishing time</span>
								<select class="form-control select2" id="year" name="year">
									<?php for ($i = date("Y"); $i > 2000 ; $i--):?>
									<option value="<?php echo $i;?>">
										<?php echo $i;?>
									</option>
									<?php endfor;?>
								</select>
							</div>

							<div class="form-group mb-3">
								<label for="rating">Rating</label>
								<span class="help">- star rating of the movie</span>
								<select class="form-control select2" id="rating" name="rating">
									<?php for ($i = 0; $i <= 5 ; $i++):?>
									<option value="<?php echo $i;?>">
										<?php echo $i;?>
									</option>
									<?php endfor;?>
								</select>
							</div>

							<div class="form-group mb-3">
								<label for="featured">Featured</label>
								<span class="help">- featured movie will be shown in home page</span>
								<select class="form-control select2" id="featured" name="featured">
									<option value="0">No</option>
									<option value="1">Yes</option>
								</select>
							</div>

							<div class="form-group">
								<input type="submit" class="btn btn-success" value="Create">
								<a href="<?php echo base_url();?>index.php?admin/reality_list" class="btn btn-secondary">Go back</a>
							</div>
						</div>
					</div>
				<!-- </form> -->
				<?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>

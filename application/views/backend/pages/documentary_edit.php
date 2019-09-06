<link rel="stylesheet" href="<?php echo base_url('assets/backend/css/video-js.min.css'); ?>" type="text/css">
<?php
	$documentary_detail = $this->db->get_where('documentary',array('documentary_id'=>$documentary_id))->row();
?>
<form method="post" action="<?php echo base_url();?>index.php?admin/documentary_edit/<?php echo $documentary_id;?>" enctype="multipart/form-data">
	<div class="row">
	    <div class="col-6">
	        <div class="card">
	            <div class="card-body">
					<div class="form-group mb-3">
	                    <label for="name">Documentary Title</label>
	                    <input type="text" class="form-control" id = "simpleinput1" name="title" value="<?php echo $documentary_detail->title;?>">
	                </div>

	                <div class="form-group mb-3">
						<label for="description_long">Long description</label>
						<textarea class="form-control" id="description_long" name="description_long" rows="6"><?php echo $documentary_detail->description_short;?></textarea>
					</div>

					<div class="form-group mb-3">
						<label for="description_short">Short description</label>
						<textarea class="form-control" id="description_short" name="description_short" rows="6"><?php echo $documentary_detail->description_long;?></textarea>
					</div>

					<div class="form-group mb-3">
	                    <label for="name">File Documentary</label>
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
							<option
								<?php
									$actors	=	$documentary_detail->actors;
									if ($actors != '')
									{
										$actor_array	=	json_decode($actors);
										if (in_array($row2['actor_id'], $actor_array))
											echo 'selected';
									}
									?>
								value="<?php echo $row2['actor_id'];?>">
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
							<option
								<?php if ( $documentary_detail->genre_id == $row2['genre_id']) echo 'selected';?>
								value="<?php echo $row2['genre_id'];?>">
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
							<option
								<?php if ( $documentary_detail->year == $i) echo 'selected';?>
								value="<?php echo $i;?>">
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
							<option
								<?php if ( $documentary_detail->rating == $i) echo 'selected';?>
								value="<?php echo $i;?>">
								<?php echo $i;?>
							</option>
							<?php endfor;?>
						</select>
					</div>

					<div class="form-group mb-3">
						<label for="featured">Featured</label>
						<span class="help">- featured movie will be shown in home page</span>
						<select class="form-control select2" id="featured" name="featured">
							<option value="0" <?php if ( $documentary_detail->featured == 0) echo 'selected';?>>No</option>
							<option value="1" <?php if ( $documentary_detail->featured == 1) echo 'selected';?>>Yes</option>
						</select>
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
				                 poster="<?php echo "<img src=".base_url('assets/global/documentary_thumb/'.$documentary_detail->thumbnail)."'  > " ?>"
					                data-setup='{"controls" : true, "autoplay" : false, "preload" : "auto"}'>
					            
					            <source type='video/mp4' src="<?php echo base_url('assets/global/documentary_video/'.$documentary_detail->file_video); ?>"  />
					            
					            </video>
								<!-- Video player generator ends -->

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>

		</div>

		<div class="row">
			<div class="form-group col-3">
				<input type="submit" class="btn btn-success col-12" value="Update Documentary">
			</div>
			<div class="col-3">
				<a href="<?php echo base_url();?>index.php?admin/documentary_list" class="btn btn-secondary col-12">Go back</a>
			</div>
		</div>
	</div>
</form>

<script src="<?php echo base_url('assets/backend/js/video.js'); ?>"></script>
<script>
    /*memanggil file video-js-swf yang ada di folder js */
    videojs.options.flash.swf = "<?php echo base_url('assets/backend/js/video-js.swf'); ?>";
</script>
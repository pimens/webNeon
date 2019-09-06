<link rel="stylesheet" href="<?php echo base_url('assets/backend/css/video-js.min.css'); ?>" type="text/css">


<a href="<?php echo base_url();?>index.php?admin/documentary_create/" class="btn btn-primary" style="margin-bottom: 20px;">
<i class="fa fa-plus"></i>
Create Documentary
</a>

<div class="row justify-content-center">
    <div class="col-xl-8 col-lg-9 col-md-12 col-sm-12 col-12">
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">Video List</h4>
                
						
					            <!-- Load file video yang ada di folder video -->
					            
					            <!-- </video> -->
                <table id="basic-datatable" class="table dt-responsive nowrap" width="100%">
					<thead>
						<tr>
							<th>
								#
							</th>
							<th></th>
							<th>Title</th>
							<th>Genre</th>
							<th>Operation</th>

						</tr>
					</thead>
					<tbody>
						<?php
							$documentarys = $this->db->get('documentary')->result_array();
							$counter = 1;
							foreach ($documentarys as $row):
							  ?>
						<tr>
							<td style="vertical-align: middle;"><?php echo $counter++;?></td>
							<td>
								<?php echo "<img class='img-fluid' width=90 height=70 src='".base_url('assets/global/actor/'.$row['actors'])."'  > " ?> 

								<!-- <img src="<?php echo $this->crud_model->get_vid_url('documentary' , $row['documentary_id']);?>" style="height: 60px;" />  -->
							</td>
							<td style="vertical-align: middle;"><?php echo $row['title'];?></td>
							<td style="vertical-align: middle;"><?php echo $row['genre_id'];?></td>
							<td style="vertical-align: middle;">
								
								<!-- <a href="<?php echo base_url();?>index.php?browse/playmovie/<?php echo $row['movie_id'];?>"
									target="_blank" class="btn btn-secondary btn-xs btn-mini">
								<i class="fa fa-external-link"></i>visit</a> -->
								<a href="<?php echo base_url();?>index.php?admin/documentary_edit/<?php echo $row['documentary_id'];?>" class="btn btn-info btn-xs btn-mini">
								edit</a>
								<a href="<?php echo base_url();?>index.php?admin/documentary_delete/<?php echo $row['documentary_id'];?>" class="btn btn-danger btn-xs btn-mini" onclick="return confirm('Want to delete?')">
								delete</a>
							</td>
						</tr>
						<?php endforeach;?>
					</tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<script src="<?php echo base_url('assets/backend/js/video.js'); ?>"></script>
<script>
    /*memanggil file video-js-swf yang ada di folder js */
    videojs.options.flash.swf = "<?php echo base_url('assets/backend/js/video-js.swf'); ?>";
</script>
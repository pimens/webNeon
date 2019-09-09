<?php include 'header_browse.php';?>
<!-- MOVIE LIST, GENRE WISE LISTING -->
<div class="row" style="margin:20px 60px;">
	<h4 style="text-transform: capitalize;">
		 <!-- (<?php echo $total_result;?>) -->
	</h4>
</div>

<?php 
	$genres		=	$this->crud_model->get_genres();
	foreach ($genres as $row):
		// count movie number of this genre, if no found then return.
		$this->db->where('genre_id' , $row['genre_id']);
        $total_result = $this->db->count_all_results('movie');
        if ($total_result == 0)
        	continue;

	?>
<div class="row" style="margin:20px 60px;">
	<h4><?php echo get_phrase('movies');?> <?php echo $row['name'];?></h4>
	<div class="content">
		<div class="grid">
			<?php 
				$movies	= $this->crud_model->get_movies($row['genre_id'] , 5, 0);
				foreach ($movies as $row)
				{
					$title	=	$row['title'];
					$link	=	base_url().'index.php?browse/playmovie/'.$row['movie_id'];
					$thumb	=	$this->crud_model->get_thumb_url('movie' , $row['movie_id']);
					include 'thumb.php';
				}
				?>
		</div>
	</div>
</div>
<?php endforeach;?>

<div class="container" style="margin-top: 90px;">
	<hr style="border-top:1px solid #333;">
	<?php include 'footer.php';?>
</div>
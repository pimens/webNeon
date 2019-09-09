<?php include 'header_browse.php';?>
<style>
* {box-sizing: border-box;}

.photo {
  position: relative;
  width: 50%;
  max-width: 300px;
}

.image {
  display: block;
  width: 100%;
  height: auto;
}

.overlay {
  position: absolute; 
  bottom: 30; 
  background: rgb(0, 0, 0);
  background: rgba(0, 0, 0, 0.5); /* Black see-through */
  color: #f1f1f1; 
  width: 100%;
  transition: .5s ease;
  opacity:0;
  color: white;
  font-size: 20px;
  padding: 20px;
  text-align: center;
}

.photo:hover .overlay {
  opacity: 1;
}
</style>
<table>
	<tr>
	<?php 
		$ecourse	= $this->crud_model->get_ecourse();
		foreach ($ecourse as $row)
	{ ?>
		<td>
			<div class="photo">
			  <img src="<?php echo base_url();?>assets/global/thumb1.png" alt="Avatar" class="image">
			  <div class="overlay"><?php echo $row['kategori']; ?></div>
			</div>
		</td>	
	<?php }?>
	</tr>
</table>
		
	


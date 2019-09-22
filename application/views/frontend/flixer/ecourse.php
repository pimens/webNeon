<?php include 'header_browse.php';?>
<style>
.container {
  position: relative;
  width: 50%;
}

.image {
  display: block;
  width: 100%;
  height: auto;
}

.overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 70%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: #008CBA;
  text-align: center;
  font-family: Comic Sans MS;
  font-size: 20px;
}

.container:hover .overlay {
  opacity: 1;
}

.text {
  color: white;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: center;
  height: 50%;
}
</style>


<div class="row row-eq-height justify-content-center">
  <?php 
    $ecourse  = $this->crud_model->get_ecourse();
    foreach ($ecourse as $row)
    { ?>
  <div class="col-lg-3 mb-3">
    <div class="card wow bounceInUp">
       <div class="container" >
        <table >
            <tr>
              <td>
                <img class="thumbnail" style="width: 130px" src="<?php echo base_url();?>assets/global/icon.png" class="image">
              </td>
              <td>
                <a href="<?php echo base_url('index.php?browse/viewecourse/'.$row['id_ecourse'])?>">
                <div class="overlay"><?php echo $row['kategori']; ?></div>
                </a>
              </td>
            </tr>
            
        </table>
        
        <br><br><br><br>
      </div>
    </div>
  </div>
  <?php }?> 
</div>
	


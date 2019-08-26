<?php
	$ecourse_detail = $this->db->get_where('ecourse',array('id_ecourse'=>$id_ecourse))->row();
?>
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
				<form method="post" action="<?php echo base_url();?>index.php?admin/ecourse_edit/<?php echo $id_ecourse;?>">
					<div class="row justify-content-center">
						<div class="col-xl-8 col-lg-9 col-md-12 col-sm-12 col-12">
							<div class="form-group mb-3">
			                    <label for="name">E-Course Category</label>
								<span class="help">e.g. "Matematika, Fisika"</span>
			                    <input type="text" class="form-control" id = "kategori" name="kategori" value="<?php echo $ecourse_detail->kategori;?>">
			                </div>
			                <div class="form-group mb-3">
			                    <label for="name">Category Description</label>
			                    <textarea type="text" class="form-control" id = "deskripsi_kategori" name="deskripsi_kategori" value="<?php echo $ecourse_detail->deskripsi_kategori;?>">
			                    </textarea>
			                </div>
							<div class="form-group">
								<input type="submit" class="btn btn-success" value="Update">
								<a href="<?php echo base_url();?>index.php?admin/ecourse_list" class="btn btn-secondary">Go back</a>
							</div>
						</div>
					</div>
				</form>
            </div>
        </div>
    </div>
</div>

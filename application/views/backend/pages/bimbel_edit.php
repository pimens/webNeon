<?php
	$bimbel_detail = $this->db->get_where('bimbel',array('id_bimbel'=>$id_bimbel))->row();
?>
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
				<form method="post" action="<?php echo base_url();?>index.php?admin/bimbel_edit/<?php echo $id_bimbel;?>">
					<div class="row justify-content-center">
						<div class="col-xl-8 col-lg-9 col-md-12 col-sm-12 col-12">
							<div class="form-group mb-3">
			                    <label for="name">Bimbel Field</label>
								<span class="help">e.g. "Matematika, Fisika"</span>
			                    <input type="text" class="form-control" id = "bidang" name="bidang" value="<?php echo $bimbel_detail->bidang;?>">
			                </div>
			                <div class="form-group mb-3">
			                    <label for="name">Bimbel Description</label>
			                    <textarea type="text" class="form-control" id = "deskripsi_bidang" name="deskripsi_bidang" value="<?php echo $bimbel_detail->deskripsi_bidang;?>">
			                    </textarea>
			                </div>
							<div class="form-group">
								<input type="submit" class="btn btn-success" value="Update">
								<a href="<?php echo base_url();?>index.php?admin/bimbel_list" class="btn btn-secondary">Go back</a>
							</div>
						</div>
					</div>
				</form>
            </div>
        </div>
    </div>
</div>

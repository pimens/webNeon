<div class="row justify-content-center">
    <div class="col-xl-8 col-lg-9 col-md-12 col-sm-12 col-12">
        <div class="card">
            <div class="card-body">
				<form method="post" action="<?php echo base_url();?>index.php?admin/material_create">
					<div class="row">
						<div class="col-12">
							<div class="form-group mb-3">
			                    <label for="name">Category</label>
								<span class="help">e.g. "Matematika, Fisika"</span>
			                    <input type="text" class="form-control" id = "kategori" name="kategori">
			                </div>
			                <div class="form-group mb-3">
			                    <label for="name">Level</label>
			                    <input type="text" class="form-control" id = "level" name="level">
			                </div>
			                <div class="form-group mb-3">
			                    <label for="name">Material Content</label>
			                    <textarea type="text" class="form-control" id = "materi" name="materi">
			                    </textarea>
			                </div>
							<div class="form-group">
								<input type="submit" class="btn btn-success" value="Create">
								<a href="<?php echo base_url();?>index.php?admin/material_list" class="btn btn-secondary">Go back</a>
							</div>
						</div>
					</div>
				</form>
            </div>
        </div>
    </div>
</div>

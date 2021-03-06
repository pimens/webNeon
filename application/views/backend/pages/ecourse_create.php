<div class="row justify-content-center">
    <div class="col-xl-8 col-lg-9 col-md-12 col-sm-12 col-12">
        <div class="card">
            <div class="card-body">
				<form method="post" action="<?php echo base_url();?>index.php?admin/ecourse_create">
					<div class="row">
						<div class="col-12">
							<div class="form-group mb-3">
			                    <label for="name">E-Course Category</label>
								<span class="help">e.g. "Matematika, Fisika"</span>
								<select name="kategori" class="form-control"  >
									<option value="Kursus Toefl">Kursus Toefl</option>
									<option value="Kursus Video Maker">Kursus Video Maker</option>
                                    <option value="Bisnis Online">Bisnis Online</option>
                                    <option value="Pemrograman Website">Pemrograman Website</option>
                                    <option value="Desain Website">Desain Website</option>
                                    <option value="Desain Grafis">Desain Grafis</option>
                                    <option value="Pemrograman Anak">Pemrograman Anak</option>
                                    <option value="Internet Marketing">Internet Marketing</option>
                                    <option value="Kursus Komputer">Kursus Komputer</option>
                                </select>
			                </div>

			                <div class="form-group mb-3">
			                    <label for="name">Title</label>
			                    <input type="text" class="form-control" name="judul">
			                </div>

			                 <div class="form-group mb-3">
			                    <label for="name">E-Course Video</label>
			                    <input type="file" id="file_video" class="form-control" name="file_video">
			                </div>

			                <div class="form-group mb-3">
			                    <label for="name">Thumbnail</label>
			                    <input type="file" id="thumbnail" class="form-control" name="thumbnail">
			                </div>

			                <div class="form-group mb-3">
			                    <label for="name">Category Description</label>
			                    <textarea type="text" class="form-control" id = "deskripsi_kategori" name="deskripsi_kategori">
			                    </textarea>
			                </div>

							<div class="form-group">
								<input type="submit" class="btn btn-success" value="Create">
								<a href="<?php echo base_url();?>index.php?admin/ecourse_list" class="btn btn-secondary">Go back</a>
							</div>
						</div>
					</div>
				</form>
            </div>
        </div>
    </div>
</div>

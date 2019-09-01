<?php
	$question_detail = $this->db->get_where('question',array('id_soal'=>$id_soal))->row();
?>
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
				<form method="post" action="<?php echo base_url();?>index.php?admin/question_edit/<?php echo $id_soal;?>">
					<div class="row justify-content-center">
						<div class="col-xl-8 col-lg-9 col-md-12 col-sm-12 col-12">
							<div class="form-group mb-3">
			                    <label for="name">Category</label>
			                    <input type="text" class="form-control" id = "kategori" name="kategori" value="<?php echo $question_detail->kategori;?>">
			                </div>
			                <div class="form-group mb-3">
			                    <label for="name">Question</label>
			                    <textarea type="text" class="form-control" id = "pertanyaan" name="pertanyaan">
			                    </textarea>
			                </div>
			                <div class="form-group mb-3">
			                    <label for="name">Weight</label>
			                    <span class="help">1 - 100</span>
			                    <input type="text" class="form-control" id = "bobot" name="bobot" value="<?php echo $question_detail->bobot;?>">
			                </div>
			                <div class="form-group mb-3">
			                    <label for="name">Answer Key</label>
			                    <textarea type="text" class="form-control" id = "kunci_jawaban" name="kunci_jawaban">
			                    </textarea>
			                </div>
			                <div class="form-group mb-3">
			                    <label for="name">Level</label>
			                    <input type="text" class="form-control" id = "level" name="level" value="<?php echo $question_detail->level;?>">
			                </div>
							<div class="form-group">
								<input type="submit" class="btn btn-success" value="Update">
								<a href="<?php echo base_url();?>index.php?admin/question_list" class="btn btn-secondary">Go back</a>
							</div>
						</div>
					</div>
				</form>
            </div>
        </div>
    </div>
</div>

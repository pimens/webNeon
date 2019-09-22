<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script>
        $(document).ready(function() {
            $("#insert").click(function() { //button id=insert di tambahkan click
                $("div").text($("#nama").val())
                $.post("http://localhost/webNeon/index.php?Admin/insertR/", { // ini kalau mau ambil inputan dari form trus pake method post, liat apii controller dptin datanya
                        judul: $("#nama").val() //ini tambhanin data form apa aja mau dimasukin "judul" sbgai name utk formnya 
                        
                    },
                    function(data, status) {
                        alert("Data: " + data + "\nStatus: " + status); //data meretturn kembalian dari controller apii/insertR
                    });
            });


            $("#select").change(function() { //ini id select
                $("div").text($("#select").val()) //mengubah isi tag div dengan isi data id select
                $.get(
                    "http://localhost/webNeon/index.php?Admin/getR/" + $("#select").val(), //ini kalau mau passing parameter di ci 
                    function(data, status) {
                        alert("ratingnya : "+data); //ini dapetin rating dari banyak judul video option
                    }

                );
            });

            $("#getVideo").click(function(){ //button dengan id getVideo ketika diklik ngeget data dari controller api/getVid utk ditampilin
                $.get("http://localhost/webNeon/index.php?Admin/getVid", function(data,status){
                    $("div").html(data); //ada banyak jenis kalau .html dia bisa nampilin semua tag html di terjemahkan, kalau text html gak diterjemahkan
                    //coba cek apii/getVid disitu di echo htmlnya
                });
            });



        });
    </script>

<div class="row justify-content-center">
    <div class="col-xl-8 col-lg-9 col-md-12 col-sm-12 col-12">
        <div class="card">
            <div class="card-body">
				<form method="post" action="<?php echo base_url();?>index.php?admin/material_create">
					<div class="row">
						<div class="col-12">
							<div class="form-group mb-3">
			                    <label for="name">Material Category</label>
								<select name="kategori" id="select" class="form-control"  >
								        <option value="Bimbel">Bimbel</option>
										<option value="E-Course">E-Course</option>
                                </select>
			                </div>
			                <select id="select">
						        <option>Pilih video</option>
						        <?php
						        foreach ($r as $rr) {
						            echo "<option value='$rr->id_video'>$rr->video</option>";
						        }
						        ?>
						    </select>
							<div class="form-group mb-3">
								<label for="actors">Category</label>
								<select class="form-control select2" id="select" multiple name="kategori">
							        <?php
							        foreach ($r as $rr) {
							            echo "<option value='$rr->id_ecourse'>$rr->kategori</option>";
							        }
							        ?>
								</select>
							</div>
							<div class="form-group mb-3">
								<label for="actors">Title</label>
								<select class="form-control select2" id="actors" multiple name="actors[]">
									
								</select>
							</div>
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

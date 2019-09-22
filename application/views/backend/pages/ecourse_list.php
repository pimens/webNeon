<a href="<?php echo base_url();?>index.php?admin/ecourse_create" class="btn btn-primary" style="margin-bottom: 20px;">
<i class="fa fa-plus"></i>
	Create E-Course
</a>

<div class="row justify-content-center">
    <div class="col-xl-12 col-lg-9 col-md-12 col-sm-12 col-12">
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">E-Course List</h4>
                <table id="basic-datatable" class="table dt-responsive nowrap" width="100%">
					<thead>
						<tr>
							<th>
								#
							</th>
							<th>E-Course Category</th>
							<th>E-Course Title</th>
							<th>Operation</th>
						</tr>
					</thead>
					<tbody>
						<?php
							$ecourse = $this->crud_model->get_ecourse();
							$counter = 1;
							foreach ($ecourse as $row):
							  ?>
						<tr>
							<td><?php echo $counter++;?></td>
							<td style="text-transform: uppercase;"><?php echo $row['kategori'];?></td>
							<td style="text-transform: uppercase;"><?php echo $row['judul'];?></td>
							<td>
								<a href="<?php echo base_url();?>index.php?admin/ecourse_edit/<?php echo $row['id_ecourse'];?>" class="btn btn-info btn-xs btn-mini">
								edit</a>
								<a href="<?php echo base_url();?>index.php?admin/ecourse_delete/<?php echo $row['id_ecourse'];?>" class="btn btn-danger btn-xs btn-mini" onclick="return confirm('Want to delete?')">
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

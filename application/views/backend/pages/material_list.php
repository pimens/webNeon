<a href="<?php echo base_url();?>index.php?admin/material_create/" class="btn btn-primary" style="margin-bottom: 20px;">
<i class="fa fa-plus"></i>
	Create Study Material 
</a>

<div class="row justify-content-center">
    <div class="col-xl-8 col-lg-9 col-md-12 col-sm-12 col-12">
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">Study Material List</h4>
                <table id="basic-datatable" class="table dt-responsive nowrap" width="100%">
					<thead>
						<tr>
							<th>
								#
							</th>
							<th>Material</th>
							<th>Level</th>
							<th>Category</th>
							<th>Operation</th>
						</tr>
					</thead>
					<tbody>
						<?php
							$ecourse = $this->crud_model->get_material();
							$counter = 1;
							foreach ($ecourse as $row):
							  ?>
						<tr>
							<td><?php echo $counter++;?></td>
							<td style="text-transform: uppercase;"><?php echo $row['materi'];?></td>
							<td style="text-transform: uppercase;"><?php echo $row['level'];?></td>
							<td style="text-transform: uppercase;"><?php echo $row['kategori'];?></td>
							<td>
								<a href="<?php echo base_url();?>index.php?admin/material_edit/<?php echo $row['id_materi'];?>" class="btn btn-info btn-xs btn-mini">
								edit</a>
								<a href="<?php echo base_url();?>index.php?admin/material_delete/<?php echo $row['id_materi'];?>" class="btn btn-danger btn-xs btn-mini" onclick="return confirm('Want to delete?')">
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

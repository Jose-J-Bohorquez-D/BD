<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Inicio</a></li>
          <li class="breadcrumb-item active">Editar Perfil</li>
        </ol>
      </div>
    </div>
  </div>
</section>
<section class="content">
  <div class="card">
    <div class="card-header">
      <h3 class="card-title">Edicion De Perfil</h3>
      <div class="card-tools">
        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
          <i class="fas fa-minus"></i>
        </button>
        <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
          <i class="fas fa-times"></i>
        </button>
      </div>
    </div>
    <div class="card-body">
    <div class="container-fluid">
		<div class="row d-flex justify-content-center">
			<div class="col col-4">
				<form method="post">
				<?php 
				$editUser= new ControladorPerfiles; 
				$editUser->editarPerfil(); 
				$editUser->actualizarPerfil();
				?>
				<div class="d-flex justify-content-evenly">
					<a href="index.php?action=perfiles" class="btn btn-info">Regresar</a>
					<button type="submit" class="btn btn-success">Actualizar Perfil</button>
				</div>
				</form>
			</div>
		</div>
	</div>
    </div>
  </div>
</section>

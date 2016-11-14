<?php  
/*
 * Archivo Partial de Contacto
 * Despliega la Sección de Datos de Contacto
 */  ?>

 <section class="pageContacto__item">

 	<!-- Título -->
 	<h2 class="titleOfSection text-uppercase"> 
 		<span> <?= __( "datos" , "LANG" ); ?> </span>
 	</h2>

 	<!-- Datos -->
 	<ul class="menuContacto">

 		<!-- Telefono -->
 		<li>
 			<!-- Icono -->
 			<i>
 				<img src="<?= IMAGES ?>/icon/iconos_contacto_telefono_plomo.png" alt="iconos_contacto_telefono_plomo" class="img-fluid" />
 			</i>

 			<div class="content-text">
 				<p> <?php for( $i=1 ; $i<=2 ; $i++ ) {
					
					if( isset( $options['theme_phone_text_'.$i]) && !empty($options['theme_phone_text_'.$i]) ) : 

					echo $options['theme_phone_text_'.$i] . ' / '; endif; } ?> 
 				</p>
 			</div> <!-- /.content-text -->

 		</li>

 		<!-- Celular -->
 		<li>
 			<!-- Icono -->
 			<i>
 				<img src="<?= IMAGES ?>/icon/iconos_contacto_rpm.png" alt="iconos_contacto_rpm" class="img-fluid" />
				
 			</i>

 			<div class="content-text">
 				<p> <?php for( $i=1 ; $i<=2 ; $i++ ) {
					
					if( isset( $options['theme_cel_text_'.$i]) && !empty($options['theme_cel_text_'.$i]) ) : 
						
					echo $options['theme_cel_text_'.$i] . ' / '; endif; } ?> 
 				</p>
 			</div> <!-- /.content-text -->

 		</li>

 		<!-- Email -->
 		<li>
 			<!-- Icono -->
 			<i>
 				<img src="<?= IMAGES ?>/icon/iconos_contacto_mail_plomo.png" alt="iconos_contacto_mail_plomo" class="img-fluid" />
 			</i>

 			<div class="content-text">
 				<p> <?= isset($options['theme_email_text']) ? $options['theme_email_text'] : ''; ?> </p>
 			</div> <!-- /.content-text -->

 		</li>

 		<!-- Direccion -->
 		<li>
 			<!-- Icono -->
 			<i>
 				<img src="<?= IMAGES ?>/icon/iconos_contacto_direccion_plomo.png" alt="iconos_contacto_direccion_plomo" class="img-fluid" />
 			</i>

 			<div class="content-text">
 				<?= isset($options['theme_address_text']) ? apply_filters('the_content',$options['theme_address_text']) : ''; ?>
 			</div> <!-- /.content-text -->

 		</li>

 	</ul> <!-- /.menuContacto -->

</section> <!-- /.pageContacto__item -->
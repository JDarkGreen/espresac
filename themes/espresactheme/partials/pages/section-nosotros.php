<?php  

/*
 * Template Parcial que muestra 
 * contenido de la página Nosotros
 */

/*
 * Obtener Página de Nosotros
 */
$page_nosotros = get_page_by_title('Empresa');

//Link de Página
$page_link     = !empty($page_nosotros) ? get_permalink($page_nosotros->ID) : '#';

/*
 * Extraer opciones del tema
 */
$options = get_option("theme_settings"); ?>

<?php if( $page_nosotros ) : 

/*
 * Atributos de la página
 */ 
$texto = $page_nosotros->post_excerpt;   ?>


<!-- Section -->
<section id="sectionAboutUs">

	<!-- Wrapper de Contenido / Contenedor Layout -->
	<div class="wrapperLayoutPage relative">
		
		<!-- Título -->
		<h2 class="titleOfSection text-uppercase">
		<?= __( 'Nosotros' , LANG ); ?>  </h2> 

		<!-- Espacio --> <br />
		
		<div class="content-text text-xs-center">
			<?= apply_filters( 'the_content' , $texto ); ?>		
		</div> <!-- /.content-text text-xs-center -->
		
		<!-- Espacio --> <br />

		<div class="text-xs-center">
	
			<a href="<?= $page_link ; ?>" class="btn-to-contact btn-to-contact--black text-uppercase text-xs-center">
				<?= __(  'click aquí' , LANG ); ?> </a>
			
		</div>

	</div> <!-- /.pageWrapperLayout -->
	
</section> <!-- /.sectionStaffMembers -->

<?php endif; ?>
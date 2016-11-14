<?php /* Sección Común Marcas de Empresa */ 

#Extraer Marcas Segun Orden
$args = array(
	"post_type"      => "theme-branding",
	"posts_per_page" => -1,
	'order'          => 'ASC',
	'orderby'        => 'menu_order',
	'post_status'    => 'publish' );
			
$all_marcas = get_posts( $args ); ?>

<section class="sectionCommun__marcas">

	<!-- Título -->
	<h2 class="titleOfSection  text-uppercase text-xs-center"><?= __( "nuestras marcas" , "LANG" ); ?></h2>
	
	<!-- Contenedor -->
	<?php if(count($all_marcas)>0): ?>

	<section class="flexible space-between">

		<?php foreach( $all_marcas as $marca ) : ?> 

			<!-- Articulo Marca -->
			<article class="itemBranding">
				<!-- Imagen -->
				<figure>
					<?php 
						if( has_post_thumbnail( $marca->ID ) ) : 
						echo get_the_post_thumbnail( $marca->ID ,'full', array('class'=>'img-fluid m-x-auto d-block') );
						endif;
					?>
				</figure> <!-- /. -->

				<!-- Contenido -->
				<?= apply_filters( "the_content" , $marca->post_content ); ?>

			</article> <!-- /.itemBranding -->
	
		<?php endforeach; ?>
		
	</section> <!-- /.sectionCommun__marcas__content -->

	<?php endif; ?>

</section> <!-- /.sectionCommun__marcas -->
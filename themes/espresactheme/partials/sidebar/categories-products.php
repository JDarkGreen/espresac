<?php 

/*
 * Obtener Terminos de Taxonomía => categorías productos
 */

$the_taxonomy = 'producto_category';


/*
 * Obtener términos Padres
 */
$terms_parents = get_terms( array(
	'taxonomy'   => $the_taxonomy,
	'hide_empty' => false,
	'parent'     => 0  )); ?> 

<section>

	<!-- Título -->
	<h2 class="titleOfSection text-uppercase"> 
	<?= __('categorías', LANG ); ?> </h2>

<?php 	

if( count($terms_parents) > 0 ):

	foreach( $terms_parents as $term_parent ): 

	/* Obtener los términos hijos de categoría padre */
	$terms_childs = get_terms( array(
		'taxonomy'   => $the_taxonomy,
		'hide_empty' => false,
		'parent'     => $term_parent->term_id  ));  ?>

	<!-- Título Categoría Padre -->
	<h3 class="title-sidebar-cat text-uppercase"> 
	<?= __( $term_parent->name , LANG ); ?> </h3>

	<!-- Contenedor de sub Categorías -->
	<div class="container-categories">

		<?php foreach( $terms_childs as $term_child ) : ?>

		<a href="<?= get_term_link($term_child); ?>" class="item-category">
			<?= $term_child->name; ?>
		</a>
	
		<?php endforeach; ?>
	
	</div> <!-- /.container-categories -->


<?php 
	endforeach;

endif; //end of terms parents  ?>

</section> <!-- /. -->
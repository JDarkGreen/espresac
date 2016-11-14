<?php 

/* Template para obtener las categorías del Blog */

/*
 * Obtener Elemento actual
 */

$current_object = get_queried_object(); 

/*
 * Obtener categorias
 */

$categories = get_categories( array('parent'=>0,'hide_empty'=>false) ); ?>

<section class="sectionCategoryItems">
	
	<!-- Título -->
	<h2 class="titleOfSection text-uppercase"> 
	<?= __( 'Categorías' , LANG ); ?> </h2>

	<div class="container-categories container-categories--blog">
		
		<?php foreach( $categories as $category): ?>

		<a href="<?= get_term_link($category); ?>" class="item-category">
			<?= $category->name; ?>
		</a>

		<?php endforeach; ?>
		
	</div> <!-- /.container-categories -->

</section> <!-- /.sectionCategoryItems -->

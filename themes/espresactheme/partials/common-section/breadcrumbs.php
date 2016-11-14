<?php
/*
 * File : Archivo Partial Breadcrumbs
 * Accion : Incluir migas o breadcrumbs del post actual
 */ 

/*
 * Objeto actual
 */

$current_object = get_queried_object(); #var_dump($current_object);

/*
 * Obtener la url del Sitio
 */
$site_url = site_url();

/*
 * Determinar si es post o taxonomia
 */
$post_type_object = '';

if( $current_object->term_id ) :
	$post_type_object = 'taxonomy';
else:
	$post_type_object = 'post';
endif;

//Array para almacenar los datos con sus url
$data_ancestors = array();

/*
 * Segun sea el tipo de post object
 */
switch($post_type_object) : ?>
<?php case('taxonomy') : ?>
	
	<?php  
		//Obtener la taxonomía 
		$taxonomy  = $current_object->taxonomy;
		//Obtener los terminos o ancestros
		$ancestros = get_ancestors( $current_object->term_id , $taxonomy );

		//Hacer loop y guardar los datos de url
		$i = 0;
		foreach($ancestros as $ancestro):
			$term      = get_term_by( 'term_taxonomy_id' , $ancestro , $taxonomy );
			$term_name = $term->name;
			$term_url  = get_term_link( $term , $taxonomy );

			$data_ancestors[$i]['name'] = $term_name;
			$data_ancestors[$i]['url']  = $term_url;
		$i++; endforeach;
	?>

<?php break; ?>

<?php endswitch; ?>

<!-- Menu breadcrumbs -->
<ul id="breadcrumbs">
	
	<li> <a href="<?= site_url(); ?>"> Home </a> </li>

	<?php foreach( $data_ancestors as $key => $value ): ?>

	<li>
		<a href="<?= $value['url'] ?>"> <?= $value['name']; ?> </a>
	</li>
	<?php endforeach; ?>

	<li> <?= $current_object->name; ?> </li>

</ul> <!-- /#breadcrumbs -->
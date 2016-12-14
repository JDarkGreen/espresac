<?php 
/*
 * File Name: Section Data
 * Despliega : los números de teléfonos y el email de las opciones de 
 * personalización
 */ 

/*
 * Parametros
 * @options = contiene las opciones de personalización
 */

//Obtener Números de Teléfonos
$phones = array();
for ($i=1; $i <= 2 ; $i++) 
{ $phones[] = $options['theme_phone_text_' . $i ]; }

//Obtener Números de Celulares
$cellphones = array();
for ($i=1; $i <= 2 ; $i++) 
{ $cellphones[] = $options['theme_cel_text_' . $i ]; }   ?>


<section id="header-data">

	<div class="item-header-data">

		<!-- Ícono -->
		<i class="fa fa-phone" aria-hidden="true"></i>
		
		<!-- Número de Teléfono -->
		<?= isset($options['theme_phone_text_1']) ? $options['theme_phone_text_1'] : ''; ?>	

		<!-- Espacio --> 
		<?= '  /  '; ?>

		<!-- Número de Celular -->
		<?= isset($options['theme_cel_text_1']) ? $options['theme_cel_text_1'] : ''; ?>
		
	</div> <!-- /.item-header-data -->

	<div class="item-header-data">
		
		<!-- Ícono -->
		<i class="fa fa-envelope" aria-hidden="true"></i>

		<!-- Email -->
		<?= isset($options['theme_email_text']) ? $options['theme_email_text'] : ''; ?>	

	</div> <!-- /.item-header-data -->

</section> <!-- /.header-data -->


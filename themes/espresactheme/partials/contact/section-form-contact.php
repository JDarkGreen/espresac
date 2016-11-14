<?php  
/*
 * Archivo Partial de Contacto
 * Despliega la Sección de Formulario de Contacto
 */  ?>

<section class="pageContacto__item">

	<!-- Título -->
	<h2 class="titleOfSection text-uppercase"> 
		<span><?= __( "formulario" , "LANG" ); ?> </span>
	</h2>

	<!-- Formulario -->
	<form id="form-contacto" action="" class="pageContacto__form" method="POST">

		<!-- Nombre -->
		<div class="pageContacto__form__group">
			<label for="input_name" class="sr-only"></label>
			<input type="text" id="input_name" name="input_name" placeholder="<?php _e( 'Nombre (obligatorio)', LANG ); ?>" required />
		</div> <!-- /.pageContacto__form__group -->

		<!-- Email -->
		<div class="pageContacto__form__group">
			<label for="input_email" class="sr-only"></label>
			<input type="email" id="input_email" name="input_email" placeholder="<?php _e( 'E-mail (obligatorio)', LANG ); ?>" data-parsley-trigger="change" required="" data-parsley-type-message="Escribe un email válido"/>
		</div> <!-- /.pageContacto__form__group -->						

		<!-- Teléfono -->
		<div class="pageContacto__form__group">
			<label for="input_phone" class="sr-only"></label>
			<input type="text" id="input_phone" name="input_phone" placeholder="<?php _e( 'Teléfono (obligatorio)', LANG ); ?>" data-parsley-type='digits' data-parsley-type-message="Solo debe contener números" required="" />
		</div> <!-- /.pageContacto__form__group -->

		<!-- Asunto --> 
		<div class="pageContacto__form__group">
			<label for="input_subject" class="sr-only"></label>
			<input type="text" id="input_subject" name="input_subject" placeholder="<?php _e( 'Asunto', LANG ); ?>" required />
		</div> <!-- /.pageContacto__form__group --> 

		<!-- Mensaje -->
		<div class="pageContacto__form__group">
			<label for="input_message" class="sr-only"></label>
			<textarea name="input_message" id="input_message" placeholder="<?php _e( 'Mensaje', LANG ); ?>" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="1000" data-parsley-minlength-message="Necesitas más de 20 caracteres" data-parsley-validation-threshold="10"></textarea>
		</div> <!-- /.pageContacto__form__group -->

		<!-- Boton -->
		<button type="submit" id="send-form" class="btn-show-more text-uppercase">
			<?php _e( 'enviar' , LANG ); ?>
		</button>

	</form> <!-- /. -->

</section> <!-- /.pageContacto__item -->
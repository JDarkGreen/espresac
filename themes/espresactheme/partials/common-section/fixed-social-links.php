<?php
/*
 * File : Archivo Partial Fixed Social Link
 * Accion : Incluir menu de redes sociales fixeado
 */  ?>

<ul id="fixed-social-menu-bar">
	
<!-- Facebook -->
<?php if(has_facebook()): ?>
<li class="link-facebook">
	<a href="<?= get_facebook(); ?>" target="_blank">
		<i class="fa fa-facebook" aria-hidden="true"></i>
	</a>
</li> <!--  -->	
<?php endif; ?>

<!-- Twitter -->
<?php if(has_twitter()): ?>
<li class="link-twitter">
	<a href="<?= get_twitter(); ?>" target="_blank">
		<i class="fa fa-twitter" aria-hidden="true"></i>
	</a>
</li> <!--  -->
<?php endif; ?>

<!-- Youtube -->
<?php if(has_youtube()): ?>
<li class="link-youtube">
	<a href="<?= get_youtube(); ?>" target="_blank">
		<i class="fa fa-youtube" aria-hidden="true"></i>
	</a>
</li> <!--  -->
<?php endif; ?>

</ul> <!-- /.social-menu-link -->
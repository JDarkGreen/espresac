<?php
/*
 * File : Archivo Partial Social Link
 * Accion : Incluir menu de redes sociales
 */ 

//Si existe el parametro de color
$style_color = isset($color_item) ? 'style="color :' . $color_item . '"' : '';  ?>

<ul id="social-menu-link">
	
<!-- Facebook -->
<?php if(has_facebook()): ?>
<li class="link-facebook">
	<a href="<?= get_facebook(); ?>" target="_blank" <?= $style_color; ?> >
		<i class="fa fa-facebook" aria-hidden="true"></i>
	</a>
</li> <!--  -->	
<?php endif; ?>

<!-- Twitter -->
<?php if(has_twitter()): ?>
<li class="link-twitter">
	<a href="<?= get_twitter(); ?>" target="_blank" <?= $style_color; ?> >
		<i class="fa fa-twitter" aria-hidden="true"></i>
	</a>
</li> <!--  -->
<?php endif; ?>

<!-- Youtube -->
<?php if(has_youtube()): ?>
<li class="link-youtube">
	<a href="<?= get_youtube(); ?>" target="_blank" <?= $style_color; ?> >
		<i class="fa fa-youtube" aria-hidden="true"></i>
	</a>
</li> <!--  -->
<?php endif; ?>

</ul> <!-- /.social-menu-link -->
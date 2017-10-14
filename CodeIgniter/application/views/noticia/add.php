<meta charset="utf-8">

<title>Agregar Imagen - <?=$noticia->titulo?></title>

<div class="container"> 
    <h1> Agregar Imagen: <?=$noticia->titulo?></h1><hr>
    <body>
        <form action="http://localhost/codeigniter/index.php/noticia/upload" method="post" enctype="multipart/form-data">
            <input type="file" name="imagen"/>
            <input type="hidden" name="id" value="<?=$noticia->id?>"/> <br>
            <input type="submit" value="upload image"/>
        </form>
    </body>
</div>
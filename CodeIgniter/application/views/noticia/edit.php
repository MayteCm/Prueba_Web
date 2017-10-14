<meta charset="utf-8">

<title>Editar Noticia - <?=$noticia->titulo?></title>

<div class="container"> 
<h1> Editar Noticia: <?=$noticia->titulo?> </h1>
    <body>
        <form action="/codeigniter/index.php/noticia/edit/<?=$noticia->id?>" method="POST">
            <input type="text" class="form-control" name="titulo" placeholder="Titulo" value="<?=$noticia->titulo?>" required>
            <br>
            <textarea name="texto" class="form-control" cols="30" rows="10" placeholder="Descripcion..." required><?=$noticia->texto?></textarea>
            <br>
            <input type="text" class="form-control" name="autor" placeholder="Autor" value="<?=$noticia->autor?>" required>
            <br>
            <input type="text" class="form-control" name="fecha" placeholder="YY/MM/DD" value="<?=$noticia->fecha?>" required>
            <br>
            <button type="submit" class="btn btn-success pull-right">Guardar</button>
        </form>
    </body>
</div>



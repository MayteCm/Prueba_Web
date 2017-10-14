<!--  jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<meta charset="utf-8">

<title>Nueva Noticia</title>

<div class="container">    
    <h1 class="text-muted"><strong>Nueva Noticia</strong></h1><hr>
    <body>
        <form action="/codeigniter/index.php/noticia/new" method="POST">
            <input type="text" class="form-control" name="titulo" placeholder="Titulo" required>
            <br>
            <textarea name="texto" class="form-control" cols="30" rows="10" placeholder="Descripcion..." required></textarea>
            <br>
            <input type="text" class="form-control" name="autor" placeholder="Autor" required>
            <br>
            <input id="date" class="form-control"  name="date" placeholder="YY/MM/DD" require/>
            <br>
            <button type="submit" class="btn btn-success pull-right">Guardar</button>
        </form>
    </body>
</div>



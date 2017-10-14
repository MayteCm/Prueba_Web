<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="/CodeIgniter/style.css">
<title>Inicio</title>

 <div class="container theme-showcase" role="main">

  <div class="page-header">
           
    <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" class="active"><a href="/codeigniter/index.php/noticia/new/">Nueva Noticia</a></li>
            </ul>
        </nav>
      <h1 class="text-muted"><strong>Noticias</strong></h1>
    </div>
    </div>
         
  <div class="container">
    <div>
      <ul>
        <?php foreach($data as $noticia){?>
          <ol>
            <div class="list-group">           
            <div  class="list-group-item">
              <h4 class="list-group-item-heading"><strong><?=$noticia->titulo?></strong></h4>
              <div class="row">
                <div class=" col-md-3 col-sm-6 col-lg-2"><img class="img-thumbnail" width="150"  src="/uploads/<?=$noticia->imagen?>" ></div>
                  <p id="p1"><?=$noticia->texto?></p>                              
                  <div>
                    <a class="list-group-item-text col-md-2" href="/codeigniter/index.php/noticia/view/<?= $noticia->id?>"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                    <a class="list-group-item-text col-md-2" href="/codeigniter/index.php/noticia/edit/<?= $noticia->id?>"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                    <a class="list-group-item-text col-md-2 delete" href="/codeigniter/index.php/noticia/delete/<?= $noticia->id?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                    <a class="list-group-item-text col-md-2" href="/codeigniter/index.php/noticia/add/<?= $noticia->id?>"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>                                  
                </div> <br><br>              
              </div>
            </div>
          </ol>
        <?php }?>
      </ul>
    </div>
  </div>

  <script>
    var links= document.getElementsByClassName("delete");
      for (var i=0;i<links.length;i++){
          links[i].addEventListener("click",function(e){
          var result = confirm("¿Seguro que deseas eliminar conteido?");
          if(result){
              alert('Noticia Eliminada!!')
              redirect();
          }
          e.preventDefault();
          })
      }
  </script>
</div>
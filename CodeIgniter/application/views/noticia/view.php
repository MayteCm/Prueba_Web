<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="/CodeIgniter/style.css">
<title><?=$noticia->titulo?></title>

<div class="container">
    <div class="panel panel-default">
      <div class="panel-heading">  
        <h3><?=$noticia->titulo?></h3>
        <i><?=$noticia->autor?></i> <br>
        <i><?=$noticia->fecha?></i>
      </div>
      <div class="panel-body">                                            
        <div >
        <img "class="img-thumbnail" src="/uploads/<?=$noticia->imagen?>">   
        </div>        
        <div>
          <p id="p2"><?=$noticia->texto?></p>
        </div>                                          
               
      </div>
    </div>
</div>

     
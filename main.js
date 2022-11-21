class MnHeader extends HTMLElement {
  connectedCallback() {
    this.innerHTML = ` <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Inspirar</title>
    <!-- Main Header and Footer -->
    <script type=module src=main.js></script>
  
    <!-- Bootstrap only -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <!-- Bootstrap icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
      crossorigin="anonymous"></script>
  </head>
<header>
<section class="section home-5-bg" id="home">
<div class="jumbotron jumbotron-fluid bg-white">
<div class="container">
<img src="Images/Header.jpg" class="img-fluid" alt="Responsive image">
</div> 
</section> 
<script>
document.getElementById("myH2").style.color = "red";
</script>
</header> <div>
<svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
</svg>
</div>`;
  }
}

customElements.define('mn-header', MnHeader);

class MnFooter extends HTMLElement {
  connectedCallback() {
    this.innerHTML = `
    <div>
				<svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
				</svg>
			</div>
  <footer">
  <section class="">
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
		  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
		  <div class="carousel-item active">
			<h1>Mision</h1>
			<p>Brindar acompañamiento psicológico integral que atienda las necesidades personales, sociales y laborales; siempre enfocados en el individuo como pilar de la comunidad y creador de progreso.  </p>
		  </div>
		  <div class="carousel-item">
			<h1>Vision</h1>
			<p>Brindar acompañamiento psicológico integral que atienda las necesidades personales, sociales y laborales; siempre enfocados en el individuo como pilar de la comunidad y creador de progreso.  </p>
		  </div>
		  <div class="carousel-item">
			<h1>Contáctenos</h1>
			<p>+57(322)427-6903</p>
			<p>inspirarpsicologiam@gmail.com</p>
		  </div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		  <span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		  <span class="carousel-control-next-icon" aria-hidden="true"></span>
		  <span class="sr-only">Next</span>
		</a>
	  </div> 
    © 2022 Copyright
    </div>
    </section>
  </footer>`;

  }
}

customElements.define('mn-footer', MnFooter);
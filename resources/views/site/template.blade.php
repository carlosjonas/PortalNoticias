<!DOCTYPE HTML>
<html>
	<head>
		<title>Portal de Notícias</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/assets/css/main.css" />
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="/" class="logo"><strong>Portal de Notícias</strong></a>
									<ul class="icons">
										<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
									</ul>
								</header>

                                @yield("main")

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								<section id="search" class="alt">
									<form method="get" action="{{ route('newsSearch')}}">
										<input type="text" name="keyword" id="keyword" placeholder="Buscar Notícia" />
									</form>
								</section>

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
									@guest
										<li><a href="{{ route('login') }}">Entrar</a></li>
										<li><a href="{{ route('register') }}">Registrar-se</a></li>
										<li><a href="/">Home</a></li>
										<li><a href="{{ route('newsIndex')}}">Todas as notícias</a></li>
										<li>
											<span class="opener">Categorias</span>
											<ul>
                                                @foreach($categories as $category)
												    <li><a href="{{ route("newsCategory",$category->token)}}">{{$category->title}}</a></li>
												@endforeach
											</ul>
										</li>
									@else
										<li><a href="{{ route('news.index') }}">Gerenciamento</a></li>
										<li><a href="/">Home</a></li>
										<li><a href="{{ route('newsIndex')}}">Todas as notícias</a></li>
										<li>
											<span class="opener">Categorias</span>
											<ul>
												@foreach($categories as $category)
													<li><a href="{{ route("newsCategory",$category->token)}}">{{$category->title}}</a></li>
												@endforeach
											</ul>
										</li>	
										<li>
											<a href="#" id="logout-link" style="cursor: pointer; color: inherit; text-decoration: none;">Sair</a>
											<form id="logout-form" method="POST" style="display:none;" action="{{ route('logout') }}" onsubmit="localStorage.removeItem('jwt_token')">
												@csrf
												
												<button type="submit" style="border: none; background: none; cursor: pointer; color: inherit;">
													Sair
												</button>
											</form>

											<script>
												document.addEventListener('DOMContentLoaded', function() {
													const logoutLink = document.getElementById('logout-link');
													const logoutForm = document.getElementById('logout-form');

													if (logoutLink && logoutForm) {
														logoutLink.addEventListener('click', function(event) {
															event.preventDefault(); // Impede o comportamento padrão do link (navegar para #)
															logoutForm.submit(); // Submete o formulário de logout
														});
													}
												});
											</script>
										</li>
										
									@endguest
										
										
									</ul>
								</nav>


							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="/assets/js/jquery.min.js"></script>
			<script src="/assets/js/browser.min.js"></script>
			<script src="/assets/js/breakpoints.min.js"></script>
			<script src="/assets/js/util.js"></script>
			<script src="/assets/js/main.js"></script>

	</body>
</html>
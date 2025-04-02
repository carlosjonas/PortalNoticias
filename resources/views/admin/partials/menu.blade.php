<nav class="navbar navbar-expand-lg mb-5" style="background-color:#f56a6a" data-bs-theme="dark">
            <div class="container">
                <a class="navbar-brand" href="#">Portal de Notícias</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
                    <ul class="navbar-nav mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route("home") }}">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route("news.index") }}">Notícias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route("category.index") }}">Categorias</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="{{ route("user.show", auth()->user()->id) }}">Perfil</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Usuários</a>
                        </li>
                        <li class="nav-item">
                            <form method="POST" action="{{ route('logout') }}">
                                @csrf

                                <a class="nav-link" href="#" onclick="event.preventDefault(); this.closest('form').submit();">Sair</a>
                                
                            </form>
                            
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
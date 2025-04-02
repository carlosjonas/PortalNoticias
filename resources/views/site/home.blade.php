@extends("site.template")
@section("main")
    <!-- Banner -->
    <section id="banner">
        <div class="content">
            <header>
                <h1>{{ $topNews->title}}</h1>
                <p>{{ $topNews->subtitle}}</p>
            </header>
            <p>{{ $topNews->text}}</p>
            <ul class="actions">
                <li><a href="{{ route("newsRead",['news' =>$topNews,'slug' => $topNews->slugTitle])}}" class="button big">Leia Mais</a></li>
            </ul>
        </div>
        @if(!empty($topNews->cover))
            <span class="image object">
                <img src="{{ route('noticia.imagem', ['filename' => $topNews->cover]) }}" alt="Notícia" />
            </span>
        @endif

    </section>

                                

    <!-- Section -->
    <section>
        <header class="major">
            <h2>Últimas notícias</h2>
        </header>
        <div class="posts">
            @foreach($news as $newsItem)
            <article>
                @if(!empty($newsItem->cover))
                    <a href="{{ route("newsRead",['news' =>$newsItem,'slug' => $newsItem->slugTitle])}}" class="image"><img src="{{ route('noticia.imagem', ['filename' => $newsItem->cover]) }}" alt="" /></a>
                @endif
                    <h3>{{$newsItem->title}}</h3>
                <p>{{$newsItem->subtitle}}</p>
                <ul class="actions">
                    <li><a href="{{ route("newsRead",['news' =>$newsItem,'slug' => $newsItem->slugTitle])}}" class="button">Leia</a></li>
                </ul>
            </article>
            @endforeach
        </div>
    </section>

@endsection			
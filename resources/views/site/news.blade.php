@extends("site.template")
@section("main")
    
    <!-- Section -->
    <section>
        <header class="major">
            <h2>Últimas notícias</h2>
        </header>
        <div class="posts">
            @foreach($news as $newsItem)
            <article>
                @if(!empty($newsItem->cover))
                    <a href="{{ route("newsRead",$newsItem)}}" class="image"><img src="{{ route('noticia.imagem', ['filename' => $newsItem->cover]) }}" alt="" /></a>
                @endif
                    <h3>{{$newsItem->title}}</h3>
                <p>{{$newsItem->subtitle}}</p>
                <ul class="actions">
                    <li><a href="{{ route("newsRead",$newsItem)}}" class="button">Leia</a></li>
                </ul>
            </article>
            @endforeach
        </div>
    </section>

@endsection			
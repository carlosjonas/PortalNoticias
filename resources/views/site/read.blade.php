@extends("site.template")
@section("main")
    <!-- Content -->
    <section>
        <header class="main">
            <h1>{{$news->title}}</h1>
        </header>

        @if(!empty($news->cover))
            <span class="image main"><img src="{{ route('noticia.imagem', ['filename' => $news->cover]) }}" alt="" /></span>
        @endif

        <h2>{{$news->subtitle}}</h2>
        <p>{{$news->text}}</p>
                
    </section>

@endsection	


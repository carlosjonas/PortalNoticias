@extends("admin.template.layout")
@section("main")

    
    @if(session()->has("success"))
        <div class="alert alert-success">
            {{ session('success')}}
        </div>
    @endif

    @if($errors->any())
        <div class="alert alert-danger">
            Não foi possível realizar esta operação:
            <ul class="mt-2 mb-0">
                @foreach($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <div class="card">
        
        <div class="card-header d-flex justify-content-between align-items">
            <h4 class="mb-0">Cadastrar notícia</h4>
            <a class="btn btn-primary" href="{{ route("news.index") }}"><i class="bi bi-backspace"></i> Voltar</a>
        </div>
        <div class="card-body">

            <div class="row">

                <form action="{{ route("news.store") }}" method="POST">

                    @csrf 

                    @include("admin.news.partials.form")

                </form>
            </div>

        </div>
    </div>
@endsection
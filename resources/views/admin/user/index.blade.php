@extends("admin.template.layout")
@section("main")


    <h1 class="mb-4">Gerenciamento de Perfil</h1>

    <div class="card">
        <div class="card-header d-flex justify-content-between align-items">
            <h4 class="mb-0">Perfil cadastrado</h4>
            <!--<a class="btn btn-success" href="{{ route("category.create") }}"><i class="bi bi-plus-lg"></i> Nova categoria</a>-->
        </div>
        <div class="card-body">

            <h5 class="card-title">{{ $user->name }}</h5>
            <p class="card-text">Email: {{ $user->email }}</p>
            <p class="card-text">Data de criação: {{ $user->created_at->format('d/m/Y') }}</p>
           
            <hr>

        </div>
    </div>
   
@endsection
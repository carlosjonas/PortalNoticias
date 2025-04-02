<div class="col-md-12">
    
    <div class="mb-3">
        <label for="title" class="form-label"><strong>Título da categoria</strong></label>
        <input type="text" class="form-control" oninput = "atualizaValorToken(this.value)" id="title" name="title" placeholder="Ex.: Esporte" value="{{ $category->title ?? old('title')}}">
    </div>
    
    <div class="mb-3">
        <!--Passando o id do usuário autenticado-->
        <input type="hidden" name="id_user" value="{{ auth()->id() }}">
        <input type="hidden" name="token" id="token" value="">
        
        <button type="submit" class="btn btn-success" id="submit_form">Registrar categoria</button>
    </div>

    <script>
        function atualizaValorToken(valor){
            var token = document.getElementById("token")
            token.value = valor.replaceAll(" ","_").replaceAll("-","_").toLowerCase()
        }
    </script>
</div>
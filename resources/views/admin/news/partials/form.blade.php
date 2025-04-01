<div class="col-md-12">
    <div class="mb-3">
        <label for="cover" class="form-label">Selecione uma imagem do seu computador</label>
        <input class="form-control" type="file" id="cover" name="cover">
    </div>

    <div class="mb-3">
        <label for="category_id" class="form-label"><strong>Categoria da notícia</strong></label>
        <select type="text" class="form-select" id="category_id" name="category_id">
            @foreach($categories as $item)
                <option value="{{$item->id}}" {{ isset($news) && $item->id === $news->category_id ? "selected='selected'" : ""}}> {{$item->title}}</option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label for="title" class="form-label"><strong>Título da notícia</strong></label>
        <input type="text" class="form-control" id="title" name="title" placeholder="Ex.: Jogador de futebol ganha na loteria" value="{{ $news->title ?? old('title')}}">
    </div>
    <div class="mb-3">
        <label for="subtitle" class="form-label"><strong>Resumo da notícia</strong></label>
        <textarea class="form-control" id="subtitle" name="subtitle">{{ $news->subtitle ?? old('subtitle')}}</textarea>
    </div>
    <div class="mb-3">
        <label for="text" class="form-label"><strong>Texto da notícia</strong></label>
        <textarea class="form-control" id="text" name="text" rows="8">{{ $news->text ?? old('text')}}</textarea>
    </div>
    <div class="mb-3">
        <!--Passando o id do usuário autenticado-->
        <input type="hidden" name="id_user" value="{{ auth()->id() }}">
        
        <button type="submit" class="btn btn-success" id="submit_form">Registrar notícia</button>
    </div>
</div>
<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NewsRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'title' => 'required|min:3',
            'subtitle' => 'required|min:3',
            'text' => 'required|min:10'
        ];
    }

    /**
     * Set messages of validation for iputs
     */
    public function messages(): array
    {
        return [
            'title.required' => 'O campo do título é obrigatório!',
            'title.min' => 'Digite ao menos 3 caracteres para o título!',
            'subtitle.required' => 'O campo do subtítulo é obrigatório!',
            'subtitle.min' => 'Digite ao menos 3 caracteres para o subtítulo!',
            'text.required' => 'O campo do texto é obrigatório!',
            'text.min' => 'Digite ao menos 10 caracteres para o texto!',
        ];
    }
}

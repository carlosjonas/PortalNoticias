<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryRequest extends FormRequest
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
            "title" => 'required|min:3'
        ];
    }

    /**
     * Set messages of validation for inputs
     */
    public function messages(): array
    {
        return [
            'title.required' => 'O campo do título é obrigatório!',
            'title.min' => 'Digite ao menos 3 caracteres para o título!',
            
        ];
    }
}

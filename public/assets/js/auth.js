document.addEventListener("DOMContentLoaded", function() {
    const token = localStorage.getItem('jwt_token');

    if (token) {
        fetch('/api/me', {
            method: 'GET',
            headers: {
                'Authorization': 'Bearer ' + token,
                'Content-Type': 'application/json'
            }
        })
        .then(response => response.json())
        .then(data => {
            console.log('Usuário autenticado:', data);
        })
        .catch(error => {
            console.error('Erro ao obter os dados do usuário:', error);
        });
    } else {
        console.log("Nenhum token encontrado. Usuário não autenticado.");
    }
});
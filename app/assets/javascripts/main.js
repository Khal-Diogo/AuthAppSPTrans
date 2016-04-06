function validalogin(){
    if(document.getElementById('email').value == ''){
        alert('O campo e-mail é obrigatório.');
        return false;
    }

    if(document.getElementById('senha').value == ''){
        alert('O campo senha é obrigatório.');
        return false;
    }
    else
        return true;
}

function validaCadastro(){



    if(document.getElementById('email').value == ''){
        alert('O campo e-mail é obrigatório.');
        return false;
    }

    if(document.getElementById('nome').value == ''){
        alert('O campo nome completo é obrigatório.');
        return false;
    }

    if(document.getElementById('faixaEtarea').value == ''){
        alert('O campo faixa etarea é obrigatório.');
        return false;
    }

    var inputsSexoM = document.getElementsByName('sexo')[0].checked;
    var inputsSexoF = document.getElementsByName('sexo')[1].checked;

    if(!(inputsSexoM || inputsSexoF)){
        alert('O campo sexo é obrigatório.');
        return false;
    }

    var senha = document.getElementById('senha').value;
    var confirm = document.getElementById('confirmSenha').value;

    if(senha == ''){
        alert('O campo senha é obrigatório.');
        return false;
    }

    if(confirm == ''){
        alert('O campo Confirmar Senha é obrigatório.');
        return false;
    }

    if(confirm != senha){
        alert('A confirmação da senha está diferente da senha.');
        return false;
    }
    else
        return true;
}

function logar(){
    window.parent.postMessage("logar","*");
}
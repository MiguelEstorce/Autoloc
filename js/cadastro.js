const btnVendedor = document.getElementById("btnVendedor");
const btnUsuario = document.getElementById("btnUsuario");
const formCadastro = document.getElementById("formCadastro");
const formVendedor = document.getElementById("formVendedor");
const formUsuario = document.getElementById("formUsuario");
function setCamposAtivos(container, ativo) {
    const campos = container
        .querySelectorAll("input, select, textarea");
    campos.forEach(function(campo) {
        campo.disabled = !ativo;
    });
}
function mostrarVendedor() {
    formCadastro.action = "cadastrol";
    formVendedor.style.display = "contents";
    formUsuario.style.display = "none";
    setCamposAtivos(formVendedor, true);
    setCamposAtivos(formUsuario, false);
    btnVendedor.classList.add("ativo");
    btnUsuario.classList.remove("ativo");
}

function mostrarUsuario() {
    formCadastro.action = "cadastrou";
    formVendedor.style.display = "none";
    formUsuario.style.display = "contents";
    setCamposAtivos(formVendedor, false);
    setCamposAtivos(formUsuario, true);
    btnUsuario.classList.add("ativo");
    btnVendedor.classList.remove("ativo");
}
btnUsuario.addEventListener("click", mostrarUsuario);
btnVendedor.addEventListener("click", mostrarVendedor);
mostrarVendedor();
function mostrarSenhas() {
    const campos = document.querySelectorAll(
        "#senhaVendedor, #confirmarSenhaVendedor, #senhaUsuario, #confirmarSenhaUsuario"
    );
    campos.forEach(function(campo) {
        if (campo) {
            campo.type = campo.type === "password" ? "text" : "password";
        }
    });
}

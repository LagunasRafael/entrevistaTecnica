function validarUsuario(nombre, correo, edad) {
    const errores = [];

    if (typeof nombre !== "string" || nombre.trim() === "") {
        errores.push("El nombre no puede estar vacio.");
    }

    // Comprueba que exista un texto antes de @ y un dominio después.
    const correoValido = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(
        typeof correo === "string" ? correo.trim() : ""
    );

    if (!correoValido) {
        errores.push("El correo electronico no es valido.");
    }

    const edadNumero = edad === "" || edad === null
        ? NaN
        : Number(edad);

    if (!Number.isFinite(edadNumero) || edadNumero < 18) {
        errores.push("La edad debe ser un número mayor o igual a 18.");
    }

    return {
        valido: errores.length === 0,
        errores
    };
}

// Caso de prueba 1: usuario valido
console.log(validarUsuario("Rafael", "rafael@example.com", 23));

// Caso de prueba 2: datos invalidos
console.log(validarUsuario(" ", "rafaelcorreo", 16));
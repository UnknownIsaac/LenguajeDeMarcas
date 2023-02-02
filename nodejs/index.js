console.log("hola mundo")

const express = require("express");

const app = express();

app.get("/", (req, res) => {
    res.send("Hola mundo")
});

app.get("/libros", (req, res) => {
    // llamada a BBDD
    const libros = [
        {
            nombre: "Libro1",
            isbn: "63463213213"
        },
        {
            nombre: "Libro2",
            isbn: "63463213213"
        },
    ];

    res.setHeader("Content-type", "application/json");
    res.json(libros);
});

app.listen(4000,() => {
    console.log("Escuchando en http://localhost:4000")
})
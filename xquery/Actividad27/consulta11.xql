<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
</head>
<body>
    <h1>Listado de libros</h1>
    <table border="1">
        <tr>
            <th>Titulo</th>
            <th>Editorial</th>
            <th>Precio</th>
        </tr>
            {
            for $x in doc("books.xml")/bib/libro
            return 
        <tr>
            <td style="text-align: left">{$x/titulo}</td>
            <td style="text-align: left">{$x/editorial}</td>
            <td style="text-align: right">{$x/precio}</td>
        </tr>
        }
    </table>
</body>
</html>
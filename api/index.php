<?php

// require_once("../app/controllers/ProductController.php");
require_once(__DIR__ .  "/../app/controllers/ProductController.php");
$productController = new ProductController();


// Enrutador simple
$uri = parse_url($_SERVER["REQUEST_URI"], PHP_URL_PATH);
$uri = str_replace("/fenixPHP/api", "", $uri);


//? Ahora si quiero saber el verbo http, debería de hacer lo mismo?
$method = $_SERVER["REQUEST_METHOD"];
//? Y los parametros 🧐
//* $query_params = $_GET; mejor en el controlador 


switch ($uri) {

    case "/":
        header("Content-Type: application/json");
        echo json_encode(
            ["endpoints" => [
                "api/products" => [
                    "GET" => ["params" => [
                        "page" => "integer"
                    ]]
                ],

                "api/product" => [
                    "POST" => [
                        "body" => [
                            "seccion" => "string max 10 caracteres",
                            "nombre_articulo" => "string max 10 caracteres",
                            "precio" => "Integer",
                            "fecha" => "DD/MM/YYYY",
                            "pais_de_origen" => "string max 0 caracteres",
                            "url_img" => "url de la imagen",
                        ]
                    ]
                ]
            ]]



        );
        break;

    case "/products":
        if ($method === "GET") {
            $productController->index();
        }
        break;
    case "/product":
        if ($method === "POST") {

            $productController->store();
        } else if ($method === "PATCH") {

            $productController->update();
        } else if ($method === "DELETE") {

            $productController->destroy();
        }
        break;


    default:
        // Ruta no encontrada
        http_response_code(404);
        /*  echo "<h1>404 - Not Found</h1>";
        echo "$uri <br>";
        echo $method; */
        echo "hola";


        break;
}

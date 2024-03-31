<?php


require_once(__DIR__ . "/../models/Product.php");



class ProductController
{

    /* Respuesta al cliente */
    private $response = [
        "status" => 200,
        "data" => []
    ];


    /* Unificar las respuestas */
    private function Response()
    {
        header("Content-Type: application/json");
        http_response_code($this->response["status"]);
        echo json_encode($this->response);
    }


    /* <---GET ALL ---> */
    public  function index()
    {
        $page = isset($_GET["page"]) ? $_GET["page"] : 1;
        // echo $page;
        //? Debería usar un método estatico para no tener que insanciar un producto y poder listarlos todos.
        $products = Product::get_all_products($page);


        $this->response["status"] = 200;
        $this->response["data"] = [
            "products" => $products,
            "page" => intval($page),
            "quantity" => count($products)
        ];
        $this->Response();
    }

    /**
     * Store a newly created resource in storage.
     * POST
     */
    public function store()
    {
        $bodyData = json_decode(file_get_contents('php://input'), true);

        /* validar información */
        //? más normalizada está mis nalgas que esa DB
        /* 
        * Solo pregunto si tiene minínmo 5 campos que son los obligatorios.
        * Podría hacer que valide si tiene los campos obligatorios y evaluarlo en este mismo if,
        * pero de esta forma evito ejecutar el bucle, solo ahorraria una lineas de código. 
        TODO? Preguntar que sería mejor.
        
        */
        if (count($bodyData) < 5) {

            $this->response["status"] = 400;
            $this->response["error"] = "Falta información";
            $this->Response();
            exit();
        }

        // * Que las claves concuerden con los campos dela db o esto lo debe hacer el model?
        //print_r(Product::$requiredColumns);
        //print_r(array_keys($bodyData));
        //print_r(array_keys($bodyData) == Product::$requiredColumns);
        //? Si no estan los campos requeridos
        foreach (Product::$requiredColumns as $field) {
            if (!isset($bodyData[$field])) {
                $this->response["status"] = 400;
                $this->response["error"] = "Información incorrecta, verifique la documentación de la api., falta el campo $field";
                $this->Response();
                exit();
            }
        }

        /* Ejecutar la consulta */
        $product = new Product();

        $result = $product->create_product($bodyData);

        if ($result["ok"]) {

            $bodyResponse = $bodyData;
            $bodyResponse["id"] = $result["last_id"];

            $this->response["status"] = 200;
            $this->response["data"] = $bodyResponse;
            $this->Response();
            exit();
        } else {


            $error_msg = $result["error_code"] == 1366 || 1406 ? "Información incorrecta, verifique la documentación de la api." : "Ha ocurrido un error inesperado";

            $this->response["status"] = $result["error_code"] == 1366 || 1406 ? 400 : 500;
            $this->response["error"] = $error_msg;
            $this->Response();
        }

        /* retornar la respuesta */
    }

    /**
     *  Update a resource in storage.
     * PATCH
     */

    public function update()
    {
        /* Valida el id */
        if (!isset($_GET["id_product"])) {
            $this->response["status"] = 400;
            $this->response["error"] = "Id invalido";
            $this->Response();
        }
        $bodyData = json_decode(file_get_contents('php://input'), true);

        /* SI manda más campos de los que se permiten */
        if (count($bodyData) > count(Product::$allColumns)) {
            $this->response["status"] = 400;
            $this->response["error"] = "Campos invalidos";
            $this->Response();
        }

        //? Con esta lógica toma los campos que envian y los que se permiten y descarta los demás (Si es que se mandan campos que no se permiten)
        $columnsToChange = [];
        foreach ($bodyData as $key => $value) {
            if (in_array($key, Product::$allColumns)) {

                $columnsToChange[$key] = $value;
            }
        }

        if (count($columnsToChange) == 0) {
            $this->response["status"] = 400;
            $this->response["error"] = "Campos invalidos";
            $this->Response();
            exit();
        }

        /* Si ya paso por la súper verificación */
        $product = new Product();
        $result = $product->update_product($columnsToChange, $_GET["id_product"]);

        if ($result["ok"]) {
            $this->response["status"] = 204;
            $this->Response();
            exit();
        } else {
            $error_msg = $result["error_code"] == 1366 || 1406 ? "Información incorrecta, verifique la documentación de la api." : "Ha ocurrido un error inesperado";
            $this->response["status"] = $result["error_code"] == 1366 || 1406 ? 400 : 500;
            $this->response["error"] = $error_msg;
            $this->Response();
        }
    }

    public function destroy()
    {

        /* Valida el id */
        if (!isset($_GET["id_product"])) {
            $this->response["status"] = 400;
            $this->response["error"] = "Id invalido";
            $this->Response();
        }

        $id_product = $_GET["id_product"];
        $product = new Product();
        $result = $product->delete_product($id_product);



        if (!$result["ok"]) {
            print_r($result);
            $this->response["status"] = 400;
            $this->Response();
            exit();
        } else if ($result["affected_rows"] >= 1) {
            $this->response["status"] = 200;
            $this->response["data"]["msg"] = "Se elimino el producto con el id: $id_product";
            $this->Response();
            exit();
        }

        $this->response["status"] = 404;
        $this->response["data"]["error_msg"] = "No se encontro ningún producto con el id: $id_product";
        $this->Response();
        exit();
    }
}

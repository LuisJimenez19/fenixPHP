<?php

namespace App\Controllers;

use App\Models\Product;


class ProductController extends BaseController
{



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
            "quantity" => $products != null ? count($products) : 0
        ];
        $this->Response();
    }

    /**
     * Store a newly created resource in storage.
     * POST
     */
    public function store()
    {

        //obtiene los datos a través de post
        $data = $this->request->request->all();

        // * Que las claves concuerden con los campos dela db o esto lo debe hacer el model?
        //? Si no estan los campos requeridos
        foreach (Product::$requiredColumns as $field) {
            if (!isset($data[$field])) {
                $this->response["status"] = 400;
                $this->response["error"] = "Información incorrecta, verifique la documentación de la api., falta el campo $field";
                $this->Response();
                exit();
            }
        }

        $result = Product::create_product($data);

        if ($result["ok"]) {
            $bodyResponse = $data;
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

        //obtiene los datos a través de post
        $data = $this->request->request->all();

        /* Valida el id */
        if (!isset($data["id_product"])) {
            $this->response["status"] = 400;
            $this->response["error"] = "Id invalido";
            $this->Response();
        }

        //? Con esta lógica toma los campos que envian y los que se permiten y descarta los demás (Si es que se mandan campos que no se permiten)
        $columnsToChange = [];
        foreach ($data as $key => $value) {
            if (in_array($key, Product::$allColumns)) {
                $columnsToChange[$key] = $value;
            }
        }

        echo json_encode($columnsToChange);

        if (count($columnsToChange) == 0) {
            $this->response["status"] = 400;
            $this->response["error"] = "Campos invalidos";
            $this->Response();
            exit();
        }

        /* Si ya paso por la súper verificación */
        $result = Product::update_product($columnsToChange, $data["id_product"]);

        echo json_encode($result);

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
        $result = Product::delete_product($id_product);


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

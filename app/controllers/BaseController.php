<?php

namespace App\Controllers;

use Symfony\Component\HttpFoundation\Request;

class BaseController {

    /* Respuesta al cliente */
    protected $response = [
        "status" => 200,
        "data" => []
    ];


    /* Unificar las respuestas */
    protected function Response()
    {
        http_response_code($this->response["status"]);
        echo json_encode($this->response);
    }

    protected $request;

    public function __construct()
    {
        $this->request = Request::createFromGlobals();
    }


}
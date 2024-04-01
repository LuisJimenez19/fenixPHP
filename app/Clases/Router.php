<?php

namespace App\Clases;

use InvalidArgumentException;

class Router
{


    protected $routes;
    protected $current_uri;
    protected $current_method;


    /**
     * 
     * @param $routes is array with 
     * [
     *  'uri' => 'example',
     *  'method' => 'get',
     *  'controller' => 'ControllerName',
     *  'methodController' => 'ControllerMethod'
     * ]
     */
    public function __construct(array $routes)
    {
        // Enrutador simple
        $uri = parse_url($_SERVER["REQUEST_URI"], PHP_URL_PATH);
        $uri = str_replace("/api", "", $uri);

        //? Ahora si quiero saber el verbo http, debería de hacer lo mismo?
        $method = $_SERVER["REQUEST_METHOD"];
        //? Y los parametros
        //* $query_params = $_GET; mejor en el controlador 
        $this->current_uri = $uri;
        $this->current_method = $method;
        $this->routes = $routes;
        $this->init();
    }

    private function init()
    {
        foreach ($this->routes as $route) {
            if ($route['uri'] == $this->current_uri && $route['method'] == $this->current_method) {
                $this->callMethod($route['controller'], $route['methodController']);
            }
        }
    }


    private function callMethod(string $className, string $methodName)
    {
        if (!class_exists($className))
            throw new InvalidArgumentException("La clase '$className' no existe.");


        if (!method_exists($className, $methodName))
            throw new InvalidArgumentException("El método '$methodName' no existe en la clase '$className'.");

        $class = new $className;
        $class->$methodName();
    }
}

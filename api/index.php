<?php

require('../vendor/autoload.php');

use App\Clases\Router;

header("Content-Type: application/json");//La cabeceras deben ir antes que la lógica



$routes = [
    [
        'uri' => '/',
        'method' => 'GET', 
        'controller' => 'App\Controllers\ProductController',
        'methodController' => 'index'
    ],
    [
        'uri' => '/products',
        'method' => 'GET', 
        'controller' => 'App\Controllers\ProductController',
        'methodController' => 'index'
    ],
    [
        'uri' => '/products',
        'method' => 'POST', 
        'controller' => 'App\Controllers\ProductController',
        'methodController' => 'store'
    ],
    [
        'uri' => '/update-product',
        'method' => 'POST', 
        'controller' => 'App\Controllers\ProductController',
        'methodController' => 'update'
    ],

    [
        'uri' => '/delete-product',
        'method' => 'POST', 
        'controller' => 'App\Controllers\ProductController',
        'methodController' => 'destroy'
    ],
    
    ];

$router = new Router($routes);



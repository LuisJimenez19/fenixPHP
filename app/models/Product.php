<?php

namespace App\Models;


class Product extends Model
{
    /* Los atributos seran los campos de la tabla */
    // * La tabla ya estaba, la pedi a una IA que la hiciera, solo voy hacer la API
    private static $name_table = "productos";

    static $requiredColumns = [
        "seccion",
        "nombre_articulo",
        "fecha",
        "precio",
        "pais_de_origen",
    ];

    static $allColumns = [
        "seccion",
        "nombre_articulo",
        "fecha",
        "precio",
        "pais_de_origen",
        "url_img"
    ];

    /* Viendo los proyectos de laravel, estos metodos y atributos se deberían usar a través de un controlador donde se listan los metodos:
    index para mostrar todo.
    show para mostrar uno.
    store para guardar uno
    update para actualizar
    destroy para eliminar.
    * Pero por ahora lo hare rápido porque el tiempo es oro y yo no tengo tiempo pa los envidiosos, me atraso, yo no creo en los fracasos...
    */

    public static function get_all_products($page = 1)
    {

        $qt = 10;
        $offset = ($page - 1) * $qt;

        /* Crero la query */
        $query = "SELECT * FROM " . self::$name_table .  " LIMIT $qt OFFSET $offset";

        /* Método de la súper clase ndea ni que  fuera python 
        No puedo usar el 
        */
        // $result = parent::get_data($query);
        $result = self::get_data($query);

        //echo json_encode($result);
        return $result;
    }

    public static function create_product(array $data)
    {

        $seccion = $data["seccion"];
        $nombre_articulo = $data["nombre_articulo"];
        $fecha = $data["fecha"];
        $pais_de_origen = $data["pais_de_origen"];
        $precio = $data["precio"];
        $url_img = isset($data["url_img"]) ? $data["url_img"] : "";

        /* Crero la query */
        // $query = "INSERT INTO " . self::$name_table . "(seccion, nombre_articulo, fecha, pais_de_origen, precio)  VALUES ('$seccion', '$nombre_articulo', '$fecha', '$pais_de_origen', '$precio'";
        $sql = "INSERT INTO productos (seccion, nombre_articulo, fecha, pais_de_origen, precio";
        if (!empty($url_img)) {
            $sql .= ", url_img";
        }
        $sql .= ") VALUES ('$seccion', '$nombre_articulo', '$fecha', '$pais_de_origen', '$precio'";
        if (!empty($url_img)) {
            $sql .= ", '$url_img'";
        }
        $sql .= ")";

        $result = self::insert_data($sql);

        return $result;
    }

    /**
     * Actualizar
     *  */
    public static function update_product(array $data, string $id)
    {


        /*  $seccion = $data["seccion"] ?? null;
        $nombre_articulo = $data["nombre_articulo"] ?? null;
        $fecha = $data["fecha"] ?? null;
        $pais_de_origen = $data["pais_de_origen"] ?? null;
        $precio = $data["precio"] ?? null;
        $url_img = $data["url_img"] ?? null; */
        $seccion = isset($data["seccion"]) ? "'" . $data["seccion"] . "'" : "seccion";
        $nombre_articulo = isset($data["nombre_articulo"]) ? "'" . $data["nombre_articulo"] . "'" : "nombre_articulo";
        $fecha = isset($data["fecha"]) ? "'" . $data["fecha"] . "'" : "fecha";
        $pais_de_origen = isset($data["pais_de_origen"]) ? "'" . $data["pais_de_origen"] . "'" : "pais_de_origen";
        $precio = isset($data["precio"]) ? "'" . $data["precio"] . "'" : "precio";
        $url_img = isset($data["url_img"]) ? "'" . $data["url_img"] . "'" : "url_img";

        $sql = "UPDATE productos SET seccion = IFNULL($seccion, seccion), 
                              nombre_articulo = IFNULL($nombre_articulo, nombre_articulo), 
                              fecha = IFNULL($fecha, fecha), 
                              pais_de_origen = IFNULL($pais_de_origen, pais_de_origen), 
                              precio = IFNULL($precio, precio), 
                              url_img = IFNULL($url_img, url_img)  
        WHERE id = $id";

        $result = self::update_data($sql);

        return $result;
    }




    /**
     * Eliminar un producto 
     *  
     * */
    public static function delete_product(string $id)
    {
        $sql = "DELETE FROM productos WHERE id = $id";
        $result = self::delete_data($sql);
        return $result;
    }
}

<?php

namespace App\Models;

use mysqli;

class Connection
{
    private static $DB_HOST = "localhost";
    private static $DB_USER = "root";
    private static $DB_PASSWORD = "";
    private static $DB_PORT = 3306;
    private static $DB_NAME = "shopping_angel";

    protected static $connection; // conexión a la DB

    public function __construct()
    {
        // Constructor privado para evitar instanciación directa
    }

    public static function getConnection()
    {
        if (!isset(self::$connection)) {
            self::$connection = new mysqli(self::$DB_HOST, self::$DB_USER, self::$DB_PASSWORD, self::$DB_NAME, self::$DB_PORT);

            if (self::$connection->connect_errno) {
                echo "Fail to connect to the DB";
                die();
            }
        }

        return self::$connection;
    }
}
<?php

namespace App\Models;

use Exception;

class Model extends Connection
{
    /* GET ALL */

    public static function get_data($query)
    {
        try {
            $connection = self::getConnection(); // Obtener la conexión a través del método estático

            $results = $connection->query($query);

            if (!$results) {
                echo "Error al ejecutar la consulta: " . $connection->error;
                return false;
            }

            $data = [];
            while ($row = $results->fetch_assoc()) {
                $data[] = $row;
            }

            return $data;
        } catch (Exception $error) {
            return [
                "error_msg" => $error->getMessage(),
                "error_code" => $error->getCode(),
                "ok" => false

            ];
        }
    }

    public static function insert_data($query)
    {
        try {
            $connection = self::getConnection(); // Obtener la conexión a través del método estático

            $result = $connection->query($query);
            if (!$result) {
                return [
                    "error" => $connection->error,
                    "ok" => false
                ];
            }
            return [
                "error" => null,
                "ok" => true,
                "last_id" => $connection->insert_id
            ];
        } catch (Exception $error) {
            return [
                "error_msg" => $error->getMessage(),
                "error_code" => $error->getCode(),
                "ok" => false

            ];
        }
    }

    public static function update_data($query)
    {
        try {
            $connection = self::getConnection(); // Obtener la conexión a través del método estático

            $result = $connection->query($query);
            if (!$result) {
                return [
                    "error" => $connection->error,
                    "ok" => false
                ];
            }

            return [
                "error" => null,
                "ok" => true,
            ];
        } catch (Exception $error) {
            return [
                "error_msg" => $error->getMessage(),
                "error_code" => $error->getCode(),
                "ok" => false

            ];
        }
    }


    public static function delete_data($query)
    {
        try {
            $connection = self::getConnection(); // Obtener la conexión a través del método estático

            $result = $connection->query($query);

            if (!$result) {
                return [
                    "error" => $connection->error,
                    "ok" => false
                ];
            }

            return [
                "error" => null,
                "ok" => true,
                "affected_rows" => $connection->affected_rows
            ];
        } catch (Exception $error) {
            return [
                "error_msg" => $error->getMessage(),
                "error_code" => $error->getCode(),
                "ok" => false

            ];
        }
    }
}

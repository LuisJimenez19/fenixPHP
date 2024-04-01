<?php

class Connection
{
    /* variables para crear la conexión */
    //TODO hay que configurar el servidor para que pueda variables de entorno, e investigar como usarlas.
    /*    private $DB_HOST = "sql313.infinityfree.com";
    private $DB_USER = "if0_36279830";
    private $DB_PASSWORD = "ubU2O7OgNKh58T";
    private $DB_PORT = 3306;
    private $DB_NAME = "if0_36279830_shopping_angel"; */
    private $DB_HOST = "localhost";
    private $DB_USER = "root";
    private $DB_PASSWORD = "";
    private $DB_PORT = 3306;
    private $DB_NAME = "shopping_angel";

    private $connection; // conexión a la DB

    /* CONSTRUCTOR */
    function __construct()
    {

        /*  $this->DB_HOST = getenv('DB_HOST');
        $this->DB_USER = getenv('DB_USER');
        $this->DB_PASSWORD = getenv('DB_PASSWORD');
        $this->DB_PORT = getenv('DB_PORT');
        $this->DB_NAME = getenv('DB_NAME'); */
        /* almeceno la conexión */
        $this->connection = new mysqli($this->DB_HOST, $this->DB_USER, $this->DB_PASSWORD, $this->DB_NAME, $this->DB_PORT);
        $this->connection->set_charset("utf8");
        if ($this->connection->connect_errno) {
            echo "Fail to connect to the DB";
            die();
        }
    }


    /* GET ALL */

    public function get_data($query)
    {
        try {
            $results = $this->connection->query($query);

            if (!$results) {
                echo "Error al ejecutar la consulta: " . $this->connection->error;
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

    public function insert_data($query)
    {
        try {
            $result = $this->connection->query($query);
            if (!$result) {
                return [
                    "error" => $this->connection->error,
                    "ok" => false
                ];
            }
            return [
                "error" => null,
                "ok" => true,
                "last_id" => $this->connection->insert_id
            ];
        } catch (Exception $error) {
            return [
                "error_msg" => $error->getMessage(),
                "error_code" => $error->getCode(),
                "ok" => false

            ];
        }
    }
    public function update_data($query)
    {
        try {
            $result = $this->connection->query($query);
            if (!$result) {
                return [
                    "error" => $this->connection->error,
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


    public function delete_data($query)
    {
        try {
            $result = $this->connection->query($query);

            if (!$result) {
                return [
                    "error" => $this->connection->error,
                    "ok" => false
                ];
            }

            return [
                "error" => null,
                "ok" => true,
                "affected_rows" => $this->connection->affected_rows
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

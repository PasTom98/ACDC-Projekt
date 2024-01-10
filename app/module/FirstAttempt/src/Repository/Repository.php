<?php

namespace FirstAttempt\Repository;

use FirstAttempt\Database\Connection;

abstract class Repository
{
    protected \PDO $connection;

    public function __construct()
    {
        $this->connection = Connection::getInstance()->getPdo();
    }
}
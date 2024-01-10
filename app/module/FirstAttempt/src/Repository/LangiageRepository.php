<?php

namespace FirstAttempt\Repository;

use FirstAttempt\Model\Language;

class LanguageRepository extends Repository
{
    private string $table = Language::TABLE;

    public function findAll(): array
    {
        return $this->connection->query("SELECT * FROM {$this->table}")->fetchAll(\PDO::FETCH_CLASS, Language::class);
    }
}
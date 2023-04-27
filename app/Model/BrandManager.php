<?php

declare(strict_types=1);

namespace App\Model;

use Nette\Utils\ArrayHash;
use Nette\Database\Explorer;
use Nette\SmartObject;
use Nette\Database\Table\Selection;

/**
 * model for managing Brands
 * @package App\Model
 */
class BrandManager {
    use SmartObject;

    /** @var Explorer service for work with database */
    private Explorer $database;
    
    /** Constants for work with database */
    const
        TABLE_NAME = 'brand',
        COLUMN_ID = 'id',
        COLUMN_NAME = 'name',
        COLUMN_DATE = 'insertion_date';

	/**
	 * @param Explorer $database injected service for work with database
	 */
	public function __construct(Explorer $database) {
		$this->database = $database;
    }

    /**
     * Returns list of all brands in database
     * @return Selection brand list
     */
    public function getAllBrands(): Selection {
        return $this->database->table(self::TABLE_NAME)
        ->where('deleted', FALSE)
        ->order('name');
    }
 
    /**
     * Returns list of all brands in database ordered by name descending
     * @return Selection brand list
     */
    public function getBrandsOrderedByNameDescending(): Selection {
       return $this->database->table(self::TABLE_NAME)
       ->where('deleted', FALSE)
       ->order('name DESC');
    }
 
    /**
     * Returns brand with given ID
     * @param int $id brand ID
     * @return false|ActiveRow brand with given ID, false if there is no brand with given ID
     */
    public function getBrand(int $id) {
        return $this->database->table(self::TABLE_NAME)->where(self::COLUMN_ID, $id)->fetch();
    }

    /**
     * inserts new brand
     * @param array|ArrayHash $brand brand data
     */
    public function saveBrand(ArrayHash $brand): void {
        if (empty($brand[self::COLUMN_ID])) {
            unset($brand[self::COLUMN_ID]);
        }
        $this->database->table(self::TABLE_NAME)->insert($brand); 
    }

    /**
     * Updates brand with given id
     * @param array|ArrayHash $brand brand data
     */
    public function updateBrand(ArrayHash $brand): void {
        $this->database->table(self::TABLE_NAME)->where(self::COLUMN_ID, $brand[self::COLUMN_ID])->update($brand);
    }

    /**
     * Sets brand to deleted
     * @param int $brandId brand id
     */
    public function setDeleted(int $brandId): void {
        $this->database->table(self::TABLE_NAME)
            ->where(self::COLUMN_ID, $brandId)
            ->update(['deleted' => TRUE]);
    }

}
<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelProduk extends Model
{
    protected $table = 'produk';
    protected $primaryKey = 'id';
    
    protected $allowedFields = [        
        'name',
        'image',
        'deskripsi',
        'price',
        'price_sales',
        'rating',
        'created_at',
        'created_by',
        
    ];
}

<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    protected $table = 'user'; // Table name
    protected $primaryKey = 'id_user'; // Primary key field
    protected $allowedFields = ['id_user', 'real', 'username', 'password', 'Level']; // Fields we are allowed to insert/update
    
    // If you don't want to specify all the columns, you can use this:
    // protected $returnType = 'array'; // This is optional, by default return type is 'array'

    // Function to find a user by the 'real' name (recipient's name)
    public function getUserByName($name)
    {
        return $this->where('real', $name)->first(); // Returns the first match or null if no match
    }
}

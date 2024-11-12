<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\M_Lelang;

class Home extends BaseController
{

	public function Login()
	{
        $model= new M_lelang();
        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);

    echo view('Login', $data);
	}
	public function aksi_login() {
        $user_id = session()->get('id_user');
        $user = $this->request->getPost('username');
        $password = $this->request->getPost('password');
        $recaptchaResponse = $this->request->getPost('g-recaptcha-response');
        $backupCaptcha = $this->request->getPost('backup_captcha');
    
        // Check if the server is online
       
        $model = new M_lelang();
            $where = array(
                'user' => $user,
                'password' => $password
            );
        
            $cek = $model->getWhere('user', $where);
        if ($cek > 0) {
                    session()->set('user', $cek->user);
                    session()->set('real', $cek->real);
                    session()->set('id_user', $cek->id_user);
                    session()->set('Level', $cek->Level);
                    $model->logActivity($user_id, 'Login', 'User Has Log in.');
                    return redirect()->to('home/dashboard');
                } else {
                    print_r($where);
                    return redirect()->to('home/login');
                }
    }
	
	public function setting()
           {
            $userLevel = session()->get('Level');
            $allowedLevels = ['admin'];
            $user_id = session()->get('id_user');
            if (in_array($userLevel, $allowedLevels)) {
               $model = new M_lelang();

               $logoData = $model->tampil('logo'); // Fetch all logos
               $filteredLogo = array_filter($logoData, function($item) {
                   return $item->id_logo == 1; // Adjust this condition as needed
               });
               $data['satu'] = reset($filteredLogo);
               $where = array('id_logo' => $id);
               $data['sa'] = $model->getwhere('logo', $where);
               $where=array('id_user'=>session()->get('id_user'));
        $data['user']=$model->getWhere('user', $where);

        $model->logActivity($user_id, 'View', 'User view Setting.');
               echo view('header', $data);
               echo view('menu', $data);
               echo view('setting', $data);
               echo view('footer');
            } else {
                return redirect()->to('home/notfound');
            }
           }
           public function aksi_setting()
           {
               $model = new M_lelang();
               $user_id = session()->get('id_user');
               $a = $this->request->getPost('nama');
               $icon = $this->request->getFile('image2');
               $dash = $this->request->getFile('image');

           
               // Debugging: Log received data
               log_message('debug', 'Website Name: ' . $a);
               log_message('debug', 'Tab Icon: ' . ($icon ? $icon->getName() : 'None'));
               log_message('debug', 'Dashboard Icon: ' . ($dash ? $dash->getName() : 'None'));
           
               $data = ['nama_logo' => $a];
               $uploadPath = ROOTPATH . 'public/assets/img/custom/';
           
               if ($icon && $icon->isValid() && !$icon->hasMoved()) {
                   if (!file_exists($uploadPath . $icon->getName())) {
                       $icon->move($uploadPath, $icon->getName());
                   }
                   $data['icon'] = $icon->getName();
               }
           
               if ($dash && $dash->isValid() && !$dash->hasMoved()) {
                   if (!file_exists($uploadPath . $dash->getName())) {
                       $dash->move($uploadPath, $dash->getName());
                   }
                   $data['logos'] = $dash->getName();
               }
           
           
               $where = ['id_logo' => 1];
               $model->logActivity($user_id, 'Updated', 'User Has Updated The Logo');
               $model->edit('logo', $data, $where);
           
               return redirect()->to('setting/1');
           }
		   public function dashboard()
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['admin', 'petugas'];
    $user_id = session()->get('id_user');

    if (in_array($userLevel, $allowedLevels)) {
        $model = new M_lelang();

        // Fetch single logo data based on a condition
        $logoData = $model->tampil('logo'); 
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);

        // Fetch specific data with conditions
        $whereLogo = ['id_logo' => 1];
        $data['sa'] = $model->getWhere('logo', $whereLogo);

        $whereUser = ['id_user' => $user_id];
        $data['user'] = $model->getWhere('user', $whereUser);

        // Use countData to get the count of records in specific tables
        $data['masuk'] = $model->countData('surat_masuk');
        $data['keluar'] = $model->countData('surat_keluar');

        // Log the user's activity
        $model->logActivity($user_id, 'View', 'User view Dashboard.');

        // Load views
        echo view('header', $data);
        echo view('menu', $data);
        echo view('dashboard', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/notfound');
    }
}

	public function logout() {
        $user_id = session()->get('id_user');

            // Log the logout activity
            $model = new M_lelang();        
            $model->logActivity($user_id, 'Logout', 'User Has Logout.');
        session()->destroy();
        return redirect()->to('http://localhost:8080/home');
    }
	public function activity_log()
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $model= new M_lelang();
        $user_id = session()->get('id_user');
        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
    
        $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
        $logs = $model->getActivityLogs();
        $data['s'] = $model->tampil('user', 'id_user');
        $data['logs'] = $logs;
        $model->logActivity($user_id, 'View', 'User view Activity Log.');
        echo view('header');
        echo view('menu', $data);
        return view('activity_log', $data);
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
}
public function admin()
    {
        $userLevel = session()->get('Level');
            $allowedLevels = ['admin'];
        
            if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
    
    $data['s'] = $model->tampil('user', 'id_user');
    $model->logActivity($user_id, 'View', 'User view Siswa Menu.');
     echo view('header', $data);
    echo view('menu',$data);
    echo view('admin',$data);
    echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
    }
    public function t_user()
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];
    $user_id = session()->get('id_user');
    if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
    $data['user']=$model->getWhere('user', $where);
    $model->logActivity($user_id, 'View', 'User view Add User.');
        echo view('header', $data);
        echo view('menu', $data);
        echo view('t_user');
        echo view('footer');
    } else {
        return redirect()->to('home/notfound');
    }
}
public function aksi_t_user()
    {
        $userLevel = session()->get('Level');
        $allowedLevels = ['admin'];
        $user_id = session()->get('id_user');
        if (in_array($userLevel, $allowedLevels)) {
            $model = new M_lelang(); // Assuming you instantiate the model like this
           

            $b = $this->request->getPost('nama');
            $c = $this->request->getPost('username');
            $d = $this->request->getPost('level1');
            
            // Set password based on level
            if ($d == 'admin') {
                $password = md5("admin");
            } elseif ($d == 'petugas') {
                $password = md5("petugas");
            } else {
                $password = md5("default137"); // Default password if level is not recognized
            }
    
            $isi = array(
           

                'user' => $c,
                'Level' => $d,
                'password' => $password,
                'real' => $b,
            );
    
            // Print the data for debugging purposes
            // print_r($isi);
    
            // Perform the insert operation
         
            $model->tambah('user', $isi);
            $model->logActivity($user_id, 'Add', 'User add user.');
            // Redirect to the desired page
            return redirect()->to('home/t_user');
        } else {
            return redirect()->to('notfound');
        }
    }
    public function petugas()
    {
        $userLevel = session()->get('Level');
            $allowedLevels = ['admin'];
        
            if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
    
    $data['s'] = $model->tampil('user', 'id_user');
    $model->logActivity($user_id, 'View', 'User view Siswa Menu.');
     echo view('header', $data);
    echo view('menu',$data);
    echo view('petugas',$data);
    echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
    }
    public function SM()
    {
        $userLevel = session()->get('Level');
            $allowedLevels = ['admin','petugas'];
        
            if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
    
            $data['s'] = $model->join('surat_masuk',
            'user',
            'surat_masuk.penerima = user.id_user', []);
    $model->logActivity($user_id, 'View', 'User view Surat Masuk.');
     echo view('header', $data);
    echo view('menu',$data);
    echo view('SM',$data);
    echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
}
    public function SK()
    {
        $userLevel = session()->get('Level');
            $allowedLevels = ['admin','petugas'];
        
            if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
    
            $data['s'] = $model->join('surat_keluar',
            'user',
            'surat_keluar.pengirim = user.id_user', []);
    $model->logActivity($user_id, 'View', 'User view Surat keluar.');
     echo view('header', $data);
    echo view('menu',$data);
    echo view('SK',$data);
    echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
}
public function KS()
    {
        $userLevel = session()->get('Level');
            $allowedLevels = ['admin','petugas'];
        
            if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
    $model->logActivity($user_id, 'View', 'User view Menu Kirim Surat.');
     echo view('header', $data);
    echo view('menu',$data);
    echo view('KS');
    echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
}
public function aksi_KS()
{
    // Retrieve user level, user ID, and username from the session
    $userLevel = session()->get('Level');
    $allowedLevels = ['admin', 'petugas'];
    $user_id = session()->get('id_user');
    $username_1 = session()->get('real'); // Use 'real' if available, otherwise use 'username'

    // Debugging: Check all session variables to confirm 'real' or 'username' exists
    if (!$username_1) {
        echo "Session variables: ";
        print_r(session()->get()); // View all session variables for debugging
        echo "Error: Neither 'real' nor 'username' is set in the session.";
        return; // Stop execution if both 'real' and 'username' are missing
    }

    // Proceed only if the user has the right level
    if (in_array($userLevel, $allowedLevels)) {
        $model = new M_lelang(); // Main model for the operation
        $userModel = new \App\Models\UserModel(); // Model for user data

        // Get the recipient name and letter content from POST request
        $b = $this->request->getPost('nama');  // Recipient's name
        $c = $this->request->getPost('surat'); // Letter content
        
        // Set the current date
        $tgl = date('Y-m-d');
        $pengirim = $user_id; // Sender's ID from session
        $username1 = $username_1; // Sender's name from session, 'real' or 'username'

        // Check if the 'penerima' exists in the user table
        $existingUser = $userModel->getUserByName($b); // Query for the recipient by name

        if ($existingUser) {
            // Recipient exists, so use their user ID as the 'penerima'
            $id_existing = $existingUser['id_user'];

            // Prepare data for 'surat_keluar' and 'surat_masuk'
            $suratKeluar = array(
                'tgl' => $tgl,
                'pengirim' => $pengirim,
                'penerima' => $b, // Recipient's name
                'surat' => $c,
            );
            $suratMasuk = array(
                'tgl' => $tgl,
                'pengirim' => $username1, // Sender's name, either 'real' or 'username'
                'penerima' => $id_existing, // Recipient's user ID
                'surat' => $c,
            );

            // Uncomment these lines to insert into the database
            $model->tambah('surat_keluar', $suratKeluar);
            $model->tambah('surat_masuk', $suratMasuk);

            // For debugging, output the arrays
            print_r($suratKeluar);
            print_r($suratMasuk);
        } else {
            // If recipient does not exist, only insert into 'surat_keluar'
            $suratKeluar = array(
                'tgl' => $tgl,
                'pengirim' => $pengirim,
                'penerima' => $b, // Recipient's name
                'surat' => $c,
            );

            // Uncomment this line to insert into the database
            $model->tambah('surat_keluar', $suratKeluar);

            // For debugging, output the array
            print_r($suratKeluar);
        }

        // Log the user's activity
        $model->logActivity($user_id, 'Add', 'User Mengirim Surat.');

        // Redirect to the desired page after processing
        return redirect()->to('home/SK');
    } else {
        // If user level is not allowed, redirect to a "not found" page
        return redirect()->to('notfound');
    }
}

public function Cuti()
    {
        $userLevel = session()->get('Level');
            $allowedLevels = ['admin','petugas'];
        
            if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
    
            $data['s'] = $model->joinThreeTables('cuti',
            'jeniscuti',
            'user',
            'cuti.jenis_Cuti = jeniscuti.id_JC', 
            'cuti.nama = user.id_user', []);
    $model->logActivity($user_id, 'View', 'User view Menu Cuti.');
     echo view('header', $data);
    echo view('menu',$data);
    echo view('Cuti',$data);
    echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
}
public function AC()
    {
        $userLevel = session()->get('Level');
            $allowedLevels = ['admin','petugas'];
        
            if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
    
            $data['s'] = $model->joinThreeTables('cuti',
            'jeniscuti',
            'user',
            'cuti.jenis_Cuti = jeniscuti.id_JC', 
            'cuti.nama = user.id_user', []);
            $data['t'] = $model->tampil('jeniscuti', 'id_JC');
           

    $model->logActivity($user_id, 'View', 'User view Menu Ajukan Cuti.');
     echo view('header', $data);
    echo view('menu',$data);
    echo view('AC',$data);
    echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
}
public function aksi_AC()
    {
        $userLevel = session()->get('Level');
        $allowedLevels = ['admin','petugas'];
        $user_id = session()->get('id_user');
        if (in_array($userLevel, $allowedLevels)) {
            $model = new M_lelang(); // Assuming you instantiate the model like this
           

 
            $c = $this->request->getPost('JC');
            $d = $this->request->getPost('awal');
            $e = $this->request->getPost('akhir');
            $f = $this->request->getPost('keterangan');
            $ya = $user_id;
            $isi = array(
                
                'nama' => $ya,
                'jenis_Cuti' => $c,
                'awal' => $d,
                'akhir' => $e,
                'keterangan' => $f,
            );
    
            // Print the data for debugging purposes
            // print_r($isi);
    
            // Perform the insert operation
         
            $model->tambah('cuti', $isi);
            $model->logActivity($user_id, 'Add', 'User add user.');
            // Redirect to the desired page
            return redirect()->to('home/cuti');
        } else {
            return redirect()->to('notfound');
        }
    }
}



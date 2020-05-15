<?php
header("Access-Control-Allow-Methods: GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");
header('Access-Control-Allow-Origin: *');


class ApiModel extends CI_model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    //login
    function getUser($email, $password)
    {
        $p = md5($password);
        return $this->db->query("select * from user where password='$p'");
    }
    function getUserById($id)
    {
        return $this->db->query("select * from user where user_id=$id");
	}
	function editFoto($id,$path)
    {
        return $this->db->query("update user set foto='$path' where user_id=$id");
    }
    function editNama($id,$nama)
    {
        return $this->db->query("update user set name='$nama' where user_id=$id");
    }


    //rating video
    function insertRating($user, $video, $rating)
    {
        return $this->db->query("insert into rating values('',$video,$user,$rating)");
        // return $query->result_array();
    }
    function getRating($id)
    {
        return $this->db->query("select avg(rating) as rating from rating where video=$id");
    }
    function cekRating($idUser, $idVideo)
    {
        return $this->db->query("select * from rating where id_user=$idUser and video=$idVideo");
    }

    //video
    function getVideo()
    {
        return $this->db->query("select * from video");
    }
    function getVideoById($id)
    {
        return $this->db->query("select * from video where id_video=$id");
    }

    function getVideoByTitle($title)
    {
        return $this->db->query("select * from video where judul like '%$title%'");
    }
    function getVideoByKategori($kategori)
    {
        return $this->db->query("select * from video where kategori='$kategori'");
    }
    function alreadyPayForVideo($id,$video)
    {
        return $this->db->query("select * from pvideo where user_id=$id and video_id=$video ");
    }
    function payVideo($id,$video)
    {
	$d = $this->db->query("select * from video where id_video=$video")->row();
	$this->db->query("update user set saldo=saldo-$d->harga where user_id=$id");
        return $this->db->query("insert into pvideo values($id,$video,1)");
    }

    //ecourse    
    function getEcourse()
    {
        return $this->db->query("select * from e_course");
    }
    function getEcourseById($id)
    {
        return $this->db->query("select * from e_course where id_video=$id");
    }

    function getEcourseByTitle($title)
    {
        return $this->db->query("select * from e_course where judul like '%$title%'");
    }
    function getEcourseByKategori($kategori)
    {
        return $this->db->query("select * from e_course where kategori='$kategori'");
    } 
    function alreadyPayForEcourse($id,$video)
    {
        return $this->db->query("select * from e_course_pay where user_id=$id and video_id=$video ");
    }
    function payEcourse($id,$video)
    {
        $d = $this->db->query("select * from e_course where id_video=$video")->row();
	    //echo $d->harga;
	    $this->db->query("update user set saldo=saldo-$d->harga where user_id=$id");
        return $this->db->query("insert into e_course_pay values($id,$video,1)");
    }
    function getMateri($id)
    {
        return $this->db->query("select * from e_course_materi where id_ecourse=$id");
    }




    //ecourse rating   
    function insertRatingEcourse($user, $video, $rating)
    {
        return $this->db->query("insert into e_course_rating values('',$video,$user,$rating)");
        // return $query->result_array();
    }
    function getRatingEcourse($id)
    {
        return $this->db->query("select avg(rating) as rating from e_course_rating where video=$id");
    }
    function cekRatingEcourse($idUser, $idVideo)
    {
        return $this->db->query("select * from e_course_rating where id_user=$idUser and video=$idVideo");
    }


    //topup
    function uploadBukti($id, $path)
    {
        return $this->db->query("insert into topup values('',$id,'$path','0')");
        // return $query->result_array();
    }
    function changeStatus($id, $status)
    {
        return $this->db->query("update topup set status=$status where id=$id");
        // return $query->result_array();
    }

    //Voucher
    //cek apakah user sudah pake voucher itu apa belum
    function cekVoucher($user, $voucher)
    {
        return $this->db->query("select * from pakaivoucher where user=$user and kode='$voucher'");
        // return $query->result_array();
    }
    function insertVoucher($user, $voucher)
    {
        $d = $this->db->query("select * from voucher where kode='$voucher'")->row();
        if($d){
            // echo "ada".$d->jumlah;
            $this->db->query("update user set saldo=saldo+$d->jumlah where user_id = $user");  
            $this->db->query("insert into pakaivoucher values('$voucher','$user')");  
            return true;
        }else{
            return false;
        }
        
    }    

}

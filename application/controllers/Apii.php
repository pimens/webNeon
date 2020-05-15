<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
header("Access-Control-Allow-Methods: GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");
header('Access-Control-Allow-Origin: *');

class Apii extends CI_Controller
{
	public function __construct()
	{
		if (!ini_get('date.timezone')) {
			date_default_timezone_set('GMT');
		}
		parent::__construct();
		$this->load->model('ApiModel');
	}
	public function index()
	{

		$this->load->model('ApiModel');
		$data['r'] = $this->ApiModel->getVideo()->result();
		$this->load->view("halaman", $data);
		// $this->load->view("backend/pages/material_create", $data);
	}
	public function getUser($email, $pass)
	{
		$this->load->model('ApiModel');
		$result = $this->ApiModel->getUser($email, $pass)->result();
		echo json_encode($result);
	}
	
	public function getUserByid($id)
	{
		$this->load->model('ApiModel');
		$result = $this->ApiModel->getUserByid($id)->result();
		echo json_encode($result);
	}
	function editFoto()
	{
		$image = $_POST['image'];
		$id = $_POST['id'];
		$name = $_POST['name'];
		$realImage = base64_decode($image);
		$path = "assets/global/fotoUser/$name";
		file_put_contents($path, $realImage);
		$this->load->model('ApiModel');
		$this->ApiModel->editFoto($id, $path);
		echo "FotoUpdated";
	}
	function editNama()
	{
		$nama = $_POST['nama'];
		$id = $_POST['id'];
		$this->load->model('ApiModel');
		$this->ApiModel->editNama($id, $nama);
		echo "NamaUpdated";
	}

	public function getMovie()
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getMovie()->result();
		echo json_encode($result);
	}

	public function getMovieById($id)
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getMovieById($id)->result();
		echo json_encode($result);
	}
	public function getMovieByTitle($title)
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getMovieByTitle($title)->result();
		echo json_encode($result);
	}

	//rating video	
	public function cekRating($idUser, $idVideo)
	{
		$this->load->model('ApiModel');
		$r = $this->ApiModel->cekRating($idUser, $idVideo)->result();
		echo json_encode($r);
	}
	public function insertRating($user, $video, $rating)
	{
		$this->load->model('ApiModel');
		$this->ApiModel->insertRating($user, $video, $rating);
	}
	public function getRating($id)
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getRating($id)->result();
		echo json_encode($result);
	}



	//video
	public function getVideo()
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getVideo()->result();
		echo json_encode($result);
	}

	public function getVideoById($id)
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getVideoById($id)->result();
		echo json_encode($result);
	}
	public function getVideoByTitle($title)
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getVideoByTitle($title)->result();
		echo json_encode($result);
	}
	public function getVideoByKategori($kategori)
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getVideoByKategori($kategori)->result();
		echo json_encode($result);
	}
	public function alreadyPayForVideo($id, $video)
	{
		$this->load->model('ApiModel');
		$result = $this->ApiModel->alreadyPayForVideo($id, $video)->result();
		echo json_encode($result);
	}
	public function payVideo($id, $video)
	{
		$this->load->model('ApiModel');
		$this->ApiModel->payVideo($id, $video);
	}


	//ecourse
	public function getEcourse()
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getEcourse()->result();
		echo json_encode($result);
	}

	public function getEcourseById($id)
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getEcourseById($id)->result();
		echo json_encode($result);
	}
	public function getMateri($id)
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getMateri($id)->result();
		echo json_encode($result);
	}

	public function getEcourseByTitle($title)
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getEcourseByTitle($title)->result();
		echo json_encode($result);
	}
	public function getEcourseByKategori($kategori)
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getEcourseByKategori($kategori)->result();
		echo json_encode($result);
	}
	public function alreadyPayForEcourse($id, $video)
	{
		$this->load->model('ApiModel');
		$result = $this->ApiModel->alreadyPayForEcourse($id, $video)->result();
		echo json_encode($result);
	}
	public function payEcourse($id, $video)
	{
		$this->load->model('ApiModel');
		$this->ApiModel->payEcourse($id, $video);
	}

	//rating ecourse	
	public function cekRatingEcourse($idUser, $idVideo)
	{
		$this->load->model('ApiModel');
		$r = $this->ApiModel->cekRatingEcourse($idUser, $idVideo)->result();
		echo json_encode($r);
	}
	public function insertRatingEcourse($user, $video, $rating)
	{
		$this->load->model('ApiModel');
		$this->ApiModel->insertRatingEcourse($user, $video, $rating);
	}
	public function getRatingEcourse($id)
	{
		$this->load->model('ApiModel');
		$result = $this->ApiModel->getRatingEcourse($id);
		$r = $result->row();
		if ($r->rating) {
			$result = $result->result();
		} else {
			$result = array(array('rating' => '0'));
		}
		echo json_encode($result);
	}
	//voucher
	public function cekVoucher($user,$v)
	{

		$this->load->model('ApiModel');
		$r = $this->ApiModel->cekVoucher($user,$v)->result();
		echo json_encode($r);
	}
	public function insertVoucher($user,$v)
	{
		$this->load->model('ApiModel');
		if($this->ApiModel->insertVoucher($user,$v)){
			echo "sukses";
		}else{
			echo"gagal";
		}
	}


	//example
	public function getR($id)
	{

		$this->load->model('ApiModel');
		$d = $this->ApiModel->getRating($id)->row();
		echo $d->rating;
	}
	public function insertR()
	{
		$judul = $this->input->post("judul");
		echo $judul;
	}
	public function getVid()
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getVideo()->result();
		echo "
		<table>
			<tr>
				<td>judul</td>
				<td>file</td>
			</tr>
		";
		foreach ($result as $r) {
			echo "
				<tr>
					<td>$r->judul</td>
					<td>$r->file_video</td>
				</tr>
				
			
			";
		}
		echo "</table>";
	}


	public function getEcourseByCategory()
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getEcourseByCategory()->result();

		foreach ($result as $r) {
			echo "
				<tr>
					<td>$r->kategori</td>
				</tr>
			";
		}
	}
	// public function getEcourseByTitle($judul)
	// {

	// 	$this->load->model('ApiModel');
	// 	$d = $this->ApiModel->getEcourseByTitle($judul)->row();
	// 	echo $d->judul;
	// }
	
	//topup
	function uploadBukti()
	{
		$image = $_POST['image'];
		$name = $_POST['name'];
		$id = $_POST['id'];
		$realImage = base64_decode($image);
		$path = "assets/global/bukti/$name";
		file_put_contents($path, $realImage);
		$this->load->model('ApiModel');
		$this->ApiModel->uploadBukti($id, $path);
		echo "Image Uploaded Successfully.$id";
	}
	public function changeStatus($idTopup, $status)
	{
		$this->load->model('ApiModel');
		$this->ApiModel->changeStatus($idTopup, $status);
	}
}

<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
header("Access-Control-Allow-Methods: GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");
header('Access-Control-Allow-Origin: *');

class Apii extends CI_Controller
{
	public function __construct()
	{
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
	//rating
	public function updateRating($rating, $id)
	{

		$this->load->model('ApiModel');
		$this->ApiModel->updateRating($rating, $id);
	}
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
	public function getEcourseByTitle($judul)
	{

		$this->load->model('ApiModel');
		$d = $this->ApiModel->getEcourseByTitle($judul)->row();
		echo $d->judul;
	}
}

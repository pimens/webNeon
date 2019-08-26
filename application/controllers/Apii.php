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
		$result = $this->ApiModel->getUser()->result();
		echo json_encode($result);
	}
	public function getUser($email,$pass)
	{

		$this->load->model('ApiModel');
		$result = $this->ApiModel->getUser($email,$pass)->result();
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

	public function updateRating($rating, $id)
	{

		$this->load->model('ApiModel');
		$this->ApiModel->updateRating($rating, $id);
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
}

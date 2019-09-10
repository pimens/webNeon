<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	// constructor
	function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->model('crud_model');
		$this->load->library('session');
		$this->admin_login_check();
	}

	public function index()
	{
		$this->dashboard();
	}

	function dashboard()
	{
		$page_data['page_name']		=	'dashboard';
		$page_data['page_title']	=	'Home - Summary';
		$this->load->view('backend/index', $page_data);
	}

	// WATCH LIST OF GENRE, MANAGE THEM
	function genre_list()
	{
		$page_data['page_name']		=	'genre_list';
		$page_data['page_title']	=	'Manage Genre';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW GENRE
	function genre_create()
	{
		if (isset($_POST) && !empty($_POST))
		{
			$data['name']			=	$this->input->post('name');
			$this->db->insert('genre', $data);
			redirect(base_url().'index.php?admin/genre_list' , 'refresh');
		}
		$page_data['page_name']		=	'genre_create';
		$page_data['page_title']	=	'Create Genre';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A GENRE
	function genre_edit($genre_id = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$data['name']			=	$this->input->post('name');
			$this->db->update('genre', $data,  array('genre_id' => $genre_id));
			redirect(base_url().'index.php?admin/genre_list' , 'refresh');
		}
		$page_data['genre_id']		=	$genre_id;
		$page_data['page_name']		=	'genre_edit';
		$page_data['page_title']	=	'Edit Genre';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A GENRE
	function genre_delete($genre_id = '')
	{
		$this->db->delete('genre',  array('genre_id' => $genre_id));
		redirect(base_url().'index.php?admin/genre_list' , 'refresh');
	}

	// LIST OF BIMBEL
	function bimbel_list()
	{
		$page_data['page_name']		=	'bimbel_list';
		$page_data['page_title']	=	'Manage Bimbel';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW BIMBEL
	function bimbel_create()
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->create_bimbel();
			redirect(base_url().'index.php?admin/bimbel_list' , 'refresh');
		}
		$page_data['page_name']		=	'bimbel_create';
		$page_data['page_title']	=	'Create Bimbel';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A BIMBEL
	function bimbel_edit($id_bimbel = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$data['bidang']			 =	$this->input->post('bidang');
			$data['deskripsi_bidang']=	$this->input->post('deskripsi_bidang');
			$this->db->update('bimbel', $data,  array('id_bimbel' => $id_bimbel));
			redirect(base_url().'index.php?admin/bimbel_list' , 'refresh');
		}
		$page_data['id_bimbel']		=	$id_bimbel;
		$page_data['page_name']		=	'bimbel_edit';
		$page_data['page_title']	=	'Edit Bimbel';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A GENRE
	function bimbel_delete($id_bimbel = '')
	{
		$this->db->delete('bimbel',  array('id_bimbel' => $id_bimbel));
		redirect(base_url().'index.php?admin/bimbel_list' , 'refresh');
	}

	// LIST OF E-COURSE
	function ecourse_list()
	{
		$page_data['page_name']		=	'ecourse_list';
		$page_data['page_title']	=	'Manage E-Course';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW E-COURSE
	function ecourse_create()
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->create_ecourse();
			redirect(base_url().'index.php?admin/ecourse_list' , 'refresh');
		}
		$page_data['page_name']		=	'ecourse_create';
		$page_data['page_title']	=	'Create E-Course';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A E-COURSE
	function ecourse_edit($id_ecourse = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$data['kategori']		   =	$this->input->post('kategori');
			$data['deskripsi_kategori']=	$this->input->post('deskripsi_kategori');
			$this->db->update('ecourse', $data,  array('id_ecourse' => $id_ecourse));
			redirect(base_url().'index.php?admin/ecourse_list' , 'refresh');
		}
		$page_data['id_ecourse']	=	$id_ecourse;
		$page_data['page_name']		=	'ecourse_edit';
		$page_data['page_title']	=	'Edit E-Course';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A E-COURSE
	function ecourse_delete($id_ecourse = '')
	{
		$this->db->delete('ecourse',  array('id_ecourse' => $id_ecourse));
		redirect(base_url().'index.php?admin/ecourse_list' , 'refresh');
	}

	// LIST OF MATERIAL
	function material_list()
	{
		$page_data['page_name']		=	'material_list';
		$page_data['page_title']	=	'Manage Study Material';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW MATERIAL
	function material_create()
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->create_material();
			redirect(base_url().'index.php?admin/material_list' , 'refresh');
		}
		$page_data['page_name']		=	'material_create';
		$page_data['page_title']	=	'Create Study Material';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A MATERIAL
	function material_edit($id_materi = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$data['materi']		   =	$this->input->post('materi');
			$data['level']         =	$this->input->post('level');
			$data['kategori']      =	$this->input->post('kategori');
			$this->db->update('materi', $data,  array('id_materi' => $id_materi));
			redirect(base_url().'index.php?admin/material_list' , 'refresh');
		}
		$page_data['id_materi'] 	=	$id_materi;
		$page_data['page_name']		=	'material_edit';
		$page_data['page_title']	=	'Edit Study Material';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A E-COURSE
	function material_delete($id_materi = '')
	{
		$this->db->delete('materi',  array('id_materi' => $id_materi));
		redirect(base_url().'index.php?admin/material_list' , 'refresh');
	}

	// LIST OF QUESTION
	function question_list()
	{
		$page_data['page_name']		=	'question_list';
		$page_data['page_title']	=	'Manage Question';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW QUESTION
	function question_create()
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->create_question();
			redirect(base_url().'index.php?admin/question_list' , 'refresh');
		}
		$page_data['page_name']		=	'question_create';
		$page_data['page_title']	=	'Create Question';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A QUESTION
	function question_edit($id_soal = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$data['bobot']		   =	$this->input->post('bobot');
			$data['kunci_jawaban'] =	$this->input->post('kunci_jawaban');
			$data['pertanyaan']    =	$this->input->post('pertanyaan');
			$data['level']         =	$this->input->post('level');
			$data['kategori']      =	$this->input->post('kategori');
			$this->db->update('question', $data,  array('id_soal' => $id_soal));
			redirect(base_url().'index.php?admin/question_list' , 'refresh');
		}
		$page_data['id_soal'] 	    =	$id_soal;
		$page_data['page_name']		=	'question_edit';
		$page_data['page_title']	=	'Edit Question';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A QUESTION
	function question_delete($id_soal = '')
	{
		$this->db->delete('question',  array('id_soal' => $id_soal));
		redirect(base_url().'index.php?admin/question_list' , 'refresh');
	}


	// WATCH LIST OF MOVIES, MANAGE THEM
	function movie_list()
	{
		$page_data['page_name']		=	'movie_list';
		$page_data['page_title']	=	'Manage movie';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW MOVIE
	function movie_create()
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->create_movie();
			redirect(base_url().'index.php?admin/movie_list' , 'refresh');
		}
		$page_data['page_name']		=	'movie_create';
		$page_data['page_title']	=	'Create movie';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A MOVIE
	function movie_edit($movie_id = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->update_movie($movie_id);
			redirect(base_url().'index.php?admin/movie_list' , 'refresh');
		}
		$page_data['movie_id']		=	$movie_id;
		$page_data['page_name']		=	'movie_edit';
		$page_data['page_title']	=	'Edit movie';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A MOVIE
	function movie_delete($movie_id = '')
	{
		$this->db->delete('movie',  array('movie_id' => $movie_id));
		redirect(base_url().'index.php?admin/movie_list' , 'refresh');
	}

	// WATCH LIST OF DOCUMENTARY, MANAGE THEM
	function documentary_list()
	{
		$page_data['page_name']		=	'documentary_list';
		$page_data['page_title']	=	'Manage documentary';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW DOCUMENTARY
	function documentary_create()
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->create_documentary();
			redirect(base_url().'index.php?admin/documentary_list' , 'refresh');
		}
		$page_data['page_name']		=	'documentary_create';
		$page_data['page_title']	=	'Create documentary';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A DOCUMENTARY
	function documentary_edit($documentary_id = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->update_documentary($documentary_id);
			redirect(base_url().'index.php?admin/documentary_list' , 'refresh');
		}
		$page_data['documentary_id']		=	$documentary_id;
		$page_data['page_name']		=	'documentary_edit';
		$page_data['page_title']	=	'Edit documentary';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A DOCUMENTARY
	function documentary_delete($documentary_id = '')
	{
		$this->db->delete('documentary',  array('documentary_id' => $documentary_id));
		redirect(base_url().'index.php?admin/documentary_list' , 'refresh');
	}

	// WATCH LIST OF REALITY, MANAGE THEM
	function reality_list()
	{
		$page_data['page_name']		=	'reality_list';
		$page_data['page_title']	=	'Manage reality';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW REALITY
	function reality_create()
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->create_reality();
			redirect(base_url().'index.php?admin/reality_list' , 'refresh');
		}
		$page_data['page_name']		=	'reality_create';
		$page_data['page_title']	=	'Create reality';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A REALITY
	function reality_edit($reality_id = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->update_reality($reality_id);
			redirect(base_url().'index.php?admin/reality_list' , 'refresh');
		}
		$page_data['reality_id']		=	$reality_id;
		$page_data['page_name']		=	'reality_edit';
		$page_data['page_title']	=	'Edit reality';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A REALITY
	function reality_delete($reality_id = '')
	{
		$this->db->delete('reality_show',  array('reality_id' => $reality_id));
		redirect(base_url().'index.php?admin/reality_list' , 'refresh');
	}


	// WATCH LIST OF SERIESS, MANAGE THEM
	function series_list()
	{
		$page_data['page_name']		=	'series_list';
		$page_data['page_title']	=	'Manage Tv Series';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW SERIES
	function series_create()
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->create_series();
			redirect(base_url().'index.php?admin/series_list' , 'refresh');
		}
		$page_data['page_name']		=	'series_create';
		$page_data['page_title']	=	'Create Tv Series';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A SERIES
	function series_edit($series_id = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->update_series($series_id);
			redirect(base_url().'index.php?admin/series_edit/'.$series_id , 'refresh');
		}
		$page_data['series_id']		=	$series_id;
		$page_data['page_name']		=	'series_edit';
		$page_data['page_title']	=	'Edit Tv Series. Manage Seasons & Episodes';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A SERIES
	function series_delete($series_id = '')
	{
		$this->db->delete('series',  array('series_id' => $series_id));
		redirect(base_url().'index.php?admin/series_list' , 'refresh');
	}

	// CREATE A NEW SEASON
	function season_create($series_id = '')
	{
		$this->db->where('series_id' , $series_id);
		$this->db->from('season');
        $number_of_season 	=	$this->db->count_all_results();

		$data['series_id']	=	$series_id;
		$data['name']		=	'Season ' . ($number_of_season + 1);
		$this->db->insert('season', $data);
		redirect(base_url().'index.php?admin/series_edit/'.$series_id , 'refresh');

	}

	// EDIT A SEASON
	function season_edit($series_id = '', $season_id = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$data['title']			=	$this->input->post('title');
			$this->db->update('series', $data,  array('series_id' => $series_id));
			redirect(base_url().'index.php?admin/series_edit/'.$series_id , 'refresh');
		}
		$series_name				=	$this->db->get_where('series', array('series_id'=>$series_id))->row()->title;
		$season_name				=	$this->db->get_where('season', array('season_id'=>$season_id))->row()->name;
		$page_data['page_title']	=	'Manage episodes of ' . $season_name . ' : ' . $series_name;
		$page_data['season_name']	=	$this->db->get_where('season', array('season_id'=>$season_id))->row()->name;
		$page_data['series_id']		=	$series_id;
		$page_data['season_id']		=	$season_id;
		$page_data['page_name']		=	'season_edit';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A SEASON
	function season_delete($series_id = '', $season_id = '')
	{
		$this->db->delete('season',  array('season_id' => $season_id));
		redirect(base_url().'index.php?admin/series_edit/'.$series_id , 'refresh');
	}

	// CREATE A NEW EPISODE
	function episode_create($series_id = '', $season_id = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$data['title']			=	$this->input->post('title');
			$data['url']			=	$this->input->post('url');
			$data['season_id']		=	$season_id;
			$this->db->insert('episode', $data);
			$episode_id = $this->db->insert_id();
			move_uploaded_file($_FILES['thumb']['tmp_name'], 'assets/global/episode_thumb/' . $episode_id . '.jpg');
			redirect(base_url().'index.php?admin/season_edit/'.$series_id.'/'.$season_id , 'refresh');
		}
	}

	// CREATE A NEW EPISODE
	function episode_edit($series_id = '', $season_id = '', $episode_id = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$data['title']			=	$this->input->post('title');
			$data['url']			=	$this->input->post('url');
			$data['season_id']		=	$season_id;
			$this->db->update('episode', $data, array('episode_id'=>$episode_id));
			move_uploaded_file($_FILES['thumb']['tmp_name'], 'assets/global/episode_thumb/' . $episode_id . '.jpg');
			redirect(base_url().'index.php?admin/season_edit/'.$series_id.'/'.$season_id , 'refresh');
		}
	}

	// DELETE AN EPISODE
	function episode_delete($series_id = '', $season_id = '', $episode_id = '')
	{
		$this->db->delete('episode',  array('episode_id' => $episode_id));
		redirect(base_url().'index.php?admin/season_edit/'.$series_id.'/'.$season_id , 'refresh');
	}

	// WATCH LIST OF VIDEO, MANAGE THEM
	function video_list()
	{
		$page_data['page_name']		=	'video_list';
		$page_data['page_title']	=	'Manage Video';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW VIDEO
	function video_create()
	{
		
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->create_video();
			redirect(base_url().'index.php?admin/video_list' , 'refresh');
		}
		$page_data['page_name']		=	'video_create';
		$page_data['page_title']	=	'Create video';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A VIDEO
	function video_edit($id_video = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->update_video($id_video);
			redirect(base_url().'index.php?admin/video_list' , 'refresh');
		}
		$page_data['id_video']		=	$id_video;
		$page_data['page_name']		=	'video_edit';
		$page_data['page_title']	=	'Edit video';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A VIDEO
	function video_delete($id_video = '')
	{
		$this->db->delete('video',  array('id_video' => $id_video));
		redirect(base_url().'index.php?admin/video_list' , 'refresh');
	}

	// WATCH LIST OF ACTORS, MANAGE THEM
	function actor_list()
	{
		$page_data['page_name']		=	'actor_list';
		$page_data['page_title']	=	'Manage actor';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW ACTOR
	function actor_create()
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->create_actor();
			redirect(base_url().'index.php?admin/actor_list' , 'refresh');
		}
		$page_data['page_name']		=	'actor_create';
		$page_data['page_title']	=	'Create actor';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A ACTOR
	function actor_edit($actor_id = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->update_actor($actor_id);
			redirect(base_url().'index.php?admin/actor_list' , 'refresh');
		}
		$page_data['actor_id']		=	$actor_id;
		$page_data['page_name']		=	'actor_edit';
		$page_data['page_title']	=	'Edit actor';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A ACTOR
	function actor_delete($actor_id = '')
	{
		$this->db->delete('actor',  array('actor_id' => $actor_id));
		redirect(base_url().'index.php?admin/actor_list' , 'refresh');
	}

	// WATCH LIST OF PRICING PACKAGES, MANAGE THEM
	function plan_list()
	{
		$page_data['page_name']		=	'plan_list';
		$page_data['page_title']	=	'Manage plan';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A ACTOR
	function plan_edit($plan_id = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$data['name']			=	$this->input->post('name');
			$data['price']			=	$this->input->post('price');
			$data['status']			=	$this->input->post('status');
			$this->db->update('plan', $data,  array('plan_id' => $plan_id));
			redirect(base_url().'index.php?admin/plan_list' , 'refresh');
		}
		$page_data['plan_id']		=	$plan_id;
		$page_data['page_name']		=	'plan_edit';
		$page_data['page_title']	=	'Edit plan';
		$this->load->view('backend/index', $page_data);
	}

	// WATCH LIST OF USERS, MANAGE THEM
	function user_list()
	{
		$page_data['page_name']		=	'user_list';
		$page_data['page_title']	=	'Manage user';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW USER
	function user_create()
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->create_user();
			redirect(base_url().'index.php?admin/user_list' , 'refresh');
		}
		$page_data['page_name']		=	'user_create';
		$page_data['page_title']	=	'Create user';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A USER
	function user_edit($edit_user_id = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$this->crud_model->update_user($edit_user_id);
			redirect(base_url().'index.php?admin/user_list' , 'refresh');
		}
		$page_data['edit_user_id']	=	$edit_user_id;
		$page_data['page_name']		=	'user_edit';
		$page_data['page_title']	=	'Edit user';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A USER
	function user_delete($user_id = '')
	{
		$this->db->delete('user',  array('user_id' => $user_id));
		redirect(base_url().'index.php?admin/user_list' , 'refresh');
	}

	// WATCH SUBSCRIPTION, PAYMENT REPORT
	function report($month = '', $year = '')
	{
		if ($month == '')
			$month	=	date("F");
		if ($year == '')
			$year = date("Y");

		$page_data['month']			=	$month;
		$page_data['year']			=	$year;
		$page_data['page_name']		=	'report';
		$page_data['page_title']	=	'Customer subscription & payment report';
		$this->load->view('backend/index', $page_data);
	}

	// WATCH LIST OF FAQS, MANAGE THEM
	function faq_list()
	{
		$page_data['page_name']		=	'faq_list';
		$page_data['page_title']	=	'Manage faq';
		$this->load->view('backend/index', $page_data);
	}

	// CREATE A NEW FAQ
	function faq_create()
	{
		if (isset($_POST) && !empty($_POST))
		{
			$data['question']		=	$this->input->post('question');
			$data['answer']			=	$this->input->post('answer');
			$this->db->insert('faq', $data);
			redirect(base_url().'index.php?admin/faq_list' , 'refresh');
		}
		$page_data['page_name']		=	'faq_create';
		$page_data['page_title']	=	'Create faq';
		$this->load->view('backend/index', $page_data);
	}

	// EDIT A FAQ
	function faq_edit($faq_id = '')
	{
		if (isset($_POST) && !empty($_POST))
		{
			$data['question']		=	$this->input->post('question');
			$data['answer']			=	$this->input->post('answer');
			$this->db->update('faq', $data,  array('faq_id' => $faq_id));
			redirect(base_url().'index.php?admin/faq_list' , 'refresh');
		}
		$page_data['faq_id']		=	$faq_id;
		$page_data['page_name']		=	'faq_edit';
		$page_data['page_title']	=	'Edit faq';
		$this->load->view('backend/index', $page_data);
	}

	// DELETE A FAQ
	function faq_delete($faq_id = '')
	{
		$this->db->delete('faq',  array('faq_id' => $faq_id));
		redirect(base_url().'index.php?admin/faq_list' , 'refresh');
	}

	// EDIT SETTINGS
	function settings()
	{
		if (isset($_POST) && !empty($_POST))
		{
			// Updating website name
			$data['description']		=	$this->input->post('site_name');
			$this->db->update('settings', $data,  array('type' => 'site_name'));

			// Updating website email
			$data['description']		=	$this->input->post('site_email');
			$this->db->update('settings', $data,  array('type' => 'site_email'));

			// Updating trial period enable/disable
			$data['description']		=	$this->input->post('trial_period');
			$this->db->update('settings', $data,  array('type' => 'trial_period'));

			// Updating trial period number of days
			$data['description']		=	$this->input->post('trial_period_days');
			$this->db->update('settings', $data,  array('type' => 'trial_period_days'));

			// Updating website language settings
			$data['description']		=	$this->input->post('language');
			$this->db->update('settings', $data,  array('type' => 'language'));

			// Updating website theme settings
			$data['description']		=	$this->input->post('theme');
			$this->db->update('settings', $data,  array('type' => 'theme'));

			// Updating website paypal merchant email
			$data['description']		=	$this->input->post('paypal_merchant_email');
			$this->db->update('settings', $data,  array('type' => 'paypal_merchant_email'));

			// Updating invoice address
			$data['description']		=	$this->input->post('invoice_address');
			$this->db->update('settings', $data,  array('type' => 'invoice_address'));

			// Updating envato purchase code
			$data['description']		=	$this->input->post('purchase_code');
			$this->db->update('settings', $data,  array('type' => 'purchase_code'));

			// Updating privacy policy
			$data['description']		=	$this->input->post('privacy_policy');
			$this->db->update('settings', $data,  array('type' => 'privacy_policy'));

			// Updating refund policy
			$data['description']		=	$this->input->post('refund_policy');
			$this->db->update('settings', $data,  array('type' => 'refund_policy'));

			// Updating stripe publishable key
			$data['description']		=	$this->input->post('stripe_publishable_key');
			$this->db->update('settings', $data,  array('type' => 'stripe_publishable_key'));

			// Updating stripe secret key
			$data['description']		=	$this->input->post('stripe_secret_key');
			$this->db->update('settings', $data,  array('type' => 'stripe_secret_key'));

			move_uploaded_file($_FILES['logo']['tmp_name'], 'assets/global/logo.png');

			redirect(base_url().'index.php?admin/settings' , 'refresh');
		}

		$page_data['site_name']				=	$this->db->get_where('settings',array('type'=>'site_name'))->row()->description;
		$page_data['site_email']			=	$this->db->get_where('settings',array('type'=>'site_email'))->row()->description;
		$page_data['trial_period']			=	$this->db->get_where('settings',array('type'=>'trial_period'))->row()->description;
		$page_data['trial_period_days']		=	$this->db->get_where('settings',array('type'=>'trial_period_days'))->row()->description;
		$page_data['theme']					=	$this->db->get_where('settings',array('type'=>'theme'))->row()->description;
		$page_data['paypal_merchant_email']	=	$this->db->get_where('settings',array('type'=>'paypal_merchant_email'))->row()->description;
		$page_data['invoice_address']		=	$this->db->get_where('settings',array('type'=>'invoice_address'))->row()->description;
		$page_data['purchase_code']			=	$this->db->get_where('settings',array('type'=>'purchase_code'))->row()->description;
		$page_data['privacy_policy']		=	$this->db->get_where('settings',array('type'=>'privacy_policy'))->row()->description;
		$page_data['refund_policy']			=	$this->db->get_where('settings',array('type'=>'refund_policy'))->row()->description;
		$page_data['stripe_publishable_key']=	$this->db->get_where('settings',array('type'=>'stripe_publishable_key'))->row()->description;
		$page_data['stripe_secret_key']		=	$this->db->get_where('settings',array('type'=>'stripe_secret_key'))->row()->description;

		$page_data['page_name']				=	'settings';
		$page_data['page_title']			=	'Website settings';
		$this->load->view('backend/index', $page_data);
	}

	function manage_language($param1 = '', $param2 = '', $param3 = '')
	{

		if ($param1 == 'edit_phrase') {
			$page_data['edit_profile'] = $param2;
		}
		if ($param1 == 'update_phrase') {
			$language = $param2;
			$total_phrase = $this->input->post('total_phrase');
			for ($i = 1; $i < $total_phrase; $i++) {
				//$data[$language]  =   $this->input->post('phrase').$i;
				$this->db->where('phrase_id', $i);
				$this->db->update('language', array($language => $this->input->post('phrase' . $i)));
			}
			redirect(base_url() . 'index.php?admin/manage_language/edit_phrase/' . $language, 'refresh');
		}
		if ($param1 == 'do_update') {
			$language = $this->input->post('language');
			$data[$language] = $this->input->post('phrase');
			$this->db->where('phrase_id', $param2);
			$this->db->update('language', $data);
			$this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
			redirect(base_url() . 'index.php?admin/manage_language/', 'refresh');
		}
		if ($param1 == 'add_phrase') {
			$data['phrase'] = $this->input->post('phrase');
			$this->db->insert('language', $data);
			$this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
			redirect(base_url() . 'index.php?admin/manage_language/', 'refresh');
		}
		if ($param1 == 'add_language') {
			$language = $this->input->post('language');
			$this->load->dbforge();
			$fields = array(
				$language => array(
					'type' => 'LONGTEXT',
					'null' => FALSE
				)
			);
			$this->dbforge->add_column('language', $fields);

			$this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
			redirect(base_url() . 'index.php?admin/manage_language/', 'refresh');
		}
		if ($param1 == 'delete_language') {
			$language = $param2;
			$this->load->dbforge();
			$this->dbforge->drop_column('language', $language);
			$this->session->set_flashdata('flash_message', get_phrase('settings_updated'));

			redirect(base_url() . 'index.php?admin/manage_language/', 'refresh');
		}

		$page_data['page_name']				=	'manage_language';
		$page_data['page_title']			=	'Multi - language settings';
		$this->load->view('backend/index', $page_data);
	}

	function account()
	{
		$user_id	=	$this->session->userdata('user_id');

		if (isset($_POST) && !empty($_POST))
		{
			$task	=	$this->input->post('task');
			if ($task == 'update_profile')
			{
				$data['name']				=	$this->input->post('name');
				$data['email']				=	$this->input->post('email');
				$this->db->update('user', $data, array('user_id'=>$user_id));
				redirect(base_url().'index.php?admin/account' , 'refresh');
			}
			else if ($task == 'update_password')
			{
				$old_password_encrypted				=	$this->crud_model->get_current_user_detail()->password;
				$old_password_submitted_encrypted	=	sha1($this->input->post('old_password'));
				$new_password						=	$this->input->post('new_password');
				$new_password_encrypted				=	sha1($this->input->post('new_password'));

				// CORRECT OLD PASSWORD NEEDED TO CHANGE PASSWORD
				if ($old_password_encrypted 		==	$old_password_submitted_encrypted)
				{
					$this->db->update('user', array('password'=>$new_password_encrypted), array('user_id'=>$user_id));
					$this->session->set_flashdata('status', 'password_changed');
				}
				redirect(base_url().'index.php?admin/account' , 'refresh');
			}
		}
		$page_data['page_name']				=	'account';
		$page_data['page_title']			=	'Manage account';
		$this->load->view('backend/index', $page_data);
	}


	function admin_login_check()
	{
		$logged_in_user_type			=	$this->session->userdata('login_type');
		if ($logged_in_user_type == 0)
		{
			redirect(base_url().'index.php?home/signin' , 'refresh');
		}
	}

	function actor_wise_movie_and_series($actor_id) {
		$actor_details = $this->db->get_where('actor', array('actor_id' => $actor_id))->row_array();
		$page_data['page_name']				=	'actor_wise_movie_and_series';
		$page_data['page_title']			=	get_phrase('movies_and_TV_series_of').' "'.$actor_details['name'].'"';
		$page_data['actor_id']				=	$actor_id;

		$this->load->view('backend/index', $page_data);
	}
}

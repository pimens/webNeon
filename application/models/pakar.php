<?php
    class pakar extends CI_model
	{
		function __construct()
		{
			parent::__construct();
		}

        function getQuestion($id,$before)
        {
			  return $this->db->query("select * from action where id='$id'")->result();
		}
		function getAnswer($id,$before)
        {
			  return $this->db->query("select * from pilihan where idp='$id' and bfr='$before'")->result();
		}
		function getPenjelasan($id,$before)
        {
			  return $this->db->query("select * from pilihan where idj='$before'")->result();
		}
       
}

?>
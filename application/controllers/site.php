<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Site extends CI_Controller {
	public function index(){
	$this->home();
	}
	public function home(){
		$this->load->model("model_get");
		$data["results"]=$this->model_get->getData("home");
		
		$this->load->view('site_header');
		$this->load->view("site_nav");
		$this->load->view("content_home", $data);
		$this->load->view("site_footer");
	}
	public function about(){
		$this->load->model("model_get");
		$data["results"]=$this->model_get->getData("about");
		
		$this->load->view("site_header");
		$this->load->view("site_nav");
		$this->load->view("content_about", $data);
		$this->load->view("site_footer");
	}
	public function contact(){
		
		$data["message"]="";
				
		$this->load->view("site_header");
		$this->load->view("site_nav");
		$this->load->view("content_contact", $data);
		$this->load->view("site_footer");
	}
	public function send_email(){
		$this->load->library("form_validation");
		$this->form_validation->set_rules("fullName", "Full Name", "required|alpha|xss_clean");
		$this->form_validation->set_rules("email", "Email", "required|valid_email|xss_clean");
		$this->form_validation->set_rules("message", "Message", "required|xss_clean");
		if ($this->form_validation->run()==FALSE){
		$data["message"]="";
			
		$this->load->view("site_header");
		$this->load->view("site_nav");
		$this->load->view("content_contact", $data);
		$this->load->view("site_footer");
		}else {
		$data["message"]="The e-mail successfully sent...";
		$this->load->library("email");
		
		$this->email->from(set_value("email"), set_value("fullName"));
		$this->email->to("sardar_huq@yahoo.com");
		$this->email->subject("message from sardar");
		$this->email->message(set_value("message"));
		
		$this->email->send();
		
		//echo $this->email->print_debgger();
		
		$this->load->view("site_header");
		$this->load->view("site_nav");
		$this->load->view("content_contact", $data);
		$this->load->view("site_footer");
		}
		
	}
}
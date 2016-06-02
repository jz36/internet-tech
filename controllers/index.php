<?
include('/models/model_user.php');
Class Controller_Index Extends Controller_Base {    
    // шаблон
    public $layouts = "first_layouts";
     
    // экшен
    function index() {
    	$this->template->vars('title', 'Главная');
        $this->template->view('index');
    }   
} 
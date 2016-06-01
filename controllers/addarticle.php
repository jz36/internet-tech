<?
// контролер
Class Controller_AddArticle  Extends Controller_Base {
	
	// шаблон
	public $layouts = "first_layouts";
	
	// экшен
	function index() {

		$categories = array(
			'1'=>'Обо мне',
			'2'=>'О семье',
			'3'=>'О друзьях'
		);

		$this->template->vars('title', 'Добавить статью');
		$this->template->vars('categories', $categories);
		$this->template->view('index');
		if($_GET){
			if($_GET['done'] and $_GET['done'] == 'true'){
				$this->addArticle();
			}
		}
	}

	public function addArticle(){
		$model = new Model_AddArticle();
		$model->id_category = $_POST['articleCat'];
		$model->title = $_POST['title'];
		$model->small_text = $_POST['small_text'];
		$model->text = $_POST['text'];
		///$model->date = date("c");
		if($_POST['active'] == "on"){
			$model->is_active = "1";
		} else{
			$model->is_active = "0";
		
		}

		$tempVar = $model->save();
		$this->template->view('done');
	}
	
}
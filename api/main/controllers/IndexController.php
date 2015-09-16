<?php
class IndexController implements IController {
	protected $data;
	protected $model;
	protected $viewForAjax;
	protected $params;
	protected $format;
	
	/* start IndexController */
	public function __construct() {
			$fc=Router::getInstance();
			$this->params=$fc->getParams();	
			$this->format=$fc->getFormat();
			$this->makeObj();
			$this->auth->checklogin();
	}
	
	/* Creation model and view objects */
	protected function makeObj() {
		$this->data=new ClearData();
		$this->model=new IndexModel();
		$this->viewForAjax=new ViewForAjax();
		$this->auth=new Auth();			
	}
	
	/* Page by default */
	public function indexAction () {	
		echo "index page!";
	}	
	
	public function getDataAction() {
		$data = array();
		if(!empty($_GET)){
			$data = $_GET;
		}
		$msg=$this->model->getData($data);
		if(!$msg){
			$result = array();
			$result['success']= 0;
			$result['msg']= 'Empty response';
		} else {
			$result = array();
			$result['success']= 1;
			$result['result']= $msg;
		}
		return $this->viewForAjax->switchFormat($result	, $this->format);			
	}
}
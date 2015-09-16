<?php
class IndexModel{
	protected $db;
	protected $data;
	protected $ORM;	
	protected $resdata;
	protected $msg="";

	public function __construct(){
		$this->data=new ClearData();
		$this->ORM=new ORMModel();		
	}
	
	public function _collectQuery($str){
		if(!empty($str)){
			if (!preg_match("/[^\w|]+/", $str)){
				$newStr = str_replace("|", ", ", $str);
				return $newStr;				
			}
		}
	
	}
	
	public function getData($arr) {
		$arr = $this->data->clearArray($arr);
		$query  = 'firstName, lastName, dateBirth, mail, balance, client_pb';
		$sortname = 'id';
		$sortorder = 'ASC';
		$count = '0,10';				
		if(!empty($arr) and count($arr) > 0){
			if(!empty($arr['q'])){
				$query = $this->_collectQuery($arr['q']);
			}		
			if(!empty($arr['sortname'])){
				$sortname = $arr['sortname'];
			}	
			if(!empty($arr['sortorder']) and ($arr['sortorder'] == 'asc' or $arr['sortorder'] == 'desc')){
				$sortorder = strtoupper($arr['sortorder']);
			}
			if(!empty($arr['count'])){
				$count = $this->_collectQuery($arr['count']);
			}	
		}
		
		$sql="SELECT id, $query FROM persons ORDER BY $sortname $sortorder LIMIT $count";
		$row = $this->ORM->getQueryDB($sql);
		return $row;
	}

}	

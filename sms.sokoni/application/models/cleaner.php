<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class cleaner extends DataMapper {


	
	var $table = 'crop';
	

	public function __construct($id = NULL)
	{
		parent::__construct($id);
		
	}

}

/* End of file cleaner.php */
/* Location: ./application/models/cleaner.php */
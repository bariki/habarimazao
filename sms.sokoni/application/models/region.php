<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Region extends DataMapper {


	
	var $table = 'region';

	public function __construct($id = NULL)
	{
		parent::__construct($id);
		
	}

}

/* End of file region.php */
/* Location: ./application/models/region.php */
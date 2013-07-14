<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Crop extends DataMapper {


	
	var $table = 'crops';

	public function __construct($id = NULL)
	{
		parent::__construct($id);
		
	}

}

/* End of file crop.php */
/* Location: ./application/models/crop.php */
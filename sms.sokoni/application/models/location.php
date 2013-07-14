<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Location extends DataMapper {


	
	var $table = 'location';

	public function __construct($id = NULL)
	{
		parent::__construct($id);
		
	}

}

/* End of file location.php */
/* Location: ./application/models/location.php */
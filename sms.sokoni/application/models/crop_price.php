<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Crop_price extends DataMapper {

	var $table = 'crop_prices';
    var $has_one =  array('crop' => array());

	public function __construct($id = NULL) {
		parent::__construct($id);
		
	}

}

/* End of file crop_price.php */
/* Location: ./application/models/crop_price.php */
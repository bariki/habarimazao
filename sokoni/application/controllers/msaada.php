<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Msaada extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$breadscrumb = array(
                        'current' => 'Home',
                        'cur' => 'home'
                );
                $this->session->set_userdata( 'breadscrumb',$breadscrumb );
                
                $crops = new Crop_level1();
                $cp = new Crop();
                $cc = new Crop_cat();
                $cc->get();
                foreach ($cc as $c_c) {
                        $cp->where('category',$c_c->name);
                        $cp->get();
                        $i = 0;
                        foreach ($cp as $ky) {
                                ++$i;
                                if ($i <= 4) {
                                        $cro[$c_c->name][] = $ky->name;
                                }
                                else {
                                        break;
                                }
                        }
                }
                $crops->get();

                $data = array(
                        'data_table' => $crops,
                        'count' => 6,
                        'level' => 1,
                        'columns' => array(
                                'mazao',
                                'kipimo',
                                'bei kubwa',
                                'bei ndogo',
                                'tarehe',
                                'hali'
                                )
                );
                $page =  $data;
                $page['js'] = 'jquery,jtable';
                $page['cur_page'] = 'profile';
                $page['body'] = array(
                	'dash_help',
                	'sam_table'
                );
                $this->load->view('page', $page);
	}

}

/* End of file msaada.php */
/* Location: ./application/controllers/msaada.php */
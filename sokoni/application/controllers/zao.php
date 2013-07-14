<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class zao extends CI_Controller {

        public function __construct()
        {
                parent::__construct();
                $this->load->model('crop_level2');
                $this->load->model('crop_level3');
                $this->load->model('crop');
        }

	public function index() {

        $page['breadscrumbs'] = array(
            'current' => 'Chungwa'
        );
        $page['js'] = 'jquery,jtable,jgraph';
        $page['body'] = array(
            'title',
            'sam_table',
            'graph'
        );
        $this->load->view('page', $page);
	}

    public function __zao1($zao = '',$location = ''){
            # zao
            if ($zao != '' && $location != '') {
                    $crops = new Crop_level3();
                     $array = array('crop_id' => $zao,
                                    'region_id' => $location
                            );
                    $crops->where($array)->get();
                    $data = array(
                            'data_table' => $crops,
                            'level' => 3,
                            'count' => 6,
                            'columns' => array(
                                    'Soko',
                                    'kipimo',
                                    'bei kubwa',
                                    'bei ndogo',
                                    'tarehe',
                                    'hali'
                                    )
                    );
                    $page =  $data;
                    // print_r($crops);
                    $page['js'] = 'jquery,jtable';
                    $page['cur_page'] = 'profile';
                    $page['body'] = array(
                            'dash2',
                            'sam_table'
                    );
                    $cr = new Crop($zao);
                    $cr->where('id',$zao)->get();
                    $page['breadscrumbs'] = array(
                            'zao/'.$crops->category.'/'.$crops->crop_id => $crops->crop,
                            'current' => $crops->region
                    );
                    $page['title'] = $crops->crop.', '.$crops->region;
                    return $page;
            }
            #zao
            elseif ($zao != '') {
                    $crops = new Crop_level2();
                    $crops->where('crop_id',$zao)->get();
                    //print_r($crops);
                    $data = array(
                            'data_table' => $crops,
                            'level' => 2,
                            'count' => 6,
                            'columns' => array(
                                    'Mkoa',
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
                            'dash2',
                            'sam_table'
                    );
                    $cr = new Crop($zao);
                    $cr->where('id',$zao)->get();
                    $page['breadscrumbs'] = array(
                            'current' => $cr->name
                    );
                    $page['title'] = $cr->name;
                    return $page;
            }
    }

    public function matunda($zao='',$location = '')
    {       
            # matunda
            $page = $this->__zao1($zao,$location);
            $this->load->view('page', $page);
    }

    public function nafaka($zao ='',$location = '')
    {       
            # nafaka
            $page = $this->__zao1($zao,$location);
            $this->load->view('page', $page);
    }

    public function mbogamboga($zao='',$location = '')
    {
            # mbogamboga
            $page = $this->__zao1($zao,$location);
            $this->load->view('page', $page);
    }

    public function mboga_mboga($zao='',$location = '')
    {
            # mbogamboga
            $page = $this->__zao1($zao,$location);
            $this->load->view('page', $page);
    }

    public function kitoweo($zao='',$location = '')
    {
            # kitoweo
            $page = $this->__zao1($zao,$location);
            $this->load->view('page', $page);
    }

    public function viungo($zao='',$location = '')
    {
            # viungo
            $page = $this->__zao1($zao,$location);
            $this->load->view('page', $page);
    }

    public function zingine($zao='',$location = '')
    {
            # nyinginezo
            $page = $this->__zao1($zao,$location);
            $this->load->view('page', $page);
    }
}

/* End of file zao.php */
/* Location: ./application/controllers/zao.php */
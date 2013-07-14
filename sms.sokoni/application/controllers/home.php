<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class home extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('location');
        $this->load->model('crop_level1');
        $this->load->model('crop_level2');
        $this->load->model('crop_level3');
        $this->load->model('crop');
        $this->load->model('region');
        $this->load->model('m_sms');
        $this->load->model('m_famers');
        $this->load->model('famers_crop');
        $this->load->model('m_feeder');
        $this->load->model('price_history_sub');
    }

    public function index() {
        $from  = $this->input->get('from');
        $sms = $this->input->get('text');
        $sms = strtolower($sms);
        $keys = explode(' ', $sms);
        if ($keys[0] == 'bei') { //1
            $this->__store_rec($from,$sms,1,0);
            $res = $this->__bei($sms);
            // echo $res;
            $this->__store_rec($from,$res,1,1);       
        }
        elseif ($keys[0] == 'maoni') { //2
            # code...
            $this->__store_rec($from,$sms,6,0);
            $res = $this->__maoni($from,$sms);
            $this->__store_rec($from,$res,6,1);
        }
        else {
            $res = 'Samahani, umekosea neno husika la huduma';
        }
        
        echo $res;

    }

    public function __maoni($phone,$sms)
    {
        $keys = explode(' ',$sms);
        if (count($keys) <= 2) {
            return 'Tafadhali naomba uandike maoni kisha acha nafasi, kisha andika maoni yako vizuri';
        }
        else{
            return 'Asante, maoni yako tumeyapata, tutayafanyia kazi';
        }

    }

    public function __detect_loc($name)
    {
        $loc = new Location();
        $loc->get();
        $reg = new Region();
        $shortest = -1;
        foreach ($loc as $co) {
            $lev = levenshtein($name, $co->name);
            if ($lev == 0) {
                $closest = $co->name;
                $shortest = 0;
                break;
            }
            if ($lev <= $shortest || $shortest < 0) {
                $closest  = $co->name;
                $shortest = $lev;
            }
        }
        $loc->where('name',$closest);
        $loc->get();
        $reg->where('id',$loc->id);
        $reg->get();
        if (empty($reg->id)) {
            return $loc;
        }
        return $loc;
    }


    public function __detect_crop($cro)
    {
        $crop = new crop();
        $crop->like('name',$cro);
        $crop->get();
        if (!empty($crop->id)) {
            $shortest = -1;
            foreach ($crop as $co) {
                $lev = levenshtein($cro, $co->name);
                if ($lev == 0) {
                    $closest = $co->name;
                    $shortest = 0;
                    break;
                }
                if ($lev <= $shortest || $shortest < 0) {
                    $closest  = $co->name;
                    $shortest = $lev;
                }
            }
        }
        else {
            $crop = new crop();
            $crop->get();
            $shortest = -1;
            foreach ($crop as $co) {
                $lev = levenshtein($cro, $co->name);
                if ($lev == 0) {
                    $closest = $co->name;
                    $shortest = 0;
                    break;
                }
                if ($lev <= $shortest || $shortest < 0) {
                    $closest  = $co->name;
                    $shortest = $lev;
                }
            }
        }
        $crop->where('name',$closest);
        $crop->get();

        if (empty($crop->id)) {
            return NULL;
        }
        return $crop;
    }

    public function __store_rec($phone,$sms,$type,$dir)
    {
        $p = new M_sms();
        $p->phone = $phone;
        $p->sms = $sms;
        $p->time = Date("y-m-d H:i:s");
        $p->direction =$dir;
        $p->type = $type;
        $p->save();
        return $p;
    }

    public function __bei($sms) {
        $keys = explode(' ', $sms);
        $cro = $keys[1];
        $crop = $this->__detect_crop($cro);
        if ($crop == NULL) {
            return 'Samahani, hamna taarifa ya zao la '.$cro;
        }
        if (count($keys) == 2 ) {
            $crops = new Crop_level1();
            $crops->where('crop_id',$crop->id);
            $crops->get();
            if (empty($crops->id)) {
                return 'Samahani, hamna taarifa ya bei ya '.$crop->name;
            }
            #
            return $this->__bei_text($crop,$crops,'Tanzania');
            #
        }
        elseif (count($keys) == 3) {
            # code...
            $loc = new Location();
            $loc->get();
            $reg = new Region();
            #
            $shortest = -1;
            foreach ($loc as $co) {
                $lev = levenshtein($keys[2], $co->name);
                if ($lev == 0) {
                    $closest = $co->name;
                    $shortest = 0;
                    break;
                }
                if ($lev <= $shortest || $shortest < 0) {
                    $closest  = $co->name;
                    $shortest = $lev;
                }
            }
            $loc->where('name',$closest);
            $loc->get();
            $reg->where('id',$loc->id);
            $reg->get();
            #
            if (!empty($reg->name)) {
                # code...
                $crs = new crop_level2();
                $n =  array(
                    'region_id' => $reg->id,
                    'crop_id' => $crop->id
                );
                $crs->where($n);
                $crs->get();
                if (empty($crs->id)) {
                    return 'Samahani, hamna taarifa ya bei ya '.$crop->name.', '. $loc->name;
                }
                else {
                    return $this->__bei_text($crop,$crs,$crs->region);
                }
            }
            else {
                $crs = new crop_level3();
                $n =  array(
                    'location_id' => $loc->id,
                    'crop_id' => $crop->id
                );
                $crs->where($n);
                $crs->get();
                if (empty($crs->id)) {
                    return 'Samahani, hamna taarifa ya bei ya '.$crop->name.', '.$loc->name;
                }
                else {
                    return $this->__bei_text($crop,$crs,$crs->location);
                }
            }
        }
    }

    public function __bei_text($crop,$cr_level,$loc) {
        # code...
        $txt = 'Bei ya '.$crop->name.' ya '.$loc;
        $i = 0;
        foreach ($cr_level as $value) {
            ++$i;
            if ($i > 1) {
                $txt = $txt.', ';
            }
            if ($value->whole == 1) {
                $txt = $txt.' kwa kipimo cha '.$value->wholesale.' '.$value->unit;
            }
            elseif ($value->whole == 0) {
                $txt = $txt.' kwa '.$value->wholesale;                   
            }
            $txt = $txt.' inauzwa kwa kiasi cha shilingi '. $value->lower.' hadi '. $value->higher;
        }
        return $txt.'.';    
    }
    
}

/* End of file home.php */
/* Location: ./application/controllers/home.php */
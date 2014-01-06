<?php

/**
 * Created by PhpStorm.
 * User: druphliu
 * Date: 14-1-6
 * Time: 下午10:07
 */
class adminstrator extends ADMIN_Controller
{
    function __construct(){
        parent::__construct();
        foreach($this->adminstrator_model->get_admin_group_list() as $g){
            $admin_group[$g->id] = $g;
        }
        $this->load->vars(array('admin_group'=>$admin_group));
    }
    public function index()
    {
        $list = $this->adminstrator_model->get_admin_list();
        $this->load->vars(array('list'=>$list));
        $this->load->view('/adminstrator/list');
    }

    public function group(){
        $this->load->view('/adminstrator/group');
    }
} 
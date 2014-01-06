<?php

/**
 * Created by PhpStorm.
 * User: druphliu
 * Date: 14-1-3
 * Time: 下午11:16
 */
class module extends ADMIN_Controller
{

    public function index()
    {
        $this->load->view('/module/list');
    }

    public function delete()
    {

    }

    public function edit()
    {

    }

    public function permission()
    {
        $permission = objecttoarray($this->module_model->get_permission());
        $this->load->vars(array('permission'=>$permission));
        $this->load->view('module/permission');
    }

    public function permissionadd(){
        $this->load->view('module/permissionadd');
    }
} 
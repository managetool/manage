<?php

class ADMIN_Controller extends CM_Controller
{
    function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('username')) {
            $this->goToUrl('/user');
        } else {
            $onController = $this->uri->segment(1);
            $onAction = $this->uri->segment(2);
            $groupID = $this->session->userdata('groupId');
            //admin导航
            foreach(objecttoarray($this->module_model->get_all()) as $module){
                $modules[$module['id']] = $module;
                if($onController && $module['controller'] == $onController){
                    $onControllerArr = $module;
                }
                if($onAction && $module['controller'] == $onAction){
                    $onActionArr = $module;
                }
            }
            foreach(objecttoarray($this->module_model->get_permission($groupID)) as $p){
                $permission[$p['parentid']][$p['id']] = $p;
            }
            if(($onControllerArr && !$permission[$onControllerArr['id']]) || ($onActionArr && !$permission[$onActionArr['parentid']][$onActionArr['id']])){
                $this->showMessage("权限不足！",'/');
            }
            $this->load->vars(array('userId' => $this->session->userdata('userId'),
                    'username' => $this->session->userdata('username'),
                    'nickname' => $this->session->userdata('nickname'),
                    'groupId' => $groupID,
                    'modules' => $modules,
                    'permission' => $permission
                )
            );
        }
    }
}

class CM_Controller extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        //group
        $userGroup = $this->userGroup_model->get_all();
        $this->load->vars(
            array('site_name' => $this->config->item('siteName'),
                'charset' => $this->config->item('charset'),
                'userGroup' => $userGroup)
        );
    }

    function goToUrl($url)
    {
        header("location:$url");
    }

    function showMessage($msg, $url, $time = 1)
    {
        $this->load->vars(array('message' => $msg, 'url' => $url, 'time' => $time));
        $this->load->view('message');

    }

    function pages($url, $total, $type = '')
    {
        $perpage = $this->config->item('perpage');
        $config['page_query_string'] = TRUE;
        $config['base_url'] = $url;
        $config['total_rows'] = $total;
        $config['per_page'] = $perpage;
        $config['use_page_numbers'] = TRUE;
        $config['first_link'] = "第一页";
        $config['last_link'] = '最后一页';
        $this->pagination->initialize($config); //分页
        $pages = $this->pagination->create_links();
        return $pages;
    }

    function refer()
    {
        $refer = $_SERVER['HTTP_REFERER'];
        return $refer;
    }
}
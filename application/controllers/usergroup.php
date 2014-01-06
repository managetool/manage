<?php
/******************************************************
 * Profile            : 列表
 * Author            : druphliu@gmail.com
 * Create Time        : 2013-8-25下午11:18:15
 * Modify Time        : 2013-8-25
 * Modify Profile    :
 ******************************************************/
if (!defined('BASEPATH'))
    exit ('No direct script access allowed');

class usergroup extends ADMIN_Controller
{
    public function index($page = 1)
    {
        $perPage = $this->config->item('perPage');
        $start = ($page - 1) * $perPage;
        $limit = " limit $start,$perPage";
        $result = $this->department_model->get_list($where = '', $limit);
        $url = '/department?';
        $count = $this->department_model->get_total();
        $total = $count->count;
        $pages = $this->pages($url, $total);
        $this->load->vars(array('list' => $result, 'pages' => $pages));
        $this->load->view('department/list');
    }

    public function del($id)
    {
        $result = $this->department_model->del($id);
        $url = $this->refer();
        if ($result)
            $this->showmessage('删除成功！', $url);
        else
            $this->showmessage('删除失败！', $url);
    }

    public function add()
    {
        if ($this->input->post()) {
            $data['name'] = $this->input->post('name');
            $id = $this->department_model->insert_one($data);
            if ($id)
                $this->showmessage('添加成功', '/department');
            else
                $this->showmessage('添加失败', '/department/add');
        } else {
            $this->load->view('department/add');
        }
    }

    public function edit($id)
    {
        $info = $this->department_model->get_one($id);
        if ($this->input->post()) {
            $data['name'] = $this->input->post('name');
            $where = array('id' => $id);
            $etc = $this->department_model->update_info($data, $where);
            if ($etc)
                $this->showmessage('编辑成功', '/department');
            else
                $this->showmessage('编辑失败', '/department/edit/' . $id);
        } else {
            $this->load->vars(array('info' => $info));
            $this->load->view('department/edit');
        }
    }
}
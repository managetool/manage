<?php

/**
 * Created by PhpStorm.
 * User: druphliu
 * Date: 14-1-6
 * Time: 下午10:07
 */
class adminstrator extends ADMIN_Controller
{
    function __construct()
    {
        parent::__construct();
        foreach ($this->adminstrator_model->get_admin_group_list() as $g) {
            $admin_group[$g->id] = $g;
        }
        $this->load->vars(array('admin_group' => $admin_group));
    }

    public function index()
    {
        $list = $this->adminstrator_model->get_admin_list();
        $this->load->vars(array('list' => $list));
        $this->load->view('/adminstrator/list');
    }

    public function group()
    {
        $this->load->view('/adminstrator/group');
    }

    public function group_add(){
        $url = "/adminstrator/group";
        if($this->input->post()){
            $name = $this->input->post('group_name');
            $result = $this->adminstrator_model->insert_group(array('name'=>$name));
            if($result)
                $this->showMessage("添加成功", $url);
            else
                $this->showMessage("添加失败", $url);
            return;
        }
        $this->load->view('adminstrator/group_add');
    }

    public function group_del($id){
        $url = "/adminstrator/group";
        $id = intval($id);
        if($id){
        $result = $this->adminstrator_model->del_group($id);
            if($result)
                $this->showMessage("删除成功", $url);
            else
                $this->showMessage("删除失败", $url);
        }
    }
    public function group_edit($id)
    {
        $url = "/adminstrator/group";
        $id = intval($id);
        if ($this->input->post()) {
            $group_name = $this->input->post('group_name');
            $result = $this->adminstrator_model->update_group(array('name'=>$group_name), array('id'=>$id));
            if($result)
                $this->showMessage("更新成功！",$url);
            else
                $this->showMessage("未知错误", $url);
            return;
        }
        if ($id == 1) {
            $this->showMessage('无权限修改超级管理员组！', $url);
            return;
        }
        $this->load->vars(array("id" => $id));
        $this->load->view('/adminstrator/group_edit');
    }

    public function group_permission($id)
    {
        $id = intval($id);
        $url = "/adminstrator/group_permission/" . $id;
        foreach (objecttoarray($this->module_model->get_all()) as $m) {
            if ($m['parentid'] == 0) {
                $modules[$m['id']] = $m;
            } else {
                $modules[$m['parentid']]['child'][] = $m;
            }
        }
        foreach (objecttoarray($this->adminstrator_model->get_permission()) as $p) {
            $permission[$p['moduleid']][] = $p;
        }
        foreach (objecttoarray($this->adminstrator_model->get_grouppermission($id, '')) as $g) {
            $group_permission[$g['id']] = $g;
        }
        if ($this->input->post()) {
            if ($id == 1) {
                $this->showMessage('无权限修改超级管理员组！', $url);
                return;
            }
            foreach ($this->input->post("group_permission") as $g_p) {
                if (!$group_permission[$g_p]) {
                    $this->adminstrator_model->insert_group_permission(array('groupid' => $id, 'permissionid' => $g_p));
                } else {
                    unset($group_permission[$g_p]);
                }
            }
            if (!empty($group_permission) && is_array($group_permission)) {
                foreach ($group_permission as $gp) {
                    $del .= $comm . $gp['id'];
                    $comm = ",";
                }
                $where = " permissionid in ($del)";
                $this->adminstrator_model->delete_group_permission($where);
            }
            $this->showMessage("更新成功！", $url);
        } else {
            $this->load->vars(array('module_list' => $modules,
                    'module_permission' => $permission,
                    'group_permission' => $group_permission,
                    'group_id' => $id)
            );
            $this->load->view('adminstrator/group_permission_edit');
        }
    }
} 
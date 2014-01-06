<?php
/**
 * Created by PhpStorm.
 * User: druphliu
 * Date: 14-1-6
 * Time: 下午10:27
 */

class adminstrator_model extends MY_Model{

    public $table;
    public $groupPermission;
    public $permissionTable;
    public $userTable;
    public $adminMember;

    function __construct()
    {
        parent::__construct();
        $this->table = "admin_group";
        $this->groupPermission ="group_permission";
        $this->permissionTable = "permission";
        $this->userTable = "userinfo";
        $this->adminMember = "admin_member";
    }

    public function get_admin_list($where='', $limit='')
    {
        $sql="select b.id, b.username, b.nickname, a.groupid from $this->adminMember a left join $this->userTable b on a.uid = b.id $where $limit";
        $result = $this->db->query($sql)->result();
        return $result;
    }

    public function get_admin_group_list()
    {
        $list = $this->query();
        return $list;
    }

    public function get_one($id)
    {
        return $this->db->get_where($this->table, array('id' => $id))->row();
    }

    public function del($id)
    {
        $sql = "delete from $this->table where id='$id'";
        return $this->db->query($sql);
    }

    public function insert_one($obj)
    {
        $this->db->insert($this->table, $obj);
        return $this->db->insert_id();
    }

    public function update_info($data, $params)
    {
        return $this->update($data, $params);
    }

    public function get_grouppermission($groupId, $order){
        $sql="select * from $this->groupPermission a left join $this->permissionTable b on a.permissionid = b.id  where a.groupid = $groupId $order";
        return $this->db->query($sql)->result();
    }
} 
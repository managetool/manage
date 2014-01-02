<?php

/******************************************************
 * Profile            : 列表
 * Author            : druphliu@gmail.com
 * Create Time        : 2013-8-25下午12:24:24
 * Modify Time        : 2013-8-25
 * Modify Profile    :
 ******************************************************/
class userGroup_model extends MY_Model
{
    public $table;
    public $permissionTable;

    function __construct()
    {
        parent::__construct();
        $this->table = "usergroup";
        $this->permissionTable = "permission";
    }

    function get_all()
    {
        return $this->query();
    }

    public function get_list($where, $limit)
    {
        $result = $this->query($where, $limit);
        return $result;
    }

    public function get_total()
    {
        $sql = "select count(*) as count from $this->table";
        $total = $this->db->query($sql)->row();
        return $total;
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
}
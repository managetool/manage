<?php

/******************************************************
 * Profile            : 列表
 * Author            : druphliu@gmail.com
 * Create Time        : 2013-8-23下午10:47:34
 * Modify Time        : 2013-8-23
 * Modify Profile    :
 ******************************************************/
class user_model extends MY_Model
{
    public $table;

    function __construct()
    {
        parent::__construct();
        $this->table = "userInfo";
    }

    public function get_one($username, $isId = 0)
    {
        if ($isId) {
            $where = array('id' => $username);
        } else {
            $where = array('username' => $username);
        }
        return $this->db->get_where($this->table, $where)->row();
    }

    public function update_info($data, $params)
    {
        return $this->update($data, $params);
    }

    public function insert_one($obj)
    {
        $this->db->insert($this->table, $obj);
        return $this->db->insert_id();
    }

    public function get_list($where = '', $limit = '')
    {
        $result = $this->query($where, $limit);
        return $result;
    }

    public function get_total($where)
    {
        $sql = "select count(*) as count from $this->table $where";
        $total = $this->db->query($sql)->row();
        return $total;
    }

    public function del($userId)
    {
        $sql = "delete from $this->table where id='$userId'";
        return $this->db->query($sql);
    }
}

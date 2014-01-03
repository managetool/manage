<?php
/**
 * Created by PhpStorm.
 * User: druphliu
 * Date: 14-1-2
 * Time: 下午10:24
 */

class module_model extends MY_Model{
    public  $table ;
    public $permissionTable;

    function __construct()
    {
        parent::__construct();
        $this->table = "module";
        $this->permissionTable = "permission";
    }

    function get_all()
    {
        return $this->query();
    }

    public function get_total($where='')
    {
        $sql = "select count(*) as count from $this->table $where";
        $total = $this->db->query($sql)->row();
        return $total;
    }

    public function get_list($where)
    {
        $result = $this->query($where);
        return $result;
    }

    public function get_permission($groupId){
        $sql="select * from $this->table a left join  $this->permissionTable b on a.id = b.moduleid where b.groupid = $groupId";
        return $this->db->query($sql)->result();
    }
} 
<?php
namespace app\admin\model;
use think\Db;
use think\Model;

class OurService extends Model{
    protected $pk = 'ser_id';
    protected $autoWriteTimestamp = true;

    public function getSerList(){
        $list = Db::name('our_service')->order('ser_id','desc')->paginate(10);
        return $list;
    }
    public function editSer($data,$bool=true)
    {
        $result = $this->isUpdate($bool)->allowField($bool)->save($data);
        return $result;
    }

    /**
     * @param $data
     * @return void
     */
    public function addSer($data){
        $result = $this->allowField(true)->save($data);
        return $result;
    }

    public function delSer($id){
        $result = $this->where('ser_id',$id)->delete();
        return $result;
    }
}
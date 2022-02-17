<?php
namespace app\admin\model;
use think\Db;
use think\Model;

class IndexOurs extends Model{
    protected $pk = 'io_id';
    protected $autoWriteTimestamp = true;

    public function getIoList(){
        $list = Db::name('index_ours')->order('io_id','desc')->paginate(10);
        return $list;
    }
    public function editIo($data,$bool=true)
    {
        $result = $this->isUpdate($bool)->allowField($bool)->save($data);
        return $result;
    }

    /**
     * @param $data
     * @return void
     */
    public function addIo($data){
        $result = $this->allowField(true)->save($data);
        return $result;
    }

    public function delIo($id){
        $result = $this->where('io_id',$id)->delete();
        return $result;
    }
}
<?php
namespace app\admin\model;
use think\Db;
use think\Model;

class NewsDt extends Model{

    protected $pk = 'news_id';
    protected $autoWriteTimestamp = true;

    public function getNewsList(){
        $keywords = input('param.keywords','');
        $list = Db::name('news_dt')->order('news_status','asc')->order('news_id','desc')->paginate(10);
        return $list;
    }
    /**
     * @param $bool
     * @return void
     */
    public function editList($data,$bool=true)
    {
        if(input('type')=='editStatus'){
            $result = $this->isUpdate($bool)->save([
                'news_id'=>(int)input('news_id'),
                'news_status'=>$data
            ]);
            return $result;
        }elseif (input('type')=='editData'){
            $result = $this->isUpdate($bool)->allowField($bool)->save($data);
            return $result;
        }
    }

    /**
     * @param $data
     * @return void
     */
    public function addList($data){
        $result = $this->allowField(true)->save($data);
        return $result;
    }

    /**
     * @return void
     */
    public function selList(){
        if(!empty(input('news_title'))){
            $result = $this->where('news_title','like',"%".input('news_title')."%")->select();
            return $result;
        }
    }
    public function delList($id){
        $result = $this->where('news_id',$id)->delete();
        return $result;
    }
}
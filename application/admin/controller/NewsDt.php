<?php
namespace app\admin\controller;
use think\Loader;
use think\Request;

class NewsDt extends AdminBase{

    public function newslist(){
        if(request()->isGet()){
            $data =  Loader::model('NewsDt')->getNewsList();
            $page = $data->render();
            $this->assign('news',$data);
            $this->assign('page',$page);
            return $this->fetch('newslist');
        }else{
            $data = request()->param();
            switch ($data['type']){
                case 'editStatus':
                    $res = Loader::model('NewsDt')->editList($data['news_status']);
                    break;
                case 'select':
                    $res = Loader::model('NewsDt')->selList();
            }
            if($res){
                return json(['code'=>200,'message'=>'success','data'=>$res]);
            }else{
                return json(['code'=>500,'message'=>'error']);
            }
        }
    }
    public function newsdetail(){
        $idandtype = request()->param();
        if ($idandtype['type']=='editData'){
            $data = Loader::model('NewsDt')->where('news_id',$idandtype['news_id'])->find();
            $this->assign('data',$data);
            $this->assign('type',$idandtype['type']);
            return $this->fetch('news_ea');
        }else{
            $this->assign('type',request()->param()['type']);
            return $this->fetch('news_ea');
        }

    }
    public function newsadd(Request $request){
        $data = $request->param();
//        dump($data);die;
        $res = Loader::model("NewsDt")->addList($data);
        if ($res){
            return json(['code'=>200,'message'=>'添加成功!']);
        }else{
            return json(['code'=>500,'message'=>'添加失败!']);
        }
    }
    public function newsedit(){
        $data = request()->param();
        $file = request()->file('file');
        $name = date("Ymd") . rand(1000, 9999);
        if($file){
            $info2 = $file->move('./uploads/NewsDt'.'/'.date("Ymd") . "/", $name);
            $data['news_img'] = "/uploads/NewsDt".'/'.date("Ymd") . "/". $info2->getSaveName();
        }
        $res = Loader::model('NewsDt')->editList($data);
        if ($res){
            return json(['code'=>200,'message'=>'修改成功!']);
        }else{
            return json(['code'=>500,'message'=>'修改失败!']);
        }
    }
    public function newsdel(){
        $id = request()->param()['news_id'];
        $res = Loader::model('NewsDt')->delList($id);
        if ($res){
            return json(['code'=>200,'message'=>'删除成功!']);
        }else{
            return json(['code'=>500,'message'=>'删除失败!']);
        }
    }
    public function getimg(Request $request){
        if($request->isPost()){
            $file = request()->file('file');
            $id = $request->param('id');
            $info = $file->validate(['size'=>2225678,'ext'=>'jpg,png,gif'])->check();
            $name = date("Ymd") . rand(1000, 9999);
            $today = date("Ymd");

            if($info){
                $info2 = $file->move('./uploads/Newsdt'.'/'.$today . "/", $name);
                $savename = $info2->getSaveName();
                ///uploads/Newsdt/20220215/202202154513.jpg
                $url = "http://zyht.zunyunkeji.net/uploads/Newsdt/".$today. "/" . "$savename";
                $sqlurl = "/uploads/Newsdt/".$today. "/" . "$savename";
                if($info2){
                    Loader::model('NewsDt')->where('news_id',$id)->update(['news_img' => $sqlurl]);
                    return json(['code'=>200,'message'=>'上传成功','data'=>$url]);
                }else{
                    return json(['code'=>500,'message'=>$file->getError()]);
                }
            }else{
                return json(['code'=>500,'message'=>$file->getError()]);
            }
        }
    }
}
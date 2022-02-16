<?php
namespace app\admin\controller;
use app\admin\model\OurService as Os;
use think\Loader;
use think\Request;
class OurService extends AdminBase
{
    public function serlist()
    {
        $os = new OS;
        if (request()->isGet()) {
            $data = $os->getSerList();
            $page = $data->render();
            $this->assign('data', $data);
            $this->assign('page', $page);
            return $this->fetch('servicelist');
        }
    }

    public function serdetail()
    {
        $idandtype = request()->param();
        if ($idandtype['type'] == 'editData') {
            $data = Loader::model('OurService')->where('ser_id', $idandtype['ser_id'])->find();
            $this->assign('data', $data);
            $this->assign('type', $idandtype['type']);
            return $this->fetch('ser_ea');
        } else {
            $this->assign('type', request()->param()['type']);
            return $this->fetch('ser_ea');
        }
    }

    public function seredit(){
        $data = request()->param();
        $res = Loader::model('OurService')->editSer($data);
        if ($res){
            return json(['code'=>200,'message'=>'修改成功!']);
        }else{
            return json(['code'=>500,'message'=>'修改失败!']);
        }
    }

    public function seradd(Request $request){
        $data = $request->param();
        $res = Loader::model("OurService")->addSer($data);
        if ($res){
            return json(['code'=>200,'message'=>'添加成功!']);
        }else{
            return json(['code'=>500,'message'=>'添加失败!']);
        }
    }

    public function serdel(){
        $id = request()->param()['ser_id'];
        $res = Loader::model('OurService')->delSer($id);
        if ($res){
            return json(['code'=>200,'message'=>'删除成功!']);
        }else{
            return json(['code'=>500,'message'=>'删除失败!']);
        }
    }
}
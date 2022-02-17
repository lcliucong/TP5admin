<?php
namespace app\admin\controller;
use app\admin\model\OurService as Os;
use app\admin\model\IndexOurs as Io;
use think\Loader;
use think\Request;
class OurService extends AdminBase
{
    public function serlist()
    {
        $os = new Os;
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

    public function indexOurService(){
        $io = new Io;
        if (request()->isGet()) {
            $data = $io->getIoList();
            $page = $data->render();
            $this->assign('data', $data);
            $this->assign('page', $page);
            return $this->fetch('indexservicelist');
        }
    }

    public function iodetail()
    {
        $idandtype = request()->param();
        if ($idandtype['type'] == 'editData') {
            $data = Loader::model('IndexOurs')->where('io_id', $idandtype['io_id'])->find();
            $this->assign('data', $data);
            $this->assign('type', $idandtype['type']);
            return $this->fetch('indexser_ea');
        } else {
            $this->assign('type', request()->param()['type']);
            return $this->fetch('indexser_ea');
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
                $info2 = $file->move('./uploads/IndexOurService'.'/'.$today . "/", $name);
                $savename = $info2->getSaveName();

                $url = "http://zyht.zunyunkeji.net/uploads/IndexOurService/".$today. "/" . "$savename";
                $sqlurl = "/uploads/IndexOurService/".$today. "/" . "$savename";
//                dump($sqlurl);die;
                if($info2){
                    $res = Loader::model('IndexOurs')->where('io_id',$id)->update(['io_img' => $sqlurl]);
//                    dump($res);die;
                    return json(['code'=>200,'message'=>'上传成功','data'=>$url]);
                }else{
                    return json(['code'=>500,'message'=>$file->getError()]);
                }
            }else{
                return json(['code'=>500,'message'=>$file->getError()]);
            }
        }
    }

    public function imgdel(){
        $data = request()->param();
        dump($data);die;
    }

    public function ioedit(){
        $data = request()->param();
        $file = request()->file('file');
        $name = date("Ymd") . rand(1000, 9999);
        if($file){
            $info2 = $file->move('./uploads/IndexOurService'.'/'.date("Ymd") . "/", $name);
            $data['io_img'] = "/uploads/IndexOurService".'/'.date("Ymd") . "/". $info2->getSaveName();
        }


        $res = Loader::model('IndexOurs')->editIo($data);
        if ($res){
            return json(['code'=>200,'message'=>'修改成功!']);
        }else{
            return json(['code'=>500,'message'=>'修改失败!']);
        }
    }

    public function ioadd(Request $request){
        $data = $request->param();
//        dump($data);die;
        $res = Loader::model("IndexOurs")->addIo($data);
        if ($res){
            return json(['code'=>200,'message'=>'添加成功!']);
        }else{
            return json(['code'=>500,'message'=>'添加失败!']);
        }
    }

    public function iodel(){
        $id = request()->param()['io_id'];
        $res = Loader::model('IndexOurs')->delIo($id);
        if ($res){
            return json(['code'=>200,'message'=>'删除成功!']);
        }else{
            return json(['code'=>500,'message'=>'删除失败!']);
        }
    }

}
<?php
namespace app\admin\controller;
use think\Controller;
use think\Request;
class guanyuwomen extends Controller{
    public function select(){
        //header("refresh: 0.001");
        $data=db('guanyuwomen')->select();

        return view('',['data'=>$data]);

    }
    public function edit(){
        $id=input('id');
//        dump($id);
        if(request()->isget()){
            $data=db('guanyuwomen')->where('id',$id)->find();
            return view('edit',['data'=>$data]);
        }
        elseif(request()->isPost()){

            $edit=input('post.');
            $pic=request()->file('file');

            if(!empty($pic)){
                $uploadInfo = $pic->move(ROOT_PATH . 'public' . DS . 'uploads'. DS . 'guanyuwomen');
                $edit['img']='/uploads/guanyuwomen/'.$uploadInfo->getSaveName();
            }


            $res=db('guanyuwomen')->where('id',$id)->update($edit);
            if($res){
                $data=db('guanyuwomen')->select();
            }else{
                return json(['code'=>0,'message'=>'失败或未修改']);
            }
            return json(['code'=>200,'message'=>'成功']);
        }
    }
    public function del(){
        $id=input('id');

        $rel=db('guanyuwomen')->where('id',$id)->delete();
        return json(['code'=>1]);
    }
    public function add(){

    }
}
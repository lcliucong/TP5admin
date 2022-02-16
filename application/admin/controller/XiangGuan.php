<?php
namespace app\admin\controller;
use think\Controller;

class xiangguan extends Controller{
    public function select(){

        $data=db('xiangguan')->select();

        return view('',['data'=>$data]);

    }
    public function edit(){
        $id=input('id');
//        dump($id);
        if(request()->isget()){
            $data=db('xiangguan')->where('id',$id)->find();
            return view('edit',['data'=>$data]);
        }
        elseif(request()->isPost()){

            $edit=input('post.');

            $res=db('xiangguan')->where('id',$id)->update($edit);
            if($res){
                $data=db('xiangguan')->select();
            }else{
                return json(['code'=>0,'mes'=>'失败或未修改']);
            }
            return json(['code'=>200,'message'=>'成功']);
        }
    }
    public function del(){
        $id=input('id');

        $rel=db('xiangguan')->where('id',$id)->delete();
        return json(['code'=>1]);
    }
    public function add(){

    }
}
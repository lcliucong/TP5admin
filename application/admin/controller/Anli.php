<?php
namespace app\admin\controller;
use think\Controller;

class anli extends Controller{
    public function select(){

        $data=db('anli')->select();

        return view('',['data'=>$data]);

    }
    public function edit(){
        $id=input('id');

        if(request()->isget()){
            $data=db('anli')->where('id',$id)->find();
            return view('edit',['data'=>$data]);
        }
        elseif(request()->isPost()){

            $edit=input('post.');
            
            $res=db('anli')->where('id',$id)->update($edit);
            if($res){
                $data=db('anli')->select();
            }else{
                return json(['code'=>0,'mes'=>'失败或未修改']);
            }
            return json(['code'=>200,'message'=>'成功']);
        }
    }
    public function del(){
        $id=input('id');

        $rel=db('anli')->where('id',$id)->delete();
        return json(['code'=>1]);
    }
    public function add(){

    }
}
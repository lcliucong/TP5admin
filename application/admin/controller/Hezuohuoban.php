<?php
namespace app\admin\controller;
use think\Controller;

class hezuohuoban extends Controller{
    public function select(){

        $data=db('hezuohuoban')->select();
        return view('',['data'=>$data]);

    }
    public function edit(){
        $id=input('id');
//        dump($id);
        if(request()->isget()){
            $data=db('hezuohuoban')->where('id',$id)->find();
            return view('edit',['data'=>$data]);
        }
        elseif(request()->isPost()){

            $edit=input('post.');
            $pic=request()->file('file');

            if(!empty($pic)){
                $uploadInfo = $pic->move(ROOT_PATH . 'public' . DS . 'uploads'. DS . 'hezuohuoban');
                $edit['img']='/uploads/hezuohuoban/'.$uploadInfo->getSaveName();
            }

            $res=db('hezuohuoban')->where('id',$id)->update($edit);
            if($res){
                $data=db('hezuohuoban')->select();
            }else{
                return json(['code'=>0,'mes'=>'失败或未修改']);
            }
            return json(['code'=>200,'message'=>'成功']);
        }
    }
    public function del(){
        $id=input('id');

        $rel=db('hezuohuoban')->where('id',$id)->delete();
        return json(['code'=>1]);
    }
    public function add(){

    }
}
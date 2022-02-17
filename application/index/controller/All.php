<?php
namespace app\index\controller;
use think\Controller;
use think\Request;
class all extends Controller{
    public function  __construct(){
//        parent::initialize();
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods:POST,GET,OPTIONS,DELETE,PUT'); // 允许请求的类型
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Allow-Headers:x-requested-with,Content-Type,X-CSRF-Token');
        header('Access-Control-Allow-Headers: *');
    }
    public function guanyuwomen(){
        $data=db('guanyuwomen')->select();
        return json(['code'=>200,'data'=>$data]);
    }
    public function hezuohuoban(){
        $data=db('hezuohuoban')->select();
        return json(['code'=>200,'data'=>$data]);
    }
    public function anli(){
        $data=db('anli')->select();
        return json(['code'=>200,'data'=>$data]);
    }
    public function anlixiangqing(){
        $id = input('id');
        $data=db('anli')->where('id',$id)->find();
        return json(['code'=>200,'data'=>$data]);
    }
    public function xiangguan(){
        $data=db('xiangguan')->select();
        return json(['code'=>200,'data'=>$data]);
    }


}
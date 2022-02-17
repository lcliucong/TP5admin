<?php

namespace app\index\controller;

use think\Db;
use think\Loader;
use app\index\common;

class Service extends IndexBase
{
    public function ServiceContent(){
        $res = Db::name('our_service')->field('create_time,update_time',true)->select();
        return json(['data'=>$res]);
    }
    public function ServiceIndex(){
        $res = Db::name('index_ours')->field('create_time,update_time,io_time',true)->select();
        return json(['data'=>$res]);
    }
}
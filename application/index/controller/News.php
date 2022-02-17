<?php
namespace app\index\controller;
use think\Db;
use think\Loader;
use app\index\common;
class News extends IndexBase{
    public function _initialize()
    {
        parent::_initialize();
    }
    public function getNewsList(){
        $res = Db::name('news_dt')->where('news_status',0)->field('create_time,update_time,news_status',true)->order('news_id','desc')->select();
        return json(['data'=>$res]);
    }
}
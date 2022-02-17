<?php
// +----------------------------------------------------------------------
// | des: index应用模块的基类
// +----------------------------------------------------------------------
// | Author: liu <1226740471@qq.com>
// +----------------------------------------------------------------------
namespace app\index\controller;

use think\Controller;

class IndexBase extends Controller
{

    public function __construct()
    {
       parent::__construct();
       
       // do something...


    }

    /**
     * 初始化操作
     */
    public function _initialize()
    {
        header('Access-Control-Allow-Origin: * ');
        header('Access-Control-Allow-Methods:POST,GET,OPTIONS,DELETE,PUT'); // 允许请求的类型
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Allow-Headers:x-requested-with,Content-Type,X-CSRF-Token');
        header('Access-Control-Allow-Headers: *');

        error_reporting(E_ALL ^ E_NOTICE); // 屏蔽模板输出不存在的变量时的错误提示信息
        
        $category   =  $this->getArticleCategory(); // 调用子类的方法

        $active_cat =  intval(input("param.cat_id"))?:'';

        if(!$_SERVER['QUERY_STRING']) { // 判断是否显示首页
            $active_cat = 'index';
        }
        $this->assign("active_cat",$active_cat);
        $this->assign("category",$category);
       
    }

    public function getArticleCategory(){
        $cat  = db('index_menu')->field("menu_id,menu_name,menu_pid")->where('menu_status=0 AND menu_pid=0')->order('menu_sort asc')->select();
        $cat  = collection($cat)->toArray();
      
        return $cat;
    }

   
}

<?php

namespace app\index\controller;

use think\Db;

class Menu extends IndexBase
{
    public function _initialize(){
        header('Access-Control-Allow-Origin: * ');
        header('Access-Control-Allow-Methods:POST,GET,OPTIONS,DELETE,PUT'); // 允许请求的类型
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Allow-Headers:x-requested-with,Content-Type,X-CSRF-Token');
        header('Access-Control-Allow-Headers: *');
    }
    public function menu(){
        $menus = Db::name('index_menu')->where('menu_status',0)->order('menu_sort','asc')->select();
        $treeMenu   = [];
        foreach ($menus as $k => &$v) {

            if($v['menu_pid'] ==0) {
                $v['level']   = 1;
                $treeMenu[]   = $v;
                $menu_id      = $v['menu_id'];
                unset($menus[$k]);

                foreach ($menus as $k2 => &$v2) {
                    if($v2['menu_pid'] == $v['menu_id'] ) {
                        $v2['level'] = 2;

                        $treeMenu[]  = $v2;
                    }
                }
            }
        }
        return json(['data'=>$treeMenu]);
    }


}
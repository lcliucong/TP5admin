<?php
namespace app\route;
use think\Route;
// 注册路由
//Route::header('Access-Control-Allow-Headers', 'Operator_id,Authorization, Content-Type, If-Match, If-Modified-Since, If-None-Match, If-Unmodified-Since, X-Requested-With')//允许自定义标头 Operator_id
//->allowCrossDomain();//路由全局允许跨域
Route::rule('newslist/list' , 'admin/NewsDt/dd');
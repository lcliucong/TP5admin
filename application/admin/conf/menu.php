<?php
//  各模块菜单栏以及权限配置
// +----------------------------------------------------------------------
// | Author: liu
// +----------------------------------------------------------------------
$menu = array(	
    
	"admin"=>array(
        
        array(
			'name'=>'系统管理',
	        'controller'=>'admin/System',
	        'icon'=>'fa-gear',
			'child'=>array(

				// array(
				// 	'name'=>'系统设置',

				// 	'action'=>'admin/System/systemSetup',

			   //    "auth"=>array(
			   //          array("name"=>'添加','action'=>"admin/System/add"),
			   //          array("name"=>'删除','action'=>"admin/System/delete"),
			   //          array("name"=>'编辑','action'=>"admin/System/edit"),
			   //     )
			   //  ),
	            
	            array(
					'name'=>'首页菜单',

					'action'=>'admin/System/navMenu',

			      "auth"=>array(
			            array("name"=>'添加','action'=>"admin/System/addMenu"),
			            array("name"=>'删除','action'=>"admin/System/delMenu"),
			            array("name"=>'编辑','action'=>"admin/System/editMenu"),
			       )
			    ),

	            array(
					'name'=>'系统日志',

					'action'=>'admin/System/systemLog',

	                "auth"=>array(
	                	array("name"=>'添加','action'=>"admin/System/addLog"),
	                	array("name"=>'删除','action'=>"admin/System/delLog")
	                )
			    ),

			    array(
					'name'=>'字体图标1',

					'action'=>'admin/System/fontIcon',

	                "auth"=>array(
	                )
			    ),

			    array(
					'name'=>'字体图标2',

					'action'=>'admin/System/glyphIcon',

	                "auth"=>array(
	                )
			    ),
		    )
		   
		),

       
	    array(
			'name'=>'用户管理',
	        'controller'=>'admin/User',
	        'icon'=>'fa-user',
			'child'=>array(

				array(
					'name'=>'管理员列表',

					'action'=>'admin/User/userList',

	                "auth"=>array(
	                	array("name"=>'添加','action'=>"admin/User/addUser"),
	                	array("name"=>'删除','action'=>"admin/User/delUser"),
	                	array("name"=>'修改','action'=>"admin/User/updateUser"),
	                )
			    ),
	            
	            array(
					'name'=>'角色管理',

					'action'=>'admin/Role/roleList',

	                "auth"=>array(
	                    array("name"=>'添加','action'=>"admin/Role/addRoleAuth"),
	                	array("name"=>'删除','action'=>"admin/Role/delRole"),
	                	array("name"=>'修改','action'=>"admin/Role/updateRoleAuth"),
	                )
			    ),
			    
		    )
		    
		),


		array(
			'name'=>'文章管理',
	        'controller'=>'admin/Order',
	        'icon'=>'fa-edit',
			'child'=>array(

				array(
					'name'=>'文章列表',

					'action'=>'admin/Article/articleList',

	                "auth"=>array(
	                	array("name"=>'添加','action'=>"admin/Article/addArticle"),
	                	array("name"=>'删除','action'=>"admin/Article/delArticle"),
	                	array("name"=>'修改','action'=>"admin/Article/updateArticle"),
	                )
			    )
	            
		    )
		    
		),
        array(
            'name'=>'栏目管理',
            'controller'=>'admin/XiangGuan',
            'icon'=>'fa-edit',
            'child'=>array(
                array(
                    'name'=>'关于我们',
                    'action'=>'admin/guanyuwomen/select',
                    "auth"=>array(
                        array("name"=>'添加','action'=>""),
                        array("name"=>'删除','action'=>""),
                        array("name"=>'修改','action'=>""),
                    )
                ),
                array(
                    'name'=>'案例展示',
                    'action'=>'admin/anli/select',
                    "auth"=>array(
                        array("name"=>'添加','action'=>""),
                        array("name"=>'删除','action'=>""),
                        array("name"=>'修改','action'=>""),
                    )
                ),
                array(
                    'name'=>'尊云科技集团相关平台',
                    'action'=>'admin/xiang_guan/select',
                    "auth"=>array(
                        array("name"=>'添加','action'=>""),
                        array("name"=>'删除','action'=>""),
                        array("name"=>'修改','action'=>""),
                    )
                ),
                array(
                    'name'   => '新闻动态',
                    'action' => 'admin/NewsDt/newslist',
                    "auth"=>array(
                        array('name'=>'添加','action'=>"admin/NewsDt/newsadd"),
                        array('name'=>'删除','action'=>"admin/NewsDt/newsdel"),
                        array('name'=>'修改','action'=>"admin/NewsDt/newsedit"),
                    )
                ),
                array(
                    'name'   => '合作伙伴',
                    'action' => 'admin/hezuohuoban/select',
                ),
                array(
                    'name'=>'我们的服务',
                    'action'=>'admin/OurService/serlist',
                    "auth"=>array(
                        array('name'=>'添加','action'=>"admin/OurService/sersadd"),
                        array('name'=>'删除','action'=>"admin/OurService/serdel"),
                        array('name'=>'修改','action'=>"admin/OurService/seredit"),
                    )
                ),
                array(
                    'name'=>'（主页）我们的服务',
                    'action'=>'admin/OurService/indexOurService',
                    "auth"=>array(
                        array('name'=>'添加','action'=>"admin/OurService/sersadd"),
                        array('name'=>'删除','action'=>"admin/NewsDt/serdel"),
                        array('name'=>'修改','action'=>"admin/NewsDt/seredit"),
                    )
                )
            )
        )

        
	),
	
);
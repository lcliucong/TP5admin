<?php
namespace app\admin\controller;
class Upload  extends AdminBase
{
    
    protected $fileSize = 2225678;
    protected $fileExt  = 'jpg,png,gif';
    protected $saveFolder = ''; // 图片保存目录

    public function checkUploadFileInfo() {

        $isupload = input('param.isupload'); // 1：不上传， 2：上传
        if(input('param.folder','')) {
            $this->saveFolder =  input('param.folder');
        }
        
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('file');
        $info = $file->validate(['size'=>$this->fileSize,'ext'=>$this->fileExt])->check();//检测上传文件信息，为了节省空间，所以并不会立即上传文件到服务器
        
        if($info) {
            $name = date("Ymd") . rand(1000, 9999);
            if($isupload==1){
                return json(['code'=>200,'message'=>'图片符合规定','data'=>$info]);
            }elseif($isupload==2){
                
                $uploadInfo = $file->move(ROOT_PATH . 'public' . DS . 'uploads'. DS . $this->saveFolder.  DS  .date("Ymd")."/",$name);
//                dump($uploadInfo);exit;
                if($uploadInfo) {
                    return json(['code'=>200,'message'=>'图片符合规定','data'=> DS .'uploads'. DS . $this->saveFolder. DS .date("Ymd"). DS .$uploadInfo->getSaveName()]);
                }else{
                     
                    return json(['code'=>500,'message'=>$uploadInfo->getError(),'data'=>'']);
                }
            }
        }else{
           
           return json(['code'=>2,'msg'=>$file->getError(),'data'=>'']);
        }
    }


    public function uploadFile($folder='') {
       
        $this->saveFolder = $folder;
        
        // 获取表单上传文件
        $file = request()->file('file');

        $uploadInfo = $file->move(ROOT_PATH . 'public' . DS . 'upload'. DS . $this->saveFolder);

        if($uploadInfo) {

            return  DS .'upload'. DS . $this->saveFolder. DS .$uploadInfo->getSaveName();
            
        }else{
           
            return false;
        }
    }

    
}

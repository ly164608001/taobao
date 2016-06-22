 // 弹出层
    $(function(){
        // 楼盘户型-新增
        $('.btn-addhouse').on('click',function(){
            indexAgency= top.layer.open({
                type:2,
                area:['660px','880px'],
                shadeClose:true,
                content:['./房地产商-楼盘中心-楼盘详情-楼盘户型-新增(弹窗).html','no'],
                btn:['提交','取消'],
                title:'新增户型',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        // 楼盘户型-编辑
        $('.btn-edithouse').on('click',function(){
            indexAgency= top.layer.open({
                type:2,
                area:['660px','880px'],
                shadeClose:true,
                content:['./房地产商-楼盘中心-楼盘详情-楼盘户型-编辑(弹窗).html','no'],
                btn:['提交','取消'],
                title:'编辑户型',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        // 删除户型
        $('.btn-del-alone').on('click',function(){
            var innerHtml=[];
            innerHtml.push('<p class="lay-tips">确定删除&nbsp;<span class="red">EA1 2室2厅2阳2卫</span>&nbsp;户型?(删除后无法恢复)</p>');
            var txt=innerHtml.join();
            indexAgency= top.layer.open({
                type:1,
                area:['500px','300px'],
                shadeClose:true,
                content:txt,
                btn:['确定','取消'],
                title:'删除楼栋',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        // 楼盘户型-添加图片
        $('.btn-addImg').on('click',function(){
            indexAgency= top.layer.open({
                type:2,
                area:['660px','400px'],
                shadeClose:true,
                content:['./房地产商-楼盘中心-楼盘详情-楼盘户型-楼盘图片-添加图片(弹窗).html','no'],
                btn:['提交','取消'],
                title:'添加图片',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        // 楼盘户型-添加视频
        $('.btn-addVideo').on('click',function(){
            indexAgency= top.layer.open({
                type:2,
                area:['660px','400px'],
                shadeClose:true,
                content:['./房地产商-楼盘中心-楼盘详情-楼盘户型-楼盘图片-添加视频(弹窗).html','no'],
                btn:['提交','取消'],
                title:'添加图片',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        // 楼盘户型-动态资讯-添加分类
        $('.btn-addType').on('click',function(){
            indexAgency= top.layer.open({
                type:2,
                area:['660px','250px'],
                shadeClose:true,
                content:['./房地产商-楼盘中心-楼盘详情-动态资讯-资讯分类-添加分类(弹窗).html','no'],
                btn:['确定','取消'],
                title:'添加分类',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
         // 楼盘户型-动态资讯-编辑分类
        $('.btn-editType').on('click',function(){
            indexAgency= top.layer.open({
                type:2,
                area:['660px','250px'],
                shadeClose:true,
                content:['./房地产商-楼盘中心-楼盘详情-动态资讯-资讯分类-编辑分类(弹窗).html','no'],
                btn:['确定','取消'],
                title:'添加分类',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        // 楼盘户型-动态资讯-删除分类
        $('.btn-delType').on('click',function(){
            var innerHtml=[];
            innerHtml.push('<p class="lay-tips">是否删除&nbsp;<span class="red">行业资讯</span>&nbsp;分类?</p>');
            innerHtml.push('<p class="lay-tips lay-tips-line">（如果删除，该分类下的所有资讯内容将被删除）</p>');
            var txt=innerHtml.join('');
            indexAgency= top.layer.open({
                type:1,
                area:['500px','300px'],
                shadeClose:true,
                content:txt,
                btn:['确定','取消'],
                title:'删除楼栋',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
         // 楼盘户型-动态资讯-添加资讯
        $('.btn-addMsg').on('click',function(){
            indexAgency= top.layer.open({
                type:2,
                area:['660px','400px'],
                shadeClose:true,
                content:['./房地产商-楼盘中心-楼盘详情-动态资讯-资讯列表-添加资讯(弹窗).html','no'],
                btn:['提交','取消'],
                title:'添加资讯',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        // 楼盘详情-动态资讯-编辑资讯
        $('.btn-editMsg').on('click',function(){
            indexAgency= top.layer.open({
                type:2,
                area:['660px','400px'],
                shadeClose:true,
                content:['./房地产商-楼盘中心-楼盘详情-动态资讯-资讯列表-编辑资讯(弹窗).html','no'],
                btn:['提交','取消'],
                title:'编辑咨询',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        // 楼盘详情-动态资讯-删除资讯
        $('.btn-delMsg').on('click',function(){
            var innerHtml=[];
            innerHtml.push('<p class="lay-tips">确定删除&nbsp;<span class="red">碧桂园.十里江湾于4月29号开盘</span>&nbsp;资讯吗?</p>');
            innerHtml.push('<p class="lay-tips lay-tips-line">(删除后无法恢复)</p>');
            var txt=innerHtml.join('');
            indexAgency= top.layer.open({
                type:1,
                area:['500px','300px'],
                shadeClose:true,
                content:txt,
                btn:['确定','取消'],
                title:'删除资讯',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        // 楼盘详情-在线问答-问答分类-添加分类
        $('.btn-addType-answer').on('click',function(){
            indexAgency= top.layer.open({
                type:2,
                area:['660px','250px'],
                shadeClose:true,
                content:['./房地产商-楼盘中心-楼盘详情-在线问答-问答分类-添加分类(弹窗).html','no'],
                btn:['确定','取消'],
                title:'添加分类',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
         // 楼盘详情-在线问答-问答分类-编辑分类
        $('.btn-editType-answer').on('click',function(){
            indexAgency= top.layer.open({
                type:2,
                area:['660px','250px'],
                shadeClose:true,
                content:['./房地产商-楼盘中心-楼盘详情-在线问答-问答分类-编辑分类(弹窗).html','no'],
                btn:['确定','取消'],
                title:'添加分类',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        // 楼盘详情-在线问答-问答分类-删除分类
        $('.btn-delType-answer').on('click',function(){
            var innerHtml=[];
            innerHtml.push('<p class="lay-tips">是否删除&nbsp;<span class="red">热门回答</span>&nbsp;分类?</p>');
            innerHtml.push('<p class="lay-tips lay-tips-line">（如果删除，该分类下的所有资讯内容将被删除）</p>');
            var txt=innerHtml.join('');
            indexAgency= top.layer.open({
                type:1,
                area:['500px','300px'],
                shadeClose:true,
                content:txt,
                btn:['确定','取消'],
                title:'删除楼栋',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
         // 楼盘详情-在线问答-回答列表-添加资讯
        $('.btn-addMsg-answer').on('click',function(){
            indexAgency= top.layer.open({
                type:2,
                area:['800px','600px'],
                shadeClose:true,
                content:['./房地产商-楼盘中心-楼盘详情-在线问答-问答列表-添加资讯(弹窗).html','no'],
                btn:['提交','取消'],
                title:'添加资讯',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        // 楼盘详情-在线问答-回答列表-编辑资讯
        $('.btn-editMsg-answer').on('click',function(){
            indexAgency= top.layer.open({
                type:2,
                area:['800px','600px'],
                shadeClose:true,
                content:['./房地产商-楼盘中心-楼盘详情-在线问答-问答列表-编辑资讯(弹窗).html','no'],
                btn:['提交','取消'],
                title:'编辑咨询',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        // 楼盘详情-在线问答-回答列表-删除资讯
        $('.btn-delMsg-answer').on('click',function(){
            var innerHtml=[];
            innerHtml.push('<p class="lay-tips">确定删除&nbsp;<span class="red">国企开发商的房子 你买的放心吗</span>&nbsp;?</p>');
            innerHtml.push('<p class="lay-tips lay-tips-line">(删除后无法恢复)</p>');
            var txt=innerHtml.join('');
            indexAgency= top.layer.open({
                type:1,
                area:['500px','300px'],
                shadeClose:true,
                content:txt,
                btn:['确定','取消'],
                title:'删除资讯',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
        //加载新皮肤
       layer.config({extend: ['skin/layerSkinExtend.css'] 
            }); 
    })
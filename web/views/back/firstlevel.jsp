<%--
  Created by IntelliJ IDEA.
  User: QzzZ
  Date: 2016/7/13
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>网站后台管理系统HTML模板--我爱模板网 www.5imoban.net</title>
    <link href="../../resources/back/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../resources/back/js/jquery.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $("#add").click(function(){
                $(".add").fadeIn(200);
            });
            $(".addtop a").click(function(){
                $(".add").fadeOut(200);
            });

            $(".sure").click(function(){
                $(".add").fadeOut(100);
            });

            $(".cancel").click(function(){
                $(".add").fadeOut(100);
            });
            $("#tip").click(function () {
               $(".tip").fadeIn(200);
            });
            $(".tiptop a").click(function(){
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function(){
                $(".tip").fadeOut(100);
            });

            $(".cancel").click(function(){
                $(".tip").fadeOut(100);
            });

        });
    </script>

    <%--全选--%>
    <script>
        $(function(){
            //点击全选
            $("#checkAll").click(function () {//当点击全选框时
                var flag = $("#checkAll").is(":checked");//判断全选按钮的状态
                var checkItems=document.getElementsByName("checkItem");
                for(var i=0;i<checkItems.length;i++){
                    checkItems[i].checked = flag;
                }
            });
            //点击子项
            $("input:checkbox[name='checkItem']").each(function(){
                $(this).click(function(){
                    if($("input:checkbox[name='checkItem']:checked").length==$("input:checkbox[name='checkItem']").length){
                        document.getElementById("checkAll").checked = true;
                    }else{
                        document.getElementById("checkAll").checked = false;
                    }
                });
            });
        });
    </script>
</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="firstlevel.jsp">一级分类</a></li>
    </ul>
</div>

<div class="rightinfo">
    <div class="tools">
        <ul class="toolbar">
            <li id="add"><span><img src="../../resources/back/images/t01.png" /></span>添加</li>
            <li id="tip"><span><img src="../../resources/back/images/t03.png" /></span>删除</li>
        </ul>
    </div>
    <table class="tablelist">
        <thead>
        <tr>
            <th><input id="checkAll" type="checkbox" value="" checked="checked"/></th>
            <th>编号<i class="sort"><img src="../../resources/back/images/px.gif" /></i></th>
            <th>类别</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><input name="checkItem" type="checkbox" value="" /></td>
            <td>1</td>
            <td>IT互联网</td>
            <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink"> 删除</a></td>
        </tr>

        <tr>
            <td><input name="checkItem" type="checkbox" value="" /></td>
            <td>2</td>
            <td>设计创作</td>
            <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
        </tbody>
    </table>


    <div class="pagin">
        <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
            <li class="paginItem"><a href="javascript:;">1</a></li>
            <li class="paginItem current"><a href="javascript:;">2</a></li>
            <li class="paginItem"><a href="javascript:;">3</a></li>
            <li class="paginItem"><a href="javascript:;">4</a></li>
            <li class="paginItem"><a href="javascript:;">5</a></li>
            <li class="paginItem more"><a href="javascript:;">...</a></li>
            <li class="paginItem"><a href="javascript:;">10</a></li>
            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>

    <%--添加界面--%>
    <div class="add">
        <div class="addtop"><span>添加分类</span><a></a></div>
        <div class="addinfo" style="padding-top:45px;margin-left:65px; height:95px;">
            <label style="font-size: 16px">添加一级分类<b>*</b></label>&nbsp;&nbsp;&nbsp;&nbsp;<input name="" type="text" class="dfinput"  style="width:167px"/>
        </div>
        <div class="addbtn">
            <input name="" type="button"  class="sure" value="添加" />&nbsp;
            <input name="" type="button"  class="cancel" value="取消" />
        </div>
    </div>

    <%--删除提示--%>
    <div class="tip">
        <div class="tiptop"><span>提示信息</span><a></a></div>

        <div class="tipinfo">
            <span><img src="../../resources/back/images/ticon.png" /></span>
            <div class="tipright">
                <p>是否确认删除？</p>
                <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
            </div>
        </div>

        <div class="tipbtn">
            <input name="" type="button"  class="sure" value="确定" />&nbsp;
            <input name="" type="button"  class="cancel" value="取消" />
        </div>

    </div>


</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>
</body>
</html>
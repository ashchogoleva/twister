<#-- @ftlvariable name="model" type="ru.qatools.school.switter.models.Post[]" -->
<#import "/layouts/main.ftl" as layout />
<@layout.layout title="Blog: post">
<div class="row">
    <div class="col-md-12">
        <div class="page-header " >

             <a href="/post/new" class="btn btn-default">New post</a>



        </div>
        <#list model as post>
        <div class="panel panel-default">
            <div class="panel-body">
                <a href="/post/${post.id}">${post.title}</a> at ${post.createdAt}<br/>
            </div>
        </div>
        </#list>
    </div>
</div>
</@layout.layout>

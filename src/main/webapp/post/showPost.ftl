<#-- @ftlvariable name="model" type="ru.qatools.school.twister.models.Post" -->
<#import "../layouts/main.ftl" as layout />
<@layout.layout title="Blog: post">
<div class="row">
    <div class="col-md-12">
        <div class="page-header">
            <h2>${model.title}</h2>
        </div>
        <div class="post-body">
            ${model.body}
            <div class="panel-body">
                    <ul class="list-group">
                        <#list model.comments as comment>

                            <li class="list-group-item">${comment.body}</li>

                        </#list>
                    </ul>

                    <form class="form" role="form" action="/post/${model.id}/addComment" method="post">
                        <div class="form-group">
                            <textarea class="form-control" rows="3" name="commentBody"></textarea>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-default pull-right">Add Comment</button>
                            </div>
                        </div>
                    </form>
            <div>
        </div>
    </div>
</div>
</@layout.layout>

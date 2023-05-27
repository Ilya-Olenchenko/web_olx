<#import "blocks/template.ftlh" as t>
<@t.template user>
    `<h1 style="text-align: center">Адмін панель</h1><hr>
    <table class="table table-hover table-dark">
        <tr>
            <th scope="col">Email</th>
            <th scope="col">Номер тел.</th>
            <th scope="col">Активності</th>
            <th scope="col">Ролі</th>
            <th scope="col">Бан</th>
            <th scope="col">Редагування</th>
            <th scope="col">Повна інформація</th>
        </tr>
        <#list users as user>
            <tr>
                <th>${user.email}</th>
                <th>${user.phoneNumber}</th>
                <th><#if user.active>true<#else>false</#if></th>
                <th><#list user.roles as role>${role}</#list></th>
                <th>
                    <form action="/admin/user/ban/${user.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="submit" class="btn btn-light" value="Бан">
                    </form>
                </th>
                <th><a href="/admin/user/edit/${user.id}">Редагування</a></th>
                <th><a href="/user/${user.id}">Повна інформація</a></th>
            </tr>
        <#else>
            <h3>Користувачів немає</h3>
        </#list>
    </table>
</@t.template>
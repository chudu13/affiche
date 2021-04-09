<#import "parts/common.ftlh" as c>

<@c.page>
    <p>Список пользователей</p>
    <table>
        <thead>
        <tr>
            <th>Пользователь</th>
            <th>Роли</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username!"null or missing"}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">Edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>
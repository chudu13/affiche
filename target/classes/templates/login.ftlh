<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div class="mb-3">
        <h3>Авторизация</h3>
    </div>
    <@l.login "/login" false/>
</@c.page>

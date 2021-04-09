<#import "parts/common.ftlh" as c>

<@c.page>
    <h3>Приветствую в тестовом стартапе</h3>

    <div>
        <span><a href="/user">Список пользователей</a></span>
    </div>

    <div>
        <form method="post" action="/main" enctype="multipart/form-data">
            <input type="text" name="text" placeholder="Введите текст">
            <input type="text" name="tag" placeholder="Введите тег">
            <input type="file" name="file">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Добавить</button>
        </form>

        <form method="get" action="/main">
            <input type="text" name="filter" value="${filter!}" placeholder="Поиск">
            <button type="submit">Найти</button>
        </form>
    </div>
    <div>Список сообщений:</div>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}">
                </#if>
            </div>
        </div>
    <#else>
        <p>Нет сообщений</p>
    </#list>
</@c.page>
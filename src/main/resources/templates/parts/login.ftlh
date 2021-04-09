<#macro login path isRegister>
    <form action="${path}" method="post">

        <div class="mb-3">
            <label for="exampleInputUsername" class="form-label"> Имя пользователя : </label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="exampleInputUsername" name="username" placeholder="Пользователь"/>
            </div>
        </div>

        <div class="mb-3">
            <label for="exampleInputPassword" class="form-label"> Пароль : </label>
            <div class="col-sm-4">
                <input type="password" class="form-control" id="exampleInputPassword" name="password"
                       aria-describedby="passwordHelpInline" placeholder="Пароль"/>
            </div>
            <div class="col-auto">
                <span id="passwordHelpInline" class="form-text">
                  Длина пароля 8-20 символов.
                </span>
            </div>
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}">

        <div>
            <button type="submit" class="btn btn-primary mb-3">
                <#if isRegister>Сохранить<#else>Отправить</#if>
            </button>
        </div>
    </form>
</#macro>

<#macro logoutNavbar>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-danger">Выход</button>
    </form>
</#macro>

<#macro loginNavbar>
    <form action="/login" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-success">Вход</button>
    </form>
</#macro>

<#macro regNavbar>
    <form action="/registration" method="get">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-secondary">Регистрация</button>
    </form>
</#macro>
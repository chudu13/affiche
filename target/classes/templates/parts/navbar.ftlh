<#include "security.ftlh">
<#import "login.ftlh" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand mb-0 h1"  href="/">Affiche</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/">Главная</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/main">Посты</a>
                </li>
                <#if isAdmin>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/user">Админка</a>
                    </li>
                </#if>
            </ul>
        </div>

        <div class="navbar-text me-3">${name}</div>

        <#if !isActive>
            <div class="me-2">
                <@l.regNavbar/>
            </div>
            <div class="me-1">
                <@l.loginNavbar/>
            </div>
        </#if>

        <#if isUser>
            <@l.logoutNavbar/>
        </#if>
    </div>
</nav>
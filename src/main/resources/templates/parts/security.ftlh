<#assign
    context = Session.SPRING_SECURITY_CONTEXT??
>

<#if context>
    <#assign
        user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
        name = user.getUsername()
        isUser = user.isUser()
        isAdmin = user.isAdmin()
        isActive = user.isActive()
    >
<#else>
    <#assign
        name = "Гость"
        isUser = false
        isAdmin = false
        isActive = false
    >
</#if>


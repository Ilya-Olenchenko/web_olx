<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Вхід</h1>
    <hr>
    <form action="/login " method="post">
        <div class="form-group">
            <label for="email">Електронна адреса</label>
            <input type="email" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="email" name="username">
            <div id="email" class="invalid-feedback">
                Помилка в написанні електронної адреси
            </div>
        </div>
        <div class="form-group">
            <label for="password">Пароль</label>
            <input type="password" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="password" name="password">
            <div id="password" class="invalid-feedback">
                Помилка в написанні паролю
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 100%" class="btn btn-dark">Увійти</button>
    </form>
    <hr>
    <h2>Не зареєстровані на OLX2.0? <a href="/registration">Зареєструйся!</a></h2>
</@t.template>
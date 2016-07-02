<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Курсы валют</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
<div align="center">
    <h3>Выберите валютную пару</h3>
<form method="post" action="\parser" >
    <select size="10" multiple name="cur" required >
        <option value="USDEUR">USD/EUR</option>
        <option value="USDUAH">USD/UAH</option>
        <option value="EURUAH">EUR/UAH</option>
        <option value="USDJPY">USD/JPY</option>
        <option value="USDBGN">USD/BGN</option>
        <option value="USDCZK">USD/CZK</option>
        <option value="USDDKK">USD/DKK</option>
        <option value="USDGBP">USD/GBP</option>
        <option value="USDHUF">USD/HUF</option>
        <option value="USDLTL">USD/LTL</option>
        <option value="USDLVL">USD/LVL</option>
        <option value="USDPLN">USD/PLN</option>
        <option value="USDRON">USD/RON</option>
        <option value="USDSEK">USD/SEK</option>
        <option value="USDCHF">USD/CHF</option>
        <option value="USDNOK">USD/NOK</option>
        <option value="USDHRK">USD/HRK</option>
        <option value="USDRUB">USD/RUB</option>
        <option value="USDTRY">USD/TRY</option>
        <option value="USDAUD">USD/AUD</option>
        <option value="USDBRL">USD/BRL</option>
        <option value="USDCAD">USD/CAD</option>
    </select>
    <p><input class="button" type="submit" value="Отправить">
        <input class="button" type="reset" value="Очистить"></p>
</form>
</div>
</body>
</html>



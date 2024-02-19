<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="body">
    <div class="head">
        <div class="BL">BITLAB SHOP</div>
        <div class="cat">
            <div>Top Sales</div>
            <div>New Sales</div>
            <div>By Category</div>
            <div><a href="/login" style="text-decoration: none" >Sign In</a></div>
        </div>
    </div>
    <div class="main">
        <div class="WEL">Welcome to BITLAB SHOP</div>
        <div class="info">Electronic devices with high quality and service</div>
    </div>
    <div class="cards">
        <div class="card">
            <div class="name">Macbook Pro 2020</div>
            <div class="char">
                <div class="price">$1499.99</div>
                <div class="text">8 GB RAM</div>
                <div class="text">256 GB SSD</div>
                <div class="text">Intel Core i7</div>
                <div class="buy">Buy Now</div>
            </div>
        </div>
        <div class="card">
            <div class="name">ASUS TUF GAMING</div>
            <div class="char">
                <div class="price">$999.99</div>
                <div class="text">16 GB RAM</div>
                <div class="text">512 GB SSD</div>
                <div class="text">AMD Ryzen 5</div>
                <div class="buy">Buy Now</div>
            </div>
        </div>
        <div class="card">
            <div class="name">Apple Iphone 12 Pro</div>
            <div class="char">
                <div class="price">$1099.99</div>
                <div class="text">6 GB RAM</div>
                <div class="text">128 GB Memory</div>
                <div class="text">Super Retina XDR OLED Display</div>
                <div class="buy">Buy Now</div>
            </div>
        </div>
        <div class="card">
            <div class="name">XIAOMI Redmi Note 8</div>
            <div class="char">
                <div class="price">$199.99</div>
                <div class="text">6 GB RAM</div>
                <div class="text">64 GB Memory</div>
                <div class="text">Android 9 Pie</div>
                <div class="buy">Buy Now</div>
            </div>
        </div>
        <div class="card">
            <div class="name">XIAOMI Redmi Note 10</div>
            <div class="char">
                <div class="price">$299.99</div>
                <div class="text">8 GB RAM</div>
                <div class="text">128 GB Memory</div>
                <div class="text">Android 11</div>
                <div class="buy">Buy Now</div>
            </div>
        </div>
        <div class="card">
            <div class="name">MSI Prestige 15</div>
            <div class="char">
                <div class="price">$1999.99</div>
                <div class="text">Intel ®️ Core™️ i7</div>
                <div class="text">1024 GB Memory</div>
                <div class="text">32 GB RAM</div>
                <div class="buy">Buy Now</div>
            </div>
        </div>
    </div>
</div>
</body>
<style>
    .body{
        padding: 0 20%;
        font-family: sans-serif;
    }
    .head{
        display: flex;
        padding: 15px 0;
        border-bottom: 1px solid #cccccc;
    }
    .BL{
        font-size: 22px;
        font-weight: bolder;
        width: 75%;
    }
    .cat{
        font-size: 15px;
        width: 40%;
        display: flex;
        justify-content: space-between;
    }
    .main{
        text-align: center;
        padding: 40px 0;
    }
    .WEL{
        font-weight: bolder;
        font-size: 36px;
        margin-bottom: 10px;
    }
    .info{
        font-size: 18px;
        color: #424242;
    }
    .cards{
        justify-content: space-between;
        display: flex;
        flex-wrap: wrap;
    }
    .card{
        width: 31.5%;
        border-radius: 7px;
        text-align: center;
        border: 1px solid #cccccc;
        box-shadow: 0 0 20px #b8b8b8;
        margin-bottom: 30px;
    }
    .name{
        padding: 15px 30px;
        border-top-left-radius: 5px;
        border-top-right-radius: 5px;
        background-color: #f0f0f0;
        border-bottom: 1px solid #cccccc;
        font-size: 20px;
    }
    .char{
        line-height: 1.4;
        font-size: 14px;
    }
    .price{
        color: #016617;
        font-weight: 700;
        font-size: 24px;
        margin: 15px 0;

    }
    .text{
        font-size: 15px;
    }
    .buy{
        background-color: #016617;
        color: white;
        font-size: 13px;
        padding: 5px;
        margin: 13px;
        border-radius: 2px;
        margin-top: 20px;
    }
</style>
</html>

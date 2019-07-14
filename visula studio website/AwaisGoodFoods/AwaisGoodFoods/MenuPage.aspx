<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuPage.aspx.cs" Inherits="MenuPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="MenuPageStyle.css" />
    <title>AGF Menu</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- If theres  aproblem with the the textmode type you need to make sure u are using asp.net framework 4.5 and higher-->
            <!-- Put HTML code in here-->
            <h1></h1>
                <img id="MenuLogo" src="images/AGF2.png" height="150" width="150" /><!--The logo at the top-->
                <h1 id="Menu">Menu</h1>
            <div id="NavButtons"><!--Teh navigation buttons-->
                <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="btnHome" OnClick="btnHome_Click" />
                <asp:Button ID="btnOrder" runat="server" Text="Order" CssClass="btnOrder" OnClick="btnOrder_Click" />  
            </div>
            <br />
            <br />
                <div id="menuItems">       <!--All the items in the menu go here-->        
                <ul id="Starters"><!--Starters table-->
                    <li><h2>Starters</h2></li>
                    <li>Chicken Wings</li>
                    <li>Seekh Kebabs</li>
                    <li>Chicken Tikka</li>
                    <li>Pakora</li>
                    <li>Samosa</li>
                    <li>Chips</li>
                    <li>Roti</li>
                    <li>Naan</li>
                </ul>
                <ul id="MainsKebabs"><!--Kebabs table-->
                    <li><h2>Kebabs</h2></li>
                    <li>Donnar</li>
                    <li>Chicken Donnar</li>
                    <li>Chicken Tikka</li>
                    <li>Mix Kebabs</li>
                    <li>Shashlick</li>
                    <li>Chicken Shawrma</li>
                    <li>Lamb Shawrma</li>
                    <li>Mix Shawrma</li>
                </ul>
                <!--<ul id="MainPizza">
                    <li><h2>Pizza</h2></li>
                    <li>Margherita</li>
                    <li>Vegetarian</li>
                    <li>Hot Vegetarian</li>
                    <li>Hot and Spicy</li>
                    <li>Meat Feast</li>
                    <li>Asian Style</li>
                    <li>Peri Peri</li>
                    <li>Garlic Bread</li>
                </ul>-->
                <ul id="MainBurger"><!--Burgers table-->
                    <li><h2>Burgers</h2></li>
                    <li>Chicken Burger</li>
                    <li>Chicken Fillet</li>
                    <li>Cheese Burger</li>
                    <li>Beef Burger</li>
                    <li>Donnar Burger</li>
                    <li>Fish Fillet Burger</li>
                    <li>Vegie Burger</li>
                    <li>Bean Burger</li>
                </ul>
                <!-- <ul id="MainWraps">
                    <li><h2>Wraps</h2></li>
                    <li>Chicken Wrap</li>
                    <li>Seekh Wrap</li>
                    <li>Fish Wraps</li>
                    <li>Tikka Wrap</li>
                    <li>Seekh Wrap</li>
                    <li>Vegie Wrap</li>
                    <li>Sharma Wrap</li>
                    <li>Shaslick Wrap</li>
                </ul> -->
            <!--<ul id="MainCurrys">
                <li><h2>Currys</h2></li>
                <li>Nehari</li>
                <li>Paya</li>
                <li>Keema</li>
                <li>Saag Ghosht</li>
                <li>Chicken Karahi</li>
                <li>Lamb Curry</li>
                <li>Beef Curry</li>
                <li>Channa Salaan</li>
            </ul>-->
            <!--<ul id="Sides">
                <li><h2>Sides</h2></li>
                <li>Ketchup</li>
                <li>Mayo</li>
                <li>Sweet Chilli</li>
                <li>Spicy Sauce</li>
                <li>Mint Chutney</li>
                <li>Mango Chutney</li>
                <li>Salad</li>
                <li>Mash Potato</li>
            </ul>-->
            <ul id="Drinks"><!--Drinks table-->
                <li><h2>Drinks</h2></li>
                <li>7UP</li>
                <li>Pepsi</li>
                <li>Coke</li>
                <li>Irn Bru</li>
                <li>Rubicon Mango</li>
                <li>Fanta Orange</li>
                <li>Rio</li>
                <li>Bottled Water</li>
            </ul>
            <!--<ul id="Dessert">
                <li><h2>Desserts</h2></li>
                <li>Ice Cream</li>
                <li>Milkshakes</li>
                <li>Cheese Cakes</li>
                <li>Cakes</li>
                <li>Waffles</li>
                <li>Cookie Dough</li>
                <li>Crepes</li>
                <li>Brownies</li>
            </ul>-->
                    <br />
            </div>
        </div>
        <div id="footer"><!-- This is the footer and its at the bottom of the page.-->
                <address>
                    Created By Awais Tasleem
                </address>
                <address>
                    Company Name is: Awais Good Food
                </address>
                <address>
                    Located in Oldham
                </address>
            </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="BasicStyles.css" />
    <title>Awais Good Foods</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- If theres  aproblem with the the textmode type you need to make sure u are using asp.net framework 4.5 and higher-->
            <!-- HTML goes in here -->
            <img id="logo" src="images/AGF2.png" height="200" width="200" /><!--The logo at the top-->
            <div id="foodPics"> <!--  My div that has all the main pictures for first page, width there width set to 300px and height set 270px -->
                <img id="Burger" src="images/veg-burger-patty-500x500.jpg" height="270" width="300"/>
                <img id="Pizza" src="images/pizza slice 500 by 500.jpg" height="270" width="300"/>
                <img id="Meal" src="images/chicken_fillet_burger_meal-500x500.jpg" height="270" width="300"/>&nbsp;
                <img id="cake" src="images/strawberry-cake-500x500.jpg" height="270" width="300"/>
            </div>
            <div id="Buttons">
                
                <asp:Button ID="btnMenu" runat="server" Text="Menu" CssClass="btnMenu" BorderStyle="None" EnableTheming="True" OnClick="btnMenu_Click" BorderWidth="2px" />
                
                <asp:Button ID="btnOrder" runat="server" Text="Order Food" CssClass="btnOrder" BorderStyle="None" OnClick="btnOrder_Click" BorderWidth="2px"/>
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
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

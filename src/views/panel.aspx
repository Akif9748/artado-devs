<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="ArtadoDevs.Panel.Panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="https://www.artadosearch.com/bootstrap-4.5.3-dist/css/bootstrap.min.css" rel="stylesheet"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" rel="stylesheet"/>
<link rel="stylesheet" href="/css/mdb.min.css" type="text/css" />
<link href="css/style.css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="/ism/css/my-slider.css"/>
<script src="/ism/js/ism-2.2.min.js"></script>
<script src="https://kit.fontawesome.com/641f7d1cc6.js" crossorigin="anonymous"></script>
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'/>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&family=Quicksand:wght@300&family=Zen+Kaku+Gothic+Antique:wght@300&display=swap" rel="stylesheet"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.1/moment.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="js/mdb.min.js"></script>     
<link rel="shortcut icon" href="/images/favicon.ico"/>    
    <title>Panel - Artado Developers</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="sidebar">
            <header>
                <div class="image-text">
                    <span class="image">
                        <img src="/images/logo.png" alt=""/>
                    </span>

                    <div class="text logo-text">
                        <span class="name">Developers</span>
                    </div>
                </div>
            </header>

            <div class="menu-bar">
                <div class="menu">
                    <ul class="menu-links">
                        <li class="nav-link">
                            <a href="/devs/panel">
                                <i class="bi bi-house icon"></i>
                                <span class="text nav-text">
                                    
                                <asp:Literal runat="server" Text="<%=localize.Home%>" /></span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="/devs/panel/apps">
                                <i class='bx bx-store-alt icon' ></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.MyApplications%>" /></span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="/devs/panel/games">
                                <i class="bi bi-controller icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.MyGames%>" /></span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="/devs/panel/sites">
                                <i class="bi bi-cloud icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.APIs%>" /></span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="/devs/panel/workshop">
                                <i class="bi bi-droplet icon"></i>
                                <span class="text nav-text">Workshop</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="/devs/panel/events">
                                <i class="bi bi-calendar-event icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.Events%>" /></span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="/devs/panel/collections">
                                <i class="bi bi-collection icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.Collections%>" /></span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="/devs/panel/team">
                                <i class="bi bi-people-fill icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.Team%>" /></span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="/devs/panel/settings">
                                <i class="bi bi-gear icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.Settings%>" /></span>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>

        </nav>

        <nav class="mobil-sidebar">
            <header>
                <div class="image-text">
                    <span class="image">
                        <img src="/images/logo.png" alt=""/>
                    </span>

                    <div class="text logo-text">
                        <span class="name">Developers</span>
                    </div>
                </div>
            </header>

            <button class="btn btn-success menu" style="margin-top: 10px; height: 35px; background: #5F5F87" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" data-ripple-color="dark" aria-controls="offcanvasRight"><i class="bi-list"></i></button>
              <div class="offcanvas offcanvas-end" style="max-width: 300px; border-top-left-radius:10px; border-bottom-left-radius:10px;" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
                <style>
                    ::-webkit-scrollbar {
                        width: 4px;
                        color: #3c3c3c;
                    }
                </style>
                <div class="offcanvas-header">
                     <div class="image-text">
                        <span class="image">
                            <img src="/images/logo.png" alt=""/>
                        </span>

                        <div class="text logo-text">
                            <span class="name">Developers</span>
                        </div>
                    </div>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <div class="menu-bar">
               <div class="menu">
                    <ul class="menu-links">
                        <li class="nav-link">
                            <a href="/devs/panel">
                                <i class="bi bi-house icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.Home%>" /></span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="/devs/panel/apps">
                                <i class='bx bx-store-alt icon' ></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.MyApplications%>" /></span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="/devs/panel/games">
                                <i class="bi bi-controller icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.MyGames%>" /></span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="/devs/panel/api">
                                <i class="bi bi-cloud icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.APIs%>" /></span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="/devs/panel/workshop">
                                <i class="bi bi-droplet icon"></i>
                                <span class="text nav-text">Workshop</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="/devs/panel/events">
                                <i class="bi bi-calendar-event icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.Events%>" /></span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="/devs/panel/collections">
                                <i class="bi bi-collection icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.Collections%>" /></span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="/devs/panel/team">
                                <i class="bi bi-people-fill icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.Team%>" /></span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="/devs/panel/settings">
                                <i class="bi bi-gear icon"></i>
                                <span class="text nav-text"><asp:Literal runat="server" Text="<%=localize.Settings%>" /></span>
                            </a>
                        </li>

                    </ul>
                </div> </div>
   
                </div>
            </div>

        </nav>

        <div id="Home" runat="server" class="home">
            <div id="showcase" runat="server" class="showcase">
                <div class="welcome">
                    <asp:Label ID="welcometxt" runat="server" Text="<%=localize.JoinDiscord%>" Font-Size="X-Large"></asp:Label><br />
                    <asp:Button ID="More" runat="server" Text="<%=localize.Join%>" class="more" OnClick="More_Click"/>
                </div>
                <img src="/images/logo.png" class="h_image"/>
            </div>

            <%--Home--%>
            <div id="main" runat="server" class="products">
                <div class="danger">
                    <i class="bi bi-heart" style="font-size: 30px; margin-right: 10px"></i>
                    <asp:Label ID="Label71" runat="server" Text="<%=localize.DonateText%>"></asp:Label>
                    <a href="https://www.artadosearch.com/Donate"><asp:Label ID="donate" runat="server" Text="<%=localize.Donate%>"></asp:Label></a>
                </div>
                <div style="font-size:22px; margin-left: 20px;"><asp:Literal runat="server" Text="<%=localize.MyProjects%>" /></div>
                <asp:Repeater runat="server" ID="Projects">
                    <ItemTemplate>
                        <a href='/devs/panel/edit/<%# Eval("ID") %>' class="pro_link">
                            <div class="product_row">
                                <img src='/Upload/Images/<%# Eval("Logo") %>' class="logo" />
                                <div class="row_info">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Size="X-Large"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Developer") %>' Font-Size="Medium" ForeColor="Gray"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Genre") %>' Font-Size="Small" ForeColor="Gray"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text='<%=localize.Free%>' Font-Size="Large"></asp:Label>
                                </div>               
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
           </div>


            <%--Apps--%>
            <div id="apps" runat="server" class="products">
                <asp:Button ID="Button1" runat="server" Text="<%=localize.CreateApp%>" class="more" style="float:right;  margin-top: 10px !important" OnClick="ShareApps"/>
                <div id="appstext" runat="server" style="font-size:22px; margin-left: 20px;"><asp:Literal runat="server" Text="<%=localize.MyApplications%>" /></div>
                <asp:Panel ID="nomore" runat="server" class="att">
                    <i class="bi bi-exclamation-octagon" style="font-size: 30px; margin-right: 10px; margin-left: 10px"></i>
                    <asp:Label ID="Label53" runat="server" Text="<%=localize.AppLimit%>" Font-Size="Medium"></asp:Label>
                </asp:Panel>
                <asp:Repeater runat="server" ID="Apps_Data">
                    <ItemTemplate>
                        <a href='/devs/panel/edit/<%# Eval("ID") %>' class="pro_link">
                            <div class="product_row">
                                <img src='/Upload/Images/<%# Eval("Logo") %>' class="logo" />
                                <div class="row_info">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Size="X-Large"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Developer") %>' Font-Size="Medium" ForeColor="Gray"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Genre") %>' Font-Size="Small" ForeColor="Gray"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("AppStatus") %>' Font-Size="Large"></asp:Label>
                                </div>               
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
                <div id="share_app" runat="server" style="margin-left: 50px">
                    <asp:Button ID="Button11" runat="server" Text="<%=localize.Edit%>" class="more" style="" OnClick="Edit_Click"/>
                    <asp:Button ID="Button12" runat="server" Text="<%=localize.Versions%>" class="more" OnClick="Version_Click"/>
                    <div id="app_details" runat="server">
                        <asp:Label ID="Label5" runat="server" Text="<%=localize.PublishApp%>" style="font-size:22px;"></asp:Label><br />
                        <asp:Label ID="Label0" runat="server" Text="<%=localize.UpdateApp%>" style="font-size:22px;"></asp:Label><br />
                        <asp:Label ID="Label7" runat="server" Text="<%=localize.ApplyForApp%>"></asp:Label>
                        <asp:Label ID="Label70" runat="server" Text="<%=localize.ApplyForUpdate%>"></asp:Label>
                        <asp:Panel ID="danger_panel" CssClass="danger" runat="server">
                            <i class="bi bi-exclamation-octagon" style="font-size: 30px; margin-right: 10px; margin-left: 10px"></i>
                            <asp:Label ID="Uyarı" runat="server" Text="" Font-Size="Medium"></asp:Label>
                        </asp:Panel>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="<%=localize.AppName%>" CssClass="textbox"></asp:TextBox>
                        <textarea id="TextArea1" runat="server" cols="20" rows="2" placeholder="<%=localize.AppDescription%>" class="textbox" style="margin-bottom: 20px;"></textarea><br />
                        <asp:Label ID="Label6" runat="server" Text="<%=localize.AppGenre%>" style="margin-right: 10px;"></asp:Label>
                        <asp:DropDownList ID="Genres" CssClass="dlist" runat="server">
                            <asp:ListItem Value="Bussines" Text="<%=localize.GenreBusiness%>"></asp:ListItem>
                            <asp:ListItem Value="Education" Text="<%=localize.GenreEducation%>"></asp:ListItem>
                            <asp:ListItem Value="Health" Text="<%=localize.GenreHealth%>"></asp:ListItem>
                            <asp:ListItem Value="Entertainment" Text="<%=localize.GenreEntertainment%>"></asp:ListItem>
                            <asp:ListItem Value="Tools" Text="<%=localize.GenreTools%>"></asp:ListItem>
                            <asp:ListItem Value="Travel" Text="<%=localize.GenreTravel%>"></asp:ListItem>
                            <asp:ListItem Value="Art" Text="<%=localize.GenreArt%>"></asp:ListItem>
                            <asp:ListItem Value="Friendship" Text="<%=localize.GenreFriendship%>"></asp:ListItem>
                            <asp:ListItem Value="Finance" Text="<%=localize.GenreFinance%>"></asp:ListItem>
                            <asp:ListItem Value="Food" Text="<%=localize.GenreFood%>"></asp:ListItem>
                            <asp:ListItem Value="Weather" Text="<%=localize.GenreWeather%>"></asp:ListItem>
                            <asp:ListItem Value="News" Text="<%=localize.GenreNews%>"></asp:ListItem>
                            <asp:ListItem Value="Social" Text="<%=localize.GenreSocial%>"></asp:ListItem>
                            <asp:ListItem Value="Books" Text="<%=localize.GenreBooks%>"></asp:ListItem>
                            <asp:ListItem Value="Music" Text="<%=localize.GenreMusic%>"></asp:ListItem>
                            <asp:ListItem Value="Action" Text="<%=localize.GenreOther%>"></asp:ListItem>
                        </asp:DropDownList><br /><br />
                        <asp:Label ID="Label29" runat="server" Text="<%=localize.AppStatus%>" style="margin-right: 10px;"></asp:Label>
                        <asp:DropDownList ID="DevStatus" CssClass="dlist" runat="server">
                            <asp:ListItem Text="<%=localize.StatusRelease%>" Value="Release"></asp:ListItem>
                            <asp:ListItem Text="<%=localize.StatusBeta%>" Value="Beta"></asp:ListItem>
                            <asp:ListItem Text="<%=localize.StatusIndev%>" Value="In-development"></asp:ListItem>
                        </asp:DropDownList><br /><br />
                        <asp:Label ID="Label8" runat="server" Text="<%=localize.Logo%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="AppLogoUp" runat="server" CssClass="dlist" BorderStyle="None" accept="image/png, image/jpeg,image/jpeg,image/gif"/><br />
                        <asp:Label ID="Label10" runat="server" Text="<%=localize.LogoLimit%>" style="margin-right: 10px;" Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label25" runat="server" Text="<%=localize.Banner%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload8" runat="server" CssClass="dlist" BorderStyle="None" accept="image/png, image/jpeg,image/jpeg,image/gif"/><br />
                        <asp:Label ID="Label26" runat="server" Text="<%=localize.BannerLimit%>" style="margin-right: 10px;" Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label9" runat="server" Text="<%=localize.Images%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept="image/png, image/jpeg,image/jpeg,image/gif"/><br />
                        <asp:Label ID="Label11" runat="server" Text="<%=localize.ImagesLimit%>" Font-Size="Small"></asp:Label><br /><br />
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Video" CssClass="textbox"></asp:TextBox><br /><br />
                        <div class="tip">
                            <i class="bi bi-star" style="font-size: 30px; margin-right: 10px"></i>
                            <asp:Label ID="Label14" runat="server" Text="<%=localize.Support3OS%>"></asp:Label>
                        </div>
                    </div>
                    <div id="appupload" runat="server">
                        <asp:TextBox ID="TextBox6" runat="server" placeholder="<%=localize.VersionNumber%>" CssClass="textbox"></asp:TextBox><br />
                        <asp:Label ID="Label12" runat="server" Text="<%=localize.FilesForWindows%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".zip, .exe"/><br />
                        <asp:Label ID="Label13" runat="server" Text='<%=localize.FileTypeWindows%>' Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label15" runat="server" Text="<%=localize.FilesForLinux%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload3" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".zip, .flatpakref"/><br />
                        <asp:Label ID="Label16" runat="server" Text='<%=localize.FileTypeLinux%>' Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label17" runat="server" Text="<%=localize.FilesForMacOS%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload4" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".zip, .dmg"/><br />
                        <asp:Label ID="Label18" runat="server" Text='<%=localize.FileTypeMacOS%>' Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label19" runat="server" Text="<%=localize.FilesForBSD%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload5" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".zip"/><br />
                        <asp:Label ID="Label20" runat="server" Text='<%=localize.FileTypeOther%>' Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label21" runat="server" Text="<%=localize.FilesForHaiku%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload6" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".zip"/><br />
                        <asp:Label ID="Label22" runat="server" Text='<%=localize.FileTypeOther%>' Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label23" runat="server" Text="<%=localize.FilesForAndroid%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload7" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".zip"/><br />
                        <asp:Label ID="Label24" runat="server" Text='<%=localize.FileTypeOther%>' Font-Size="Small"></asp:Label>
                    </div>
                    <div class="att">
                        <i class="bi bi-exclamation-octagon" style="font-size: 30px; margin-right: 10px; margin-left: 10px"></i>
                        <asp:Label ID="Label27" runat="server" Text="<%=localize.BetaUnpaidWarning%>" Font-Size="Medium"></asp:Label>
                    </div>
                    <asp:Button ID="Button4" runat="server" Text="<%=localize.Save%>" class="btn btn-light btn-lg mb-3" style="color: #9147ff !important; margin-right: 20px" OnClick="AppSave"/>
                    <asp:Button ID="Button5" runat="server" Text="<%=localize.Publish%>" class="btn btn-light btn-lg mb-3" style="color: white !important; background-color: #9147ff;" OnClick="AppPublish"/>
                </div>
           </div>

////////////////////////
            <%--Games--%>
            <div id="games" runat="server" class="products">
                <asp:Button ID="Button2" runat="server" Text="<%=localize.CreateGame%>" class="more" style="float:right;  margin-top: 10px !important" OnClick="ShareGames"/>
                <div id="gamestext" runat="server" style="font-size:22px; margin-left: 20px;"><asp:Literal runat="server" Text="<%=localize.MyGames%>" /></div>
                <asp:Panel ID="nomoregame" runat="server"  class="att">
                    <i class="bi bi-exclamation-octagon" style="font-size: 30px; margin-right: 10px; margin-left: 10px"></i>
                    <asp:Label ID="Label54" runat="server" Text="<%=localize.GameLimit%>" Font-Size="Medium"></asp:Label>
                </asp:Panel>
                <asp:Repeater runat="server" ID="Game_Data">
                    <ItemTemplate>
                        <a href='/devs/panel/edit/<%# Eval("ID") %>' class="pro_link">
                            <div class="product_row">
                                <img src='/Upload/Images/<%# Eval("Logo") %>' class="logo" />
                                <div class="row_info">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Size="X-Large"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Developer") %>' Font-Size="Medium" ForeColor="Gray"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Genre") %>' Font-Size="Small" ForeColor="Gray"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("AppStatus") %>' Font-Size="Large"></asp:Label>
                                </div>               
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
                <div id="share_game" runat="server" style="margin-left: 50px">
                    <asp:Button ID="Button13" runat="server" Text="<%=localize.Edit%>" class="more" style="" OnClick="Edit_Click"/>
                    <asp:Button ID="Button14" runat="server" Text="<%=localize.Versions%>" class="more" OnClick="Version_Click"/>
                    <div id="game_details" runat="server">
                        <asp:Label ID="Label28" runat="server" Text="<%=localize.PublishGame%>" style="font-size:22px;"></asp:Label><br />
                        <asp:Label ID="Label30" runat="server" Text="<%=localize.ApplyForGame%>"></asp:Label>
                        <asp:Label ID="Label55" runat="server" Text="<%=localize.UpdateGame%>" style="font-size:22px;"></asp:Label><br />
                        <asp:Label ID="Label56" runat="server" Text="<%=localize.ApplyForUpdate%> "></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="<%=localize.GameName%>" CssClass="textbox"></asp:TextBox>
                        <textarea id="TextArea2" runat="server" cols="20" rows="2" placeholder="<%=localize.GameDescription%>" class="textbox" style="margin-bottom: 20px;"></textarea><br />
                        <asp:Label ID="Label31" runat="server" Text="<%=localize.GameGenre%>" style="margin-right: 10px;"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" CssClass="dlist" runat="server">
                            <asp:ListItem Value="Action" Text="<%=localize.GenreAction%>"></asp:ListItem>
                            <asp:ListItem Value="Adventure" Text="<%=localize.GenreAdventure%>"></asp:ListItem>
                            <asp:ListItem Value="Horror" Text="<%=localize.GenreHorror%>"></asp:ListItem>
                            <asp:ListItem Value="Puzzle" Text="<%=localize.GenrePuzzle%>"></asp:ListItem>
                            <asp:ListItem Value="Simulation" Text="<%=localize.GenreSimulation%>"></asp:ListItem>
                            <asp:ListItem Value="RPG" Text="<%=localize.GenreRPG%>"></asp:ListItem>
                            <asp:ListItem Value="Strategy" Text="<%=localize.GenreStrategy%>"></asp:ListItem>
                            <asp:ListItem Value="Sport" Text="<%=localize.GenreSport%>"></asp:ListItem>
                            <asp:ListItem Value="MMO" Text="<%=localize.GenreMMO%>"></asp:ListItem>
                            <asp:ListItem Value="Card Game" Text="<%=localize.GenreCardGame%>"></asp:ListItem>
                            <asp:ListItem Value="Educational" Text="<%=localize.GenreEducational%>"></asp:ListItem>
                            <asp:ListItem Value="Anime" Text="<%=localize.GenreAnime%>"></asp:ListItem>
                            <asp:ListItem Value="Fight" Text="<%=localize.GenreFight%>"></asp:ListItem>
                            <asp:ListItem Value="Platformer" Text="<%=localize.GenrePlatformer%>"></asp:ListItem>
                            <asp:ListItem Value="Visual Novel" Text="<%=localize.GenreVisualNovel%>"></asp:ListItem>
                            <asp:ListItem Value="Survival" Text="<%=localize.GenreSurvival%>"></asp:ListItem>
                            <asp:ListItem Value="Racing" Text="<%=localize.GenreRacing%>"></asp:ListItem>
                            <asp:ListItem Value="NSFW" Text="<%=localize.GenreNSFW%>"></asp:ListItem>
                            <asp:ListItem Value="Other" Text="<%=localize.GenreOther%>"></asp:ListItem>
                        </asp:DropDownList><br /><br />
                        <asp:Label ID="Label32" runat="server" Text="<%=localize.GameStatus%>" style="margin-right: 10px;"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" CssClass="dlist" runat="server">
                            <asp:ListItem Text="<%=localize.StatusRelease%>" Value="Release"></asp:ListItem>
                            <asp:ListItem Text="<%=localize.StatusBeta%>" Value="Beta"></asp:ListItem>
                            <asp:ListItem Text="<%=localize.StatusIndev%>" Value="In-development"></asp:ListItem>
                        </asp:DropDownList><br /><br />
                        <asp:Label ID="Label33" runat="server" Text="<%=localize.Logo%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload9" runat="server" CssClass="dlist" BorderStyle="None" accept="image/png, image/jpeg,image/jpeg,image/gif"/><br />
                        <asp:Label ID="Label34" runat="server" Text="<%=localize.LogoLimit%>" style="margin-right: 10px;" Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label35" runat="server" Text="<%=localize.Banner%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload10" runat="server" CssClass="dlist" BorderStyle="None" accept="image/png, image/jpeg,image/jpeg,image/gif"/><br />
                        <asp:Label ID="Label36" runat="server" Text="<%=localize.BannerLimit%>" style="margin-right: 10px;" Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label37" runat="server" Text="<%=localize.Images%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload11" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept="image/png, image/jpeg,image/jpeg,image/gif"/><br />
                        <asp:Label ID="Label38" runat="server" Text="<%=localize.ImagesLimit%>" Font-Size="Small"></asp:Label><br /><br />
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Video" CssClass="textbox"></asp:TextBox><br /><br />
                        <div class="tip">
                            <i class="bi bi-star" style="font-size: 30px; margin-right: 10px"></i>
                            <asp:Label ID="Label39" runat="server" Text="<%=localize.Support3OS%>"></asp:Label>
                        </div>
                    </div>
                    <div id="project_upload" runat="server">
                        <asp:TextBox ID="TextBox7" runat="server" placeholder="<%=localize.VersionNumber%>" CssClass="textbox"></asp:TextBox><br />
                        <asp:Label ID="Label40" runat="server" Text="<%=localize.FilesForWindows%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload12" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".zip, .exe"/><br />
                        <asp:Label ID="Label41" runat="server" Text='<%=localize.FileTypeWindows%>' Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label42" runat="server" Text="<%=localize.FilesForLinux%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload13" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".zip, .flatpakref"/><br />
                        <asp:Label ID="Label43" runat="server" Text='<%=localize.FileTypeLinux%>' Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label44" runat="server" Text="<%=localize.FilesForMacOS%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload14" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".zip, .dmg"/><br />
                        <asp:Label ID="Label45" runat="server" Text='<%=localize.FileTypeMacOS%>' Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label46" runat="server" Text="<%=localize.FilesForBSD%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload15" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".zip"/><br />
                        <asp:Label ID="Label47" runat="server" Text='<%=localize.FileTypeOther%>' Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label48" runat="server" Text="<%=localize.FilesForHaiku%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload16" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".zip"/><br />
                        <asp:Label ID="Label49" runat="server" Text='<%=localize.FileTypeOther%>' Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label50" runat="server" Text="<%=localize.FilesForAndroid%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload17" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".zip"/><br />
                        <asp:Label ID="Label51" runat="server" Text='<%=localize.FileTypeOther%>' Font-Size="Small"></asp:Label>
                    </div>
                    <div class="att">
                        <i class="bi bi-exclamation-octagon" style="font-size: 30px; margin-right: 10px; margin-left: 10px"></i>
                        <asp:Label ID="Label52" runat="server" Text="<%=localize.BetaUnpaidWarning%>" Font-Size="Medium"></asp:Label>
                    </div>
                    <asp:Panel ID="gamedanger_panel" CssClass="danger" runat="server">
                        <i class="bi bi-exclamation-octagon" style="font-size: 30px; margin-right: 10px; margin-left: 10px"></i>
                        <asp:Label ID="GameUyarı" runat="server" Text="" Font-Size="Medium"></asp:Label>
                    </asp:Panel>
                    <asp:Button ID="Button3" runat="server" Text="<%=localize.Save%>" class="btn btn-light btn-lg mb-3" style="color: #9147ff !important; margin-right: 20px" OnClick="GameSave"/>
                    <asp:Button ID="Button6" runat="server" Text="<%=localize.Publish%>" class="btn btn-light btn-lg mb-3" style="color: white !important; background-color: #9147ff;" OnClick="GamePublish"/>
                </div>
           </div>


            <%--APIs--%>
            <div id="apis" runat="server" class="products">
                <asp:Button ID="Button8" runat="server" Text="<%=localize.CreateAPI%>" class="more" style="float:right;  margin-top: 10px !important" OnClick="CreateAPI"/>
                <div id="API_text" runat="server" style="font-size:22px; margin-left: 20px;"><asp:Literal runat="server" Text="<%=localize.APIs%>" /></div>
             
             
                <asp:Repeater runat="server" ID="API_Data">
                    <ItemTemplate>
                        <a href='/devs/panel/edit/<%# Eval("ID") %>' class="pro_link">
                            <div class="product_row">
                                <img src='/images/artadov4.png' class="logo" />
                                <div class="row_info">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Size="X-Large"></asp:Label>
                                    
                                </div>               
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
                <div id="api_create" runat="server" style="margin-left: 50px">
                    <asp:Label ID="Label64" runat="server" Text="<%=localize.CreateAPI%>" style="font-size:22px;"></asp:Label><br />
                    <asp:Label ID="Label65" runat="server" Text="<%=localize.APIDetails%>" style="font-size:22px;"></asp:Label><br />
                    <asp:Label ID="Label66" runat="server" Text="<%=localize.CreateAPILong%>"></asp:Label>
                    <asp:Label ID="Label67" runat="server" Text="<%=localize.YourAPIDetails%>"></asp:Label>
                    <asp:Panel ID="APIdanger" CssClass="danger" runat="server">
                        <i class="bi bi-exclamation-octagon" style="font-size: 30px; margin-right: 10px; margin-left: 10px"></i>
                        <asp:Label ID="Label68" runat="server" Text="" Font-Size="Medium"></asp:Label>
                    </asp:Panel>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="<%=localize.APIName%>" CssClass="textbox"></asp:TextBox><br />
                    <asp:TextBox ID="APIurl" runat="server" placeholder="<%=localize.URL%>" CssClass="textbox"></asp:TextBox><br /><br />
                    <asp:Label ID="Label69" runat="server" Text="<%=localize.APIType%>" style="margin-right: 10px;"></asp:Label>
                    <asp:DropDownList ID="APItype" CssClass="dlist" runat="server">
                        <asp:ListItem Value="MyAcc" Text="MyAccount API"></asp:ListItem>
                    </asp:DropDownList><br /><br />
                    <asp:Button ID="Button10" runat="server" Text="<%=localize.Save%>" class="btn btn-light btn-lg mb-3" style="color: white !important; background-color: #9147ff;" OnClick="APIPublish"/>
                </div>
           </div>


            <%--Version Control Panel--%>
            <div id="ver_con" runat="server" class="products">
                <asp:Button ID="Button9" runat="server" Text="<%=localize.CreateVersion%>" class="more" style="float:right;  margin-top: 10px !important" OnClick="CreateVersion"/>
                <div id="ver_txt" runat="server" style="font-size:22px; margin-left: 20px;"><asp:Literal runat="server" Text="<%=localize.Versions%>" /></div>
                <asp:Panel ID="nomore_ver" runat="server"  class="att">
                    <i class="bi bi-exclamation-octagon" style="font-size: 30px; margin-right: 10px; margin-left: 10px"></i>
                    <asp:Label ID="Label63" runat="server" Text="<%=localize.WaitForUpdateApproval%>" Font-Size="Medium"></asp:Label>
                </asp:Panel>
                <asp:Repeater runat="server" ID="versionsdata">
                    <ItemTemplate>
                        <div class="pro_link">
                            <div class="product_row">
                                <asp:Image ID="ver_image" runat="server" class="logo"/>
                                <div class="row_info">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("VersionNum") %>' Font-Size="X-Large"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="Gray"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Status") %>' Font-Size="Medium" ForeColor="Gray"></asp:Label>
                                </div>               
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
           </div>

            <%--Workshop--%>
            <div id="Workshop" runat="server" class="products">
                <asp:Button ID="Button15" runat="server" Text="<%=localize.CreateProject%>" class="more" style="float:right;  margin-top: 10px !important" OnClick="ShareWorkshop"/>
                <div id="Workshop_Text" runat="server" style="font-size:22px; margin-left: 20px;">Workshop</div>
                <asp:Repeater runat="server" ID="workshop_projects">
                    <ItemTemplate>
                        <a href='/devs/panel/edit/<%# Eval("ID") %>' class="pro_link">
                            <div class="product_row">
                                <img src='/Upload/Images/<%# Eval("Logo") %>' class="logo" />
                                <div class="row_info">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Size="X-Large"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Developer") %>' Font-Size="Medium" ForeColor="Gray"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Genre") %>' Font-Size="Small" ForeColor="Gray"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("AppStatus") %>' Font-Size="Large"></asp:Label>
                                </div>               
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
                <div id="shareproject" runat="server" style="margin-left: 50px">
                    <asp:Button ID="Button16" runat="server" Text="<%=localize.Edit%>" class="more" style="" OnClick="Edit_Click"/>
                    <asp:Button ID="Button17" runat="server" Text="<%=localize.Versions%>" class="more" OnClick="Version_Click"/>
                    <div id="project_details" runat="server">
                        <asp:Label ID="Label73" runat="server" Text="<%=localize.PublishProject%>" style="font-size:22px;"></asp:Label><br />
                        <asp:Label ID="Label74" runat="server" Text="<%=localize.UpdateProject%>" style="font-size:22px;"></asp:Label><br />
                        <asp:Label ID="Label75" runat="server" Text="<%=localize.ApplyForProject%>"></asp:Label>
                        <asp:Label ID="Label76" runat="server" Text="<%=localize.ApplyForUpdate%>"></asp:Label>
                        <asp:Panel ID="Panel3" CssClass="danger" runat="server">
                            <i class="bi bi-exclamation-octagon" style="font-size: 30px; margin-right: 10px; margin-left: 10px"></i>
                            <asp:Label ID="Label77" runat="server" Text="" Font-Size="Medium"></asp:Label>
                        </asp:Panel>
                        <asp:TextBox ID="TextBox8" runat="server" placeholder="<%=localize.ProjectName%>" CssClass="textbox"></asp:TextBox>
                        <textarea id="TextArea3" runat="server" cols="20" rows="2" placeholder="<%=localize.ProjectDescription%>" class="textbox" style="margin-bottom: 20px;"></textarea><br />
                        <asp:Label ID="Label78" runat="server" Text="<%=localize.ProjectType%>" style="margin-right: 10px;"></asp:Label>
                        <asp:DropDownList ID="DropDownList3" CssClass="dlist" runat="server">
                            <asp:ListItem Value="Theme" Text="<%=localize.ThemeType%>"></asp:ListItem>
                            <asp:ListItem Value="Extension" Text="<%=localize.ExtensionType%>"></asp:ListItem>
                            <asp:ListItem Value="Logo" Text="<%=localize.LogoType%>"></asp:ListItem>
                        </asp:DropDownList><br /><br />
                        <asp:Label ID="Label80" runat="server" Text="<%=localize.Logo%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload19" runat="server" CssClass="dlist" BorderStyle="None" accept="image/png, image/jpeg,image/jpeg,image/gif"/><br />
                        <asp:Label ID="Label81" runat="server" Text="<%=localize.LogoLimit%>" style="margin-right: 10px;" Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label82" runat="server" Text="<%=localize.Banner%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload20" runat="server" CssClass="dlist" BorderStyle="None" accept="image/png, image/jpeg,image/jpeg,image/gif"/><br />
                        <asp:Label ID="Label83" runat="server" Text="<%=localize.BannerLimit%>" style="margin-right: 10px;" Font-Size="Small"></asp:Label><br /><br />
                        <asp:Label ID="Label84" runat="server" Text="<%=localize.Images%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload21" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept="image/png, image/jpeg,image/jpeg,image/gif"/><br />
                        <asp:Label ID="Label85" runat="server" Text="<%=localize.ImagesLimit%>" Font-Size="Small"></asp:Label><br /><br />
                        <asp:TextBox ID="TextBox9" runat="server" placeholder="<%=localize.SourceCode%>" CssClass="textbox"></asp:TextBox><br /><br />
                    </div>
                    <div id="p_upload" runat="server">
                        <asp:TextBox ID="TextBox10" runat="server" placeholder="<%=localize.VersionNumber%>" CssClass="textbox"></asp:TextBox><br />
                        <asp:Label ID="Label87" runat="server" Text="<%=localize.ExtensionFile%>" style="margin-right: 10px;"></asp:Label>
                        <asp:FileUpload ID="FileUpload22" runat="server" AllowMultiple="true" CssClass="dlist" BorderStyle="None" accept=".css, .js, image/png, image/jpeg,image/jpeg"/><br />
                        <asp:Label ID="Label88" runat="server" Text='<%=localize.ExtensionLimit%>' Font-Size="Small"></asp:Label><br /><br />
                    </div>
                    <asp:Button ID="Button18" runat="server" Text="<%=localize.Save%>" class="btn btn-light btn-lg mb-3" style="color: #9147ff !important; margin-right: 20px" OnClick="WorkshopSave"/>
                    <asp:Button ID="Button19" runat="server" Text="<%=localize.Publish%>" class="btn btn-light btn-lg mb-3" style="color: white !important; background-color: #9147ff;" OnClick="WorkshopPublish"/>
                </div>
           </div>
            
            <%--Settings--%>
            <div id="settings" runat="server" class="products">
                <div id="edit" runat="server" style="margin-left: 50px">
                    <asp:Label ID="Label58" runat="server" Text="<%=localize.AccountSettings%>" style="font-size:22px;"></asp:Label><br />
                    <asp:Image id="pfp" runat="server" CssClass="profile"></asp:Image><br />
                    <asp:FileUpload ID="upload" runat="server" CssClass="dlist" BorderStyle="None" accept="image/png, image/jpeg,image/jpeg,image/gif"/><br />
                    <asp:TextBox ID="email" runat="server" placeholder="<%=localize.Email%>" CssClass="textbox"></asp:TextBox><br />
                    <asp:TextBox ID="username" runat="server" placeholder="<%=localize.Username%>" CssClass="textbox"></asp:TextBox><br />
                    <asp:TextBox ID="password" runat="server" placeholder="<%=localize.Password%>" TextMode="Password" CssClass="textbox"></asp:TextBox><br />
                    <textarea id="bio" runat="server" cols="20" rows="2" placeholder="<%=localize.Biography%>" class="textbox" style="margin-bottom: 20px;"></textarea><br /><br /><br />
                    <div id="att" runat="server" class="att">
                        <i class="bi bi-exclamation-octagon" style="font-size: 30px; margin-right: 10px; margin-left: 10px"></i>
                        <asp:Label ID="Label59" runat="server" Text="<%=localize.BetaUnpaidWarning%>" Font-Size="Medium"></asp:Label>
                    </div>
                    <asp:Panel ID="Panel1" CssClass="danger" runat="server">
                        <i class="bi bi-exclamation-octagon" style="font-size: 30px; margin-right: 10px; margin-left: 10px"></i>
                        <asp:Label ID="Label60" runat="server" Text="<%=localize.UsernameOrEmailTaken%>" Font-Size="Medium"></asp:Label>
                    </asp:Panel>
                    <asp:Button ID="Button7" runat="server" Text="<%=localize.Save%>" class="btn btn-light btn-lg mb-3" style="color: #9147ff !important; margin-right: 20px" OnClick="AccUpdate"/>
                </div>
                
               <div id="valid" runat="server" class="context">
                     <asp:Label id="validtext" runat="server" Text="<%=localize.ConfirmEmail%>" Font-Size="Large" Style="display:block; margin-top:50px; margin-bottom: 20px;"></asp:Label>
                     <asp:Label id="exp" runat="server" Text="<%=localize.EnterVerificationCode%>" Font-Size="Small" Style="display:block; margin-bottom: 20px;"></asp:Label>
                     <asp:TextBox id="codebar" runat="server" CssClass="textbox" placeholder="<%=localize.EnterCode%>" TextMode="Number"></asp:TextBox>
                     <asp:Button id="confirm" runat="server" CssClass="button" Text="<%=localize.Confirm%>Confirm" OnClick="CodeAccept"></asp:Button>
                     <asp:Button id="resend" runat="server" CssClass="emptybutton button" Text="<%=localize.Resend%>Resend" OnClick="Resend"></asp:Button>
                     <asp:Label id="warn_v" runat="server" Text="<%=localize.CodeIncorrect%>" Font-Size="Small" ForeColor="#E74646" Style="display:block; margin-top:50px; margin-bottom: 20px;"></asp:Label>
                </div>
            </div>
            
            <%--Beta Warning--%>
            <div id="Soon" runat="server" class="products">
                <div class="tip" style="margin-left: auto; margin-right: auto"> 
                    <i class="bi bi-exclamation-octagon" style="font-size: 30px; margin-right: 10px; margin-left: 10px"></i>
                    <asp:Label ID="Label57" runat="server" Text="<%=localize.BetaWarning%>" Font-Size="Medium"></asp:Label>
                </div>
            </div>
      </div>
    </form>
</body>
</html>

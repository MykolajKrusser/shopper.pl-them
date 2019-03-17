{include file='header.tpl'}
<body{if $body_id} id="{$body_id|escape}"{/if}{if $body_class} class="{$body_class|escape}"{/if}>
    {include file='body_head.tpl'}
    <div class="main row">
        <div class="innermain container">
            <div class="s-row">
                {if 0 < $boxes_left_side|@count}
                    <div class="leftcol large s-grid-3">
                        {dynamic}
                            {foreach from=$boxes_left_side item=v key=k}
                                {box file="../boxes/$v/box.tpl" box="$k"}
                            {/foreach}
                        {/dynamic}
                    </div>
                {/if}

                <div class="centercol {if ($boxes_left_side|@count == 0) and ($boxes_right_side|@count == 0)}s-grid-12{elseif 0 != $boxes_left_side|@count and $boxes_right_side|@count != 0}s-grid-6{else}s-grid-9{/if}">
                    {dynamic}
                        {foreach from=$boxes_top_side item=v key=k}
                            {box file="../boxes/$v/box.tpl" box="$k"}
                        {/foreach}
                    {/dynamic}

                    {if $articles && count($articles) > 0}
                        {include file='news/listofarticles.tpl'}
                    {/if}

                    {if 'products' == $skin_settings->main->mode && count($products)}
                        <div class="box" id="box_mainproducts">
                            <div class="boxhead-simple">
                                <h1>popularne produkty</h1>
                                <p>Zobacz co najczęściej wybierają nasi Klienci</p>
                                <div class="boxhead-simple-decor">
                                    <div class="boxhead-simple-decor-left"></div>
                                    <div class="boxhead-simple-decor-pic"></div>
                                    <div class="boxhead-simple-decor-right"></div>
                                </div>
                            </div>
                            
                            <div class="innerbox">
                                    {include file='product/tableofproducts.tpl'}
                                    {if $products->getTotalItemCount() > $products->getItemCountPerPage()}
                                        <div class="floatcenterwrap row">
                                            {include file='paginator.tpl'}
                                        </div>
                                    {/if}
                            </div>
                        </div>
                    {/if}

                    <div class="brandsBox">
                        <div class="brandsItem" style="background: url(/skins/user/rwd_shoper_1/images/b1.png) center no-repeat;"></div>
                        <div class="brandsItem" style="background: url(/skins/user/rwd_shoper_1/images/b2.png) center no-repeat;"></div>
                        <div class="brandsItem" style="background: url(/skins/user/rwd_shoper_1/images/b3.png) center no-repeat;"></div>
                        <div class="brandsItem" style="background: url(/skins/user/rwd_shoper_1/images/b4.png) center no-repeat;"></div>
                        <div class="brandsItem" style="background: url(/skins/user/rwd_shoper_1/images/b2.png) center no-repeat;"></div>
                    </div>

                    <div id="newsletter">
                        <div>
                            <h2>newsletter</h2>
                            <div class="decor"></div>
                            <p>bądź na bieżąco</p>
                        </div>
                        <form>
                            <input type="text" placeholder="Twój adres e-mail"/>
                            <button>zapisz się</button>
                        </form>
                    </div>
                    <div class="boxhead-simple">
                        <h1>Nowości w naszym asortymencie</h1>
                        <p>Najnowsze produkty w ofercie</p>
                        <div class="boxhead-simple-decor">
                            <div class="boxhead-simple-decor-left"></div>
                            <div class="boxhead-simple-decor-pic"></div>
                            <div class="boxhead-simple-decor-right"></div>
                        </div>
                    </div>
                    {dynamic}
                        {foreach from=$boxes_bottom_side item=v key=k}
                            {box file="../boxes/$v/box.tpl" box="$k"}
                        {/foreach}
                    {/dynamic}
                </div>

                {if 0 < $boxes_right_side|@count}
                    <div class="rightcol large s-grid-3">
                        {dynamic}
                            {foreach from=$boxes_right_side item=v key=k}
                                {box file="../boxes/$v/box.tpl" box="$k"}
                            {/foreach}
                        {/dynamic}
                    </div>
                {/if}
            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="footerLinks">
            <div class="footerLinks_link">
                <h3>moje konto</h3>
                <a href="#">Twoje zamówienia</a>
                <a href="#">Ustawienia konta</a>
                <a href="#">Przechowalnia</a>
            </div>
            <div class="footerLinks_link">
                <h3>Pomoc</h3>
                <a href="#">Dostawa i płatności</a>
                <a href="#">Rozmiary odzieży</a>
                <a href="#">FAQ</a>
            </div>
            <div class="footerLinks_link">
                <h3>Gwarancja</h3>
                <a href="#">Gwarancja</a>
                <a href="#">Wymiana </a>
            </div>
            <div class="footerLinks_link">
                <h3>O firmie</h3>
                <a href="#">O nas</a>
                <a href="#">Kontakt</a>
                <a href="#">Regulamin</a>
                
            </div>
        </div>
        <div class="footerLogo">
            <div class="decor"></div>
            <div class="logo"></div>
            <div class="decor"></div>
        </div>
        <div class="footerContact">
            <div class="footerContact_left">
                <div>
                    <img src="/skins/user/rwd_shoper_1/images/phone.png"/>
                    <a href="tel:+48553444444">(+48)553 444 444</a>
                </div>
                <div>
                    <img src="/skins/user/rwd_shoper_1/images/email.png"/>
                    <a href="mailto:kontakt@freedom.pl">kontakt@freedom.pl</a>
                </div>
            </div>
            <div class="decor"></div>
            <div class="footerContact_right">
                <div>
                    <img src=""/>
                    <a href="https://www.shoper.pl/">Sklep internetowy Shoper.pl</a>
                </div>
                <div>
                    <a href="tel:+48553444444">Created by: </a>
                    <img src="/skins/user/rwd_shoper_1/images/brandFooter.png"/>
                </div>
            </div>
        </div>
        <div class="footerSocial">
            <a href="#" style="background: url(/skins/user/rwd_shoper_1/images/facebook.png) center no-repeat;"></a>
            <a href="#" style="background: url(/skins/user/rwd_shoper_1/images/p.png) center no-repeat;"></a>
            <a href="#" style="background: url(/skins/user/rwd_shoper_1/images/insta.png) center no-repeat;"></a>
        </div>
    </footer>

    <div class="up">
        <a href="#" title="{translate key="up"}" class="btn fa fa-2x fa-angle-up">
            <img src="{baseDir}/public/images/1px.gif" alt="" class="px1" />
            <span>{translate key="up"}</span>
        </a>
    </div>
</body>
</html>

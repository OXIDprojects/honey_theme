[{block name="footer_main"}]
    [{assign var="blShowFullFooter" value=$oView->showSearch()}]
    [{assign var="blFullwidth" value=$oViewConf->getViewThemeParam('blFullwidthLayout')}]
    [{$oView->setShowNewsletter($oViewConf->getViewThemeParam('blFooterShowNewsletterForm'))}]

    [{if $oxcmp_user}]
        [{assign var="force_sid" value=$oView->getSidForWidget()}]
    [{/if}]

    <footer id="footer">
        <div class="[{if $blFullwidth}]container[{else}]container-fluid[{/if}]">
            <div class="row mt-2 mb-2 mt-lg-4 mb-lg-4">
                <div class="col-12 col-md-8">
                       <div class="row footer-left-part">
                            [{block name="dd_footer_servicelist"}]
                                <section class="col-12 [{if $blShowFullFooter}]col-sm-3[{else}]col-sm-6[{/if}] footer-box footer-box-service">
                                    <div class="h4 footer-box-title">[{oxmultilang ident="SERVICES"}]</div>
                                    <div class="footer-box-content">
                                        [{block name="dd_footer_servicelist_inner"}]
                                            [{oxid_include_widget cl="oxwServiceList" noscript=1 nocookie=1 force_sid=$force_sid}]
                                        [{/block}]
                                    </div>
                                </section>
                            [{/block}]
                            [{block name="dd_footer_information"}]
                                <section class="col-12 [{if $blShowFullFooter}]col-sm-3[{else}]col-sm-6[{/if}] footer-box footer-box-information">
                                    <div class="h4 footer-box-title">[{oxmultilang ident="INFORMATION"}]</div>
                                    <div class="footer-box-content">
                                        [{block name="dd_footer_information_inner"}]
                                            [{oxid_include_widget cl="oxwInformation" noscript=1 nocookie=1 force_sid=$force_sid}]
                                        [{/block}]
                                    </div>
                                </section>
                            [{/block}]
                            [{if $blShowFullFooter}]
                                [{block name="dd_footer_manufacturerlist"}]
                                    <section class="col-12 col-sm-3 footer-box footer-box-manufacturers">
                                        <div class="h4 footer-box-title">[{oxmultilang ident="OUR_BRANDS"}]</div>
                                        <div class="footer-box-content">
                                            [{block name="dd_footer_manufacturerlist_inner"}]
                                                [{oxid_include_widget cl="oxwManufacturerList" _parent=$oView->getClassName() noscript=1 nocookie=1}]
                                            [{/block}]
                                        </div>
                                    </section>
                                [{/block}]
                                [{block name="dd_footer_categorytree"}]
                                    <section class="col-12 col-sm-3 footer-box footer-box-categories">
                                        <div class="h4 footer-box-title">[{oxmultilang ident="CATEGORIES"}]</div>
                                        <div class="footer-box-content">
                                            [{block name="dd_footer_categorytree_inner"}]
                                                [{oxid_include_widget cl="oxwCategoryTree" _parent=$oView->getClassName() sWidgetType="footer" noscript=1 nocookie=1}]
                                            [{/block}]
                                        </div>
                                    </section>
                                [{/block}]
                            [{/if}]
                        </div>

                </div>
                <div class="col-12 col-md-4">
                    <div class="row">
                        <div class="footer-right-part">
                            <div class="col-6 col-xs-offset-3 col-sm-12 col-sm-offset-0">
                                [{if $oView->showNewsletter()}]
                                    <section class="footer-box footer-box-newsletter">
                                        <div class="h4 footer-box-title">[{oxmultilang ident="NEWSLETTER"}]</div>
                                        <div class="footer-box-content">
                                            [{block name="dd_footer_newsletter"}]
                                                <p class="small">[{oxmultilang ident="FOOTER_NEWSLETTER_INFO"}]</p>
                                                [{include file="widget/footer/newsletter.tpl"}]
                                            [{/block}]
                                        </div>
                                    </section>
                                [{/if}]

                                [{block name="footer_social"}][{/block}]

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="spacer"></div>

            [{* <<START>> Social Links *}]
            [{block name="dd_footer_social_links"}]
                [{if $oViewConf->getViewThemeParam('sFacebookUrl') || $oViewConf->getViewThemeParam('sGooglePlusUrl') || $oViewConf->getViewThemeParam('sTwitterUrl') || $oViewConf->getViewThemeParam('sYouTubeUrl') || $oViewConf->getViewThemeParam('sBlogUrl')}]
                    <div class="social-links">
                        <div class="row">
                            <section class="col-12">
                                <div class="text-center m-2 m-lg-4">
                                    [{block name="dd_footer_social_links_inner"}]
                                        <ul class="list-inline">
                                            [{block name="dd_footer_social_links_list"}]
                                                [{if $oViewConf->getViewThemeParam('sFacebookUrl')}]
                                                    <li class="d-inline-block m-2">
                                                        <a target="_blank" href="[{$oViewConf->getViewThemeParam('sFacebookUrl')}]">
                                                            <i class="fab fa-facebook"></i> <span class="d-none d-sm-inline-block">Facebook</span>
                                                        </a>

                                                [{/if}]
                                                [{if $oViewConf->getViewThemeParam('sGooglePlusUrl')}]
                                                    <li class="d-inline-block m-2">
                                                        <a target="_blank" href="[{$oViewConf->getViewThemeParam('sGooglePlusUrl')}]">
                                                            <i class="fab fa-google-plus-square"></i> <span class="d-none d-sm-inline-block">Google+</span>
                                                        </a>

                                                [{/if}]
                                                [{if $oViewConf->getViewThemeParam('sTwitterUrl')}]
                                                    <li class="d-inline-block m-2">
                                                        <a target="_blank" href="[{$oViewConf->getViewThemeParam('sTwitterUrl')}]">
                                                            <i class="fab fa-twitter"></i> <span  class="d-none d-sm-inline-block">Twitter</span>
                                                        </a>

                                                [{/if}]
                                                [{if $oViewConf->getViewThemeParam('sYouTubeUrl')}]
                                                    <li class="d-inline-block m-2">
                                                        <a target="_blank" href="[{$oViewConf->getViewThemeParam('sYouTubeUrl')}]">
                                                            <i class="fab fa-youtube-square"></i> <span  class="d-none d-sm-inline-block">YouTube</span>
                                                        </a>

                                                [{/if}]
                                                [{if $oViewConf->getViewThemeParam('sBlogUrl')}]
                                                    <li class="d-inline-block m-2">
                                                        <a target="_blank" href="[{$oViewConf->getViewThemeParam('sBlogUrl')}]">
                                                            <i class="fab fa-wordpress"></i> <span  class="d-none d-sm-inline-block">Blog</span>
                                                        </a>
                                                [{/if}]
                                            [{/block}]
                                        </ul>
                                    [{/block}]
                                </div>
                            </section>
                        </div>
                    </div>
                [{/if}]
            [{/block}]
            [{* <<ENDE>> Social Links *}]
        </div>

        [{if $oView->isPriceCalculated()}]
        [{block name="layout_page_vatinclude"}]
        [{block name="footer_deliveryinfo"}]
        [{oxifcontent ident="oxdeliveryinfo" object="oCont"}]
        <div id="incVatInfo">
            [{if $oView->isVatIncluded()}]
            * <span class="deliveryInfo">[{oxmultilang ident="PLUS_SHIPPING"}]<a href="[{$oCont->getLink()}]">[{oxmultilang ident="PLUS_SHIPPING2"}]</a></span>
            [{else}]
            * <span class="deliveryInfo">[{oxmultilang ident="PLUS"}]<a href="[{$oCont->getLink()}]">[{oxmultilang ident="PLUS_SHIPPING2"}]</a></span>
            [{/if}]
        </div>
        [{/oxifcontent}]
        [{/block}]
        [{/block}]
        [{/if}]
    </footer>

    <div class="legal">
        <div class="[{if $blFullwidth}]container[{else}]container-fluid[{/if}]">
            <div class="legal-box">
                <div class="row">
                    <section class="col-sm-12">
                        [{block name="dd_footer_copyright"}]
                            [{oxifcontent ident="oxstdfooter" object="oCont"}]
                                [{$oCont->oxcontents__oxcontent->value}]
                            [{/oxifcontent}]
                        [{/block}]
                    </section>
                </div>
            </div>
        </div>

    </div>
[{/block}]

[{if $oView->isRootCatChanged()}]
    <div id="scRootCatChanged" class="popupBox corners FXgradGreyLight glowShadow">
        [{include file="form/privatesales/basketexcl.tpl"}]
    </div>
[{/if}]

<!-- Kareo CCDA Style sheet V2_1 -->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:n1="urn:hl7-org:v3"
                xmlns:n2="urn:hl7-org:v3/meta/voc"
                xmlns:voc="urn:hl7-org:v3/voc"
                xmlns:ext="urn:hl7-org:sdtc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns="http://www.w3.org/1999/xhtml"
                exclude-result-prefixes="n1 n2 voc ext xsi">

    <xsl:output method="xml" indent="yes"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
                doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" />

    <!-- CDA document -->

    <xsl:template match="n1:ClinicalDocument">
        <html lang="en">
            <head>
                <!--         <xsl:apply-templates mode="stylesheetLinks" select="."/> -->
                <title>
                    <xsl:apply-templates mode="title" select="n1:title"/>
                </title>

                <style type="text/css">
                    @media screen, print {
                    html, body, div, span, applet, object, iframe,
                    h1, h2, h3, h4, h5, h6, p, blockquote, pre,
                    a, abbr, acronym, address, big, cite, code,
                    del, dfn, em, img, ins, kbd, q, s, samp,
                    small, strike, strong, sub, sup, tt, var,
                    b, u, i, center,
                    dl, dt, dd, ol, ul, li,
                    fieldset, form, label, legend,
                    table, caption, tbody, tfoot, thead, tr, th, td,
                    article, aside, canvas, details, embed,
                    figure, figcaption, footer, header, hgroup,
                    menu, nav, output, ruby, section, summary,
                    time, mark, audio, video
                    {
                    margin: 0;
                    padding: 0;
                    border: 0;
                    font-size: 100%;
                    font: inherit;
                    vertical-align: baseline;
                    position:static;
                    }


                    article, aside, details, figcaption, figure,
                    footer, header, hgroup, img, menu, nav, section
                    {
                    display: block;
                    }

                    body
                    {
                    line-height: 1;
                    }

                    ol, ul
                    {
                    list-style-type: circle;
                    list-style-position:inside;
                    }

                    a {
                    color: #009ddc;
                    text-decoration: none;
                    }

                    a:hover, a:focus {
                    text-decoration: underline
                    }

                    .sectionHeader a {
                    color: #F3901D;
                    text-decoration: none;
                    text-transform: capitalize;
                    }

                    .toc h2 a {
                    font-size: 18px;
                    color: #F3901D;
                    cursor: arrow;
                    text-decoration: none;
                    }
                    .toc {
                    margin-bottom: 40px;
                    }

                    .toc li {
                    font-size: 14px;
                    line-height: 1.5;
                    text-transform: capitalize;
                    }

                    blockquote, q
                    {
                    quotes: none;
                    }

                    blockquote:before, blockquote:after,
                    q:before, q:after
                    {
                    content: '';
                    content: none;
                    }

                    table
                    {
                    border-collapse: collapse;
                    border-spacing:0px;
                    border-width:0px;
                    width: 100%;
                    }

                    .sectionText tbody tr:nth-child(even) {
                    background-color: #f6f6f6;
                    }

                    td[colspan="4"], .allergiesSection td:first-child, .problemsSection td:first-child, .activeProblemsSection td:first-child, .medicationsSection td:first-child, .immunizationsSection td:first-child, .medicalDevicesSection tbody th:first-child, .vitalsSection td:first-child, .vitalsSection th:first-child, .proceduresSection td:first-child, .careTeamSection td:first-child {
                    font-weight: bold;
                    }

                    .divider {
                    border-top: 1px solid #ddd;
                    color: #444;
                    }

                    tr:first-of-type td.divider {
                    border-top: none;
                    }

                    tr td.results:last-child {
                    display: none;
                    }


                    span.Bold,
                    div.Bold
                    {
                    font-weight:bold;
                    }

                    span.Italics,
                    div.Italics
                    {
                    font-style:italic;
                    }

                    span.Underline,
                    div.Underline
                    {
                    text-decoration:underline;
                    }

                    .xlabel
                    {
                    padding-right: 5px;
                    color:#999999;
                    }

                    body
                    {
                    background-color: #f6f6f6;
                    color: #888;
                    font: 11px Arial, Helvetica, sans-serif;
                    margin: 0;
                    padding: 0;
                    }

                    .theDocument {
                    background-color: #fff;
                    background-image: url('/EhrWebApp/images/login/k.png');
                    background-clip: border-box;
                    padding: 3em;
                    max-width: 980px;
                    margin: 2em auto 5em;
                    -webkit-box-shadow: 0 0 0 5px rgba(0, 0, 0, 0.04);
                    -moz-box-shadow: 0 0 0 5px rgba(0, 0, 0, 0.04);
                    -ms-box-shadow: 0 0 0 5px rgba(0, 0, 0, 0.04);
                    box-shadow: 0 0 0 5px rgba(0, 0, 0, 0.04);
                    -webkit-box-sizing: border-box;
                    -moz-box-sizing: border-box;
                    -ms-box-sizing: border-box;
                    box-sizing: border-box;
                    }

                    .theDocument div.column
                    {
                    vertical-align:top;
                    display:inline-block;
                    zoom:1;
                    *display:inline;
                    /******/
                    }

                    .customerBanner
                    {
                    margin-bottom: 14px;
                    }

                    .customerBanner .customerInfo
                    {
                    text-align: right;
                    font-weight: bold;
                    }

                    .customerBanner .providerOrganizationName
                    {
                    font-size: 1.6em;
                    min-height:1.0em;
                    }

                    .customerBanner .providerCityState, .customerBanner .providerNumber
                    {
                    font-size: 1.3em;
                    min-height: 1.0em;
                    }

                    .customerBanner .label.numberType, .customerBanner .value {
                    display: inline-block;
                    }

                    .patientBanner
                    {
                    padding: 10px;
                    }

                    .patientBanner ul
                    {
                    list-style-type: none;
                    }

                    .patientBanner .label
                    {
                    font-size:1.2em;
                    }

                    .patientBanner .value
                    {
                    font-size: 1.6em;
                    font-weight: bold;
                    }

                    .patientBanner .primaryRegion .patientLastName
                    {
                    text-transform:uppercase;
                    }



                    .patientBanner .primaryRegion .patientLastName,
                    .patientBanner .primaryRegion .patientName
                    {
                    font-size: 2.4em;
                    color:#F3901D;
                    }


                    .patientBanner .primaryRegion .patientFirstName
                    {
                    font-size: 2.4em;
                    color:#F3901D;
                    }


                    .patientBanner .primaryRegion .patientSuffix
                    {
                    font-size: 1.8em;
                    }

                    .patientBanner .primaryRegion .patientPrefix
                    {
                    font-size: 1.8em;
                    }

                    .patientBanner .mrn .label
                    {
                    font-size: 1.0em;
                    }

                    .patientBanner .mrn .value
                    {
                    font-size: 1.3em;
                    font-weight: bold;
                    }

                    .patientBanner .primaryRegion .details .ptBannerTable
                    {
                    margin-top: 14px;
                    }

                    .patientBanner .primaryRegion .preferredName .dataBlock
                    {
                    padding-right: 45px;
                    }

                    .patientBanner .primaryRegion .birthDate .dataBlock
                    {
                    padding-right: 65px;
                    }

                    .patientBanner .primaryRegion .gender .dataBlock
                    {
                    padding-right: 65px;
                    }

                    .patientBanner .primaryRegion div.mrn
                    {
                    text-align: right;
                    float:right;
                    }

                    .patientBanner div.break
                    {
                    margin: 7px 0px 7px 0px;
                    border-top-style:solid;
                    border-top-width:1px;
                    clear:right;
                    }

                    .patientBanner tr
                    {
                    margin-top: 20px;
                    }

                    .patientBanner td
                    {
                    vertical-align:top;
                    }

                    .patientBanner .secondaryRegion
                    {
                    }

                    .patientBanner .secondaryRegion .value
                    {
                    font-size:1.3em;
                    font-weight: bold;
                    }

                    .patientBanner .secondaryRegion .address .dataBlock
                    {
                    padding-right: 25px;
                    }

                    .patientBanner .secondaryRegion .address .value
                    {
                    font-weight: bold;
                    }

                    .patientBanner .secondaryRegion .telecoms .dataBlock
                    {
                    padding-right: 25px;
                    }

                    .patientBanner .secondaryRegion .demographics .dataBlock
                    {
                    padding-right: 25px;
                    margin-top: 14px;
                    }

                    .patientBanner .secondaryRegion .dataBlock
                    {
                    margin-bottom: 5px;
                    }

                    .patientBanner .tertiaryRegion
                    {
                    }

                    .patientBanner .tertiaryRegion .value
                    {
                    font-size:1.3em;
                    font-weight:normal;
                    }

                    .patientBanner .tertiaryRegion .address .dataBlock
                    {
                    padding-right: 25px;
                    }

                    .patientBanner .tertiaryRegion .telecoms .dataBlock
                    {
                    padding-right: 25px;
                    }

                    .patientBanner .tertiaryRegion .dataBlock
                    {
                    margin-bottom: 5px;
                    }

                    .patientBanner .tertiaryRegion .name .dataBlock .contactFirstName,
                    .patientBanner .tertiaryRegion .name .dataBlock .contactLastName,
                    .patientBanner .tertiaryRegion .name .dataBlock .contactPrefixName,
                    .patientBanner .tertiaryRegion .name .dataBlock .contactSuffixName
                    {
                    font-size:1.3em;
                    font-weight:normal;
                    }

                    .xproviderName
                    {
                    color:#999999;
                    }

                    .xproviderLastName
                    {
                    text-transform:uppercase;
                    }

                    .summaryBanner
                    {
                    padding: 10px;
                    color: #777;
                    font-size: 1.5em;
                    font-weight: bold;
                    }

                    .documentBody
                    {
                    }

                    .sectionHeader
                    {
                    border-bottom: 1px solid #E5E5E5;
                    color: #F3901D;
                    font-size: 1.65em;
                    font-weight: normal !important;
                    margin-top: 20px;
                    padding-bottom: 5px;
                    text-transform: none;
                    }

                    .sectionBody
                    {
                    padding: 0;
                    margin: 12px 0px 12px 0px;
                    font-size:1.2em;
                    }


                    .section ul,
                    .section ol
                    {
                    list-style-type:none;
                    display:inline-block;
                    }

                    .section li
                    {
                    border-bottom: 1px solid #000000;
                    padding: 3px 0px 3px 0px;
                    }

                    .section thead th
                    {
                    color: #444444;
                    font-size: 0.875em;
                    font-weight: bold;
                    margin-left: 10px;
                    padding-left: 10px;
                    text-align: left;
                    text-transform: uppercase;
                    }

                    .sectionText table.xtableWithinTable,
                    .sectionText tbody.xtableWithinTable
                    {
                    border-style: none;
                    border-bottom: none;
                    border-top: 0;
                    border-left: 0;
                    }


                    .sectionText tr.xalert
                    {
                    background-color:#FDE7EC;
                    }

                    .sectionText tr.xalert td.xmain
                    {
                    background-image: url(../Images/URGENCY.GIF);
                    background-repeat:no-repeat;
                    background-position:left 8px;
                    }

                    .sectionText tr.xalert td.xmain span.xreaction
                    {
                    margin-left:10px;
                    }

                    .sectionText td, .sectionText th
                    {
                    vertical-align: top;
                    padding: 10px;
                    }

                    .vitalsSection .sectionText thead tr.last {
                    border-top: 1px solid #E5E5E5;
                    margin-top: 10px;
                    }
                    .vitalsSection .sectionText > table:first-of-type thead tr.last {
                    border-top: none;
                    }

                    .vitalsSection .sectionText thead tr.last th {
                    padding-top: 20px;
                    }
                    .vitalsSection .sectionText > table:first-of-type thead tr.last th{
                    padding-top:10px;
                    }

                    .sectionText td.xmain
                    {
                    min-width: 200px;
                    max-width: 500px;
                    }

                    .sectionText td.xmain,
                    .sectionText td.xdates
                    {
                    border-bottom: 1px solid #000000;
                    }

                    .sectionText td.xdates
                    {
                    white-space:nowrap;
                    }

                    .sectionText td.xdetails,
                    .sectionText td span.secondary
                    {
                    color:#999999;
                    }

                    .sectionText td.xmain .xsecondary
                    {
                    color:#999999;
                    }

                    .sectionText span.xcode
                    {
                    display:none;
                    }

                    span.xcommentlabel
                    {
                    padding-right: 5px;
                    color:#999999;
                    font-style:italic;
                    }

                    .sectionText td.xdates .xlabel
                    {
                    padding-right: 5px;
                    color:#999999;
                    }

                    .sectionText td.xdates .xproviderName
                    {
                    color:#999999;
                    }

                    .sectionText td.xdates .xproviderLastName
                    {
                    text-transform:uppercase;
                    }


                    .sectionText td.xmain .xlabel
                    {
                    padding-right: 5px;
                    color:#999999;
                    }

                    .sectionText td.dates .Bold
                    {
                    text-align:right;
                    }

                    .sectionText td.xdetails
                    {
                    border-bottom: 1px solid #999999;
                    }

                    .sectionText tr.last td
                    {
                    border-bottom: 1px solid #000000;
                    }

                    .sectionText tbody.last tr.last td
                    {
                    border-bottom: none;
                    }

                    .sectionText .xdetails .xreaction
                    {
                    font-weight:bold;
                    color: #000000;
                    }

                    .medicationsSection .xdetails .xreaction
                    {
                    color:#FF0000;
                    }

                    .medicationsSection .xdetails .xreaction .xlabel
                    {
                    color:#FF0000;
                    }

                    .hamedicationsSection .xdetails .xreaction
                    {
                    color:#FF0000;
                    }

                    .hamedicationsSection .xdetails .xreaction .xlabel
                    {
                    color:#FF0000;
                    }

                    .hdmedicationsSection .xdetails .xreaction
                    {
                    color:#FF0000;
                    }

                    .hdmedicationsSection .xdetails .xreaction .xlabel
                    {
                    color:#FF0000;
                    }

                    .medicationsAdministeredSection .xdetails .xreaction
                    {
                    color:#FF0000;
                    }

                    .medicationsAdministeredSection .xdetails .xreaction .xlabel
                    {
                    color:#FF0000;
                    }

                    .immunizationsSection .xdetails .xreaction
                    {
                    font-weight:bold;
                    color:#FF0000;
                    }

                    .medicalDevicesSection .xdetails .xreaction .xlabel
                    {
                    font-weight:bold;
                    color:#FF0000;
                    }

                    .immunizationsSection .xdetails .xreaction .xlabel
                    {
                    font-weight:bold;
                    color:#FF0000;
                    }

                    .medicalDevicesSection .xdetails .xreaction
                    {
                    font-weight:bold;
                    color:#FF0000;
                    }

                    .medicalDevicesSection th {
                    text-align: left;
                    word-break: break-all;
                    }
                    .allergiesSection .xdetails .xreaction
                    {
                    color:#FF0000;
                    }

                    .allergiesSection .xdetails .xreaction .xlabel
                    {
                    color:#FF0000;
                    }

                    .allergiesSection .xmain .xreaction
                    {
                    color:#FF0000;
                    }

                    .allergiesSection .xmain .xreaction .xlabel
                    {
                    color:#FF0000;
                    }

                    .problemsSection span.xresolvedDate
                    {
                    display:none;
                    }

                    .problemsSection .sectionText span.xcode
                    {
                    color:#5B8F22;
                    display:inline;
                    }

                    .socialProblemsSection .sectionText span.xcode
                    {
                    color:#5B8F22;
                    display:inline;
                    }

                    .familyProblemsSection .sectionText span.xcode
                    {
                    color:#5B8F22;
                    display:inline;
                    }

                    .activeProblemsSection .sectionText span.xcode
                    {
                    color:#5B8F22;
                    display:inline;
                    }

                    .activeProblemsSection span.xresolvedDate
                    {
                    display:inline;
                    }

                    .socialProblemsSection span.xresolvedDate
                    {
                    display:inline;
                    }

                    .hospitalDischargeProblemsSection .sectionText span.xcode
                    {
                    color:#5B8F22;
                    display:inline;
                    }

                    .hospitalDischargeProblemsSection span.xresolvedDate
                    {
                    display:inline;
                    }

                    .hospitalAdmissionProblemsSection .sectionText span.xcode
                    {
                    color:#5B8F22;
                    display:inline;
                    }

                    .hospitalAdmissionProblemsSection span.xresolvedDate
                    {
                    display:inline;
                    }

                    .resultsSection tbody.xprocedure .xdateTime,
                    .resultsSection tbody.xprocedure .xprocedureText,
                    .resultsSection tbody.xprocedure .xresults,
                    .resultsSection tbody.xprocedure .xspacer,
                    .resultsSection tbody.xprocedure .xdetails
                    {
                    border-bottom: 1px solid #000000;
                    }

                    .resultsSection tbody.xorganizer .xorderName,
                    .resultsSection tbody.xorganizer .xresultName,
                    .resultsSection tbody.xorganizer .xresults
                    {
                    border-bottom: 1px solid #000000;
                    }

                    .resultsSection .xdateTime,
                    .vitalsSection .xdateTime,
                    .vitalsSection td.xorganizerComments
                    {
                    color:#999999;
                    }

                    .resultsSection td.xprocedureText
                    {
                    max-width:100px;
                    }

                    .resultsSection .xresults
                    {
                    max-width:100px;
                    }

                    .vitalsSection td.xdateTime,
                    .vitalsSection td.xorganizerComments,
                    .vitalsSection td.xtest,
                    .vitalsSection td.xresults,
                    .vitalsSection tbody.last tr.last td.xtest,
                    .vitalsSection tbody.last tr.last td.xresults
                    {
                    border-bottom: 1px solid #000000;
                    }

                    .vitalsSection td.xdateTime,
                    .vitalsSection td.xresults,
                    .vitalsSection tbody.last tr.last td.xresults
                    {
                    text-align: right;
                    }

                    .vitalsSection tbody.last .xdateTime
                    {
                    border-bottom: none;
                    }

                    .providersSection tbody
                    {
                    border-bottom: 1px solid #000000;
                    }

                    .providersSection .contactType
                    {
                    font-weight:bold;
                    }

                    .providersSection .contactName span
                    {
                    padding-right: 45px;
                    }

                    .providersSection .contactAddr .dataBlock
                    {
                    color:#999999;
                    padding-right: 45px;
                    }

                    .providersSection .contactTelPhone .dataBlock
                    {
                    color:#999999;
                    padding-right: 45px;
                    }

                    .providersSection .contactTelOther
                    {
                    color:#999999;
                    }

                    .providersSection .dataBlock .value
                    {
                    }

                    .providersSection .dataBlock .label
                    {
                    font-size:0.8em;
                    font-style:normal;
                    }

                    .careTeamSection secondaryRegion
                    {
                    margin: 10;
                    }

                    .careTeamSection .contactType
                    {
                    font-weight:bold;
                    padding-left: 10px;
                    }

                    .careTeamSection td.contactName,
                    .careTeamSection td.contactAddr,
                    .careTeamSection td.contactTelPhone,
                    .careTeamSection td.contactTelOther
                    {
                    font-size:1.3em;
                    }

                    .careTeamSection td.contactType
                    {
                    font-size:1.3em;
                    border-top: 1px solid #CCCCCC;
                    }

                    .careTeamSection .contactName span
                    {
                    padding-right: 45px;
                    padding-left: 10px;
                    }

                    .careTeamSection .contactAddr .dataBlock
                    {
                    color:#999999;
                    padding-right: 45px;
                    }

                    .careTeamSection .contactTelPhone .dataBlock
                    {
                    color:#999999;
                    padding-right: 45px;
                    }

                    .careTeamSection .contactTelOther
                    {
                    color:#999999;
                    }

                    .careTeamSection .dataBlock .value
                    {
                    line-height: 1.5;
                    }

                    .careTeamSection .dataBlock .label
                    {
                    font-size:0.8em;
                    font-style:normal;
                    }
                    .documentFooter .sectionBody
                    {
                    color:#999999;
                    padding-left: 10px;
                    }

                    .documentFooter .organizationName
                    {
                    font-weight:bold;
                    color:#000000;
                    }

                    .documentFooter .label
                    {
                    font-size:0.8em;
                    font-style:normal;
                    }

                    .documentFooter .address .dataBlock,
                    .documentFooter .phone .dataBlock
                    {
                    padding-right:45px;
                    }

                    .documentFooter .details
                    {
                    border-bottom: none;
                    }

                    table.ptBannerTable, table.poweredBy
                    {
                    width:100%;
                    }
                    .ptBannerTable {
                    margin-bottom: 8px;
                    }

                    table.careTeamTable
                    {
                    width:100%;
                    }

                    td.poweredBy
                    {
                    font-size:1.3em;
                    color:#aaa;
                    padding-top: 20px;
                    min-width:200px;
                    max-width:500px;
                    }
                    td.styleVersion
                    {
                    color:#999999;
                    font-size:1.3em;
                    text-align:right;
                    padding-right:10px;
                    }

                    span.poweredBy a
                    {
                    color:#aaa;
                    text-decoration: none;
                    }
                    span.poweredBy a:hover
                    {
                    color:#009ddc;
                    text-decoration: none;
                    }

                    .documentBody
                    {
                    border-bottom-left-radius:1em;
                    border-bottom-right-radius:1em;
                    padding-bottom:5px;
                    }

                    .customerBanner
                    {
                    color: #333333;
                    }

                    .patientBanner
                    {
                    color: #777;
                    }


                    .patientBanner .primaryRegion .patientLastName,
                    .patientBanner .primaryRegion .patientFirstName,
                    .patientBanner .primaryRegion .patientSuffix,
                    .patijavascript:window.print();entBanner .primaryRegion .patientPrefix,
                    .patientBanner .primaryRegion .patientName
                    {
                    color:#444;
                    }

                    .patientBanner .break
                    {
                    height: 14px;
                    }


                    .bg {
                    background-color: #aaaaaa;
                    }

                    .container {
                    max-width: 1046px;
                    margin: 0 auto;
                    padding: 8px 0;
                    }

                    .aligncenter {
                    text-align: center;
                    }

                    .left {
                    float: left;
                    }

                    .clear:before, .clear:after {
                    content: "\0020";
                    display: block;
                    height: 0;
                    overflow: hidden;
                    }

                    .clear:after {
                    clear: both;
                    }

                    .preview {
                    font-size: 16px;
                    color: #fff;
                    text-transform: uppercase;
                    line-height: 26px;
                    }

                    a.btn-print, a.btn-print:visited {
                    background-color: #ececec;
                    border: 1px solid #c6c6c6;
                    border-color: #c6c6c6 #b6b6b6 #aaaaaa;
                    border-radius: 4px;
                    background-image: none;
                    color: #333333;
                    -webkit-box-shadow: none;
                    -moz-box-shadow: none;
                    box-shadow: none !important;
                    display: inline-block;
                    padding: 6px 22px !important;
                    font-size: 13px;
                    line-height: 1.3 !important;
                    margin-bottom: 0;
                    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
                    font-weight: normal;
                    text-align: center;
                    text-shadow: none;
                    cursor: pointer;
                    text-decoration: none;
                    white-space: nowrap;
                    }

                    a.btn-print:hover, a.btn-print:focus {
                    background-color: #e1e1e1;
                    border: 1px solid #b6b6b6;
                    border-color: #b6b6b6 #a7a7a7 #9a9a9a;
                    }

                    a.btn-print:active {
                    -webkit-box-shadow: inset 0 2px 2px rgba(0, 0, 0, 0.125) !important;
                    box-shadow: inset 0 2px 2px rgba(0, 0, 0, 0.125) !important;
                    }

                    }

                    @media print {
                    body
                    {
                    background-color: #FFFFFF;
                    color: #777;
                    font-size: 100% ;
                    line-height: 1.3;
                    margin: 0;
                    padding: 0;
                    width: auto;
                    }

                    .btn-print, .toc {
                    display: none;
                    }

                    .bg {
                    display: none;
                    }

                    .theDocument {
                    box-shadow: none;
                    border: none;
                    font-size: 10px;
                    color: #777;
                    }

                    .patientBanner td {
                    color: #444;
                    }

                    .sectionHeader, .patientBanner .primaryRegion .patientLastName, .patientBanner .primaryRegion .patientFirstName, .patientBanner .primaryRegion .patientName {
                    font-size: 12px;
                    color: #444;
                    font-weight: bold;
                    }

                    .patientBanner .primaryRegion .patientLastName, .patientBanner .primaryRegion .patientFirstName, .patientBanner .primaryRegion .patientName {
                    font-size: 15px;
                    }

                    .primaryRegion, .secondaryRegion, .patientBanner, .dataBlock {
                    font-size: 10px;
                    }

                    .patientBanner .secondaryRegion .address,
                    .patientBanner .secondaryRegion .telecoms,
                    .patientBanner .secondaryRegion .demographics,
                    .patientBanner .value, .patientBanner .label,
                    .patientBanner .mrn .value, .patientBanner .mrn .label,
                    .patientBanner .secondaryRegion .value, .patientBanner .secondaryRegion .label
                    {
                    font-size: 11px;
                    }

                    .sectionText td {
                    padding: 5px 10px;
                    color: #444;
                    }

                    .sectionHeader
                    {
                    page-break-after:avoid;
                    }

                    .section thead th, .sectionHeader
                    {
                    color: #999;
                    font-size: 0.875em;
                    }

                    td[colspan="4"], .allergiesSection td:first-child, .problemsSection td:first-child, .activeProblemsSection td:first-child, .medicationsSection td:first-child, .immunizationsSection td:first-child, .vitalsSection td:first-child, .proceduresSection td:first-child, .careTeamSection td:first-child {
                    font-weight: normal;
                    }

                    table { page-break-inside:auto }
                    tr    { page-break-inside:avoid; page-break-after:auto }

                    a:link:after, a:visited:after { content:" (" attr(href) ") "; }
                    .sectionHeader a:after, .sectionHeader a:visited:after { content: none !important; }
                    }

                </style>

            </head>
            <body>
                <div class="bg">
                    <div class="container aligncenter clear">
                        <a href="javascript:window.print();" class="btn-print left">Print</a>
                        <div class="inlineb"><p class="preview">Preview Mode</p></div>
                    </div>
                </div>
                <div class="theDocument">
                    <!-- Customer Banner -->
                    <xsl:apply-templates mode="customerBanner" select="n1:recordTarget/n1:patientRole"/>

                    <!-- Patient Banner -->
                    <xsl:apply-templates mode="patientBanner" select="n1:recordTarget/n1:patientRole"/>

                    <!-- Title banner-->
                    <!--<xsl:if test="n1:title">
                        <div class="summaryBanner">
                            <xsl:apply-templates mode="title" select="n1:title"/>
                        </div>
                    </xsl:if>-->

                    <!-- produce table of contents -->
                    <xsl:if test="not(//n1:nonXMLBody)">
                        <xsl:if test="count(/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component[n1:section]) &gt; 1">
                            <xsl:call-template name="make-tableofcontents"/>
                        </xsl:if>
                    </xsl:if>


                    <div class="documentBody">
                        <!-- Component/Section -->
                        <xsl:apply-templates select="n1:component/n1:structuredBody"/>

                        <!-- care team are providers plus contacts -->
                        <xsl:call-template name="careTeam"/>
                        <!-- Providers
                        <xsl:call-template name="providers"/>
            -->
                        <!-- Patient Contacts
                        <xsl:call-template name="patientContacts"/>
            -->
                        <!-- Footer Banner -->
                        <xsl:call-template name="documentFooter"/>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

    <!-- one template for the location of the css files;  Will be changed by the installer to contain the correct href value based upon target deployment;
      developers:  you will have to make changes appropriate to your testing environment
    -->

    <!--
      <xsl:template match="n1:ClinicalDocument" mode="stylesheetLinks" priority="9">
        <link rel="stylesheet" type="text/css" media="all" href="screen.css"/>
        <link rel="stylesheet" type="text/css" media="print" href="print.css"/>
      </xsl:template>
    -->

    <xsl:template match="*" mode="title">
        <xsl:text>Clinical Document</xsl:text>
    </xsl:template>

    <!-- customerBanner Name of Practice -->
    <xsl:template match="n1:patientRole" mode="customerBanner">

        <xsl:if test="n1:providerOrganization/n1:name">
            <div class="customerBanner">
                <div class="customerInfo">
                    <!--Div on the outside since section is required (contents are not required)-->
                    <div class="providerOrganizationName">
                        <xsl:value-of select="n1:providerOrganization/n1:name"/>
                    </div>
                    <xsl:variable name="providerCity" select="n1:providerOrganization/n1:addr/n1:city"/>
                    <!--Div on the outside since section is required (contents are not required)-->
                    <div class="providerNumber">
                        <xsl:apply-templates select="n1:providerOrganization/n1:telecom" mode="customerBanner" />
                    </div>
                </div>
            </div>
        </xsl:if>

    </xsl:template>

    <!-- Display a telecom values -->
    <xsl:template match="n1:telecom" mode="customerBanner">
        <div class="dataBlock phoneNumber">
            <div class="label numberType">
                <xsl:variable name="value" select="@value"/>
                <xsl:choose>
                    <xsl:when test="starts-with($value, 'tel:')">Phone: </xsl:when>
                    <xsl:when test="starts-with($value, 'http:')">Web: </xsl:when>
                    <xsl:when test="starts-with($value, 'mailto:')">Email: </xsl:when>
                    <xsl:when test="starts-with($value, 'fax:')">Fax: </xsl:when>
                </xsl:choose>
            </div>
            <xsl:text> </xsl:text>
            <div class="value">
                <xsl:choose>
                    <xsl:when test="contains(@value, 'tel:+1-')">
                        <!-- this is a phone -->
                        <xsl:variable name="phoneString" select="substring-after(@value, 'tel:+1-')"/>
                        <!-- now break out as (999) 888-1234 with option later on to show extension -->
                        <xsl:value-of select="substring($phoneString,1,5)"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="substring($phoneString,6,8)"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- this is a web or email address-->
                        <xsl:value-of select="substring-after(@value, ':')"/>
                    </xsl:otherwise>
                </xsl:choose>
            </div>
        </div>
    </xsl:template>


    <xsl:template match="n1:city" mode="customerBanner">
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="n1:state[string-length(.)&gt;0 and string-length(../n1:city)&gt;0]" mode="customerBanner" priority="9">
        <xsl:text>, </xsl:text>
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="n1:state[string-length(.)&gt;0]" mode="customerBanner" priority="8">
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="*" mode="customerBanner"/>
    <!-- customerBanner -->

    <!-- patientBanner
      Primary Region - basically the patient
      Secondary Region - 4 zones for details of patient address, phones, etc
      Tertiary Region
        Guardian(s) - when present
        Emergency Contacts(s)
        Guarantor(s)


    This is all created inside a 5 column table, with some sub-tables, in order to assure that columns line up

    -->
    <xsl:template match="n1:recordTarget/n1:patientRole" mode="patientBanner">
        <div class="patientBanner">
            <!-- here begins the master table for the patient banner -->
            <table class="ptBannerTable">
                <!-- regions are rows with class......primaryRegion and secondaryRegion will appear once each; there will be a tertiaryRegion row per entry -->
                <tr class="primaryRegion">
                    <td colspan="5">
                        <table class="ptBannerTable">
                            <tr>
                                <td>
                                    <div>
                                        <xsl:apply-templates mode="patientBanner" select="n1:patient/n1:name"/>
                                    </div>
                                </td>
                            </tr>
                            <tr class="details">
                                <td>
                                    <table class="ptBannerTable">
                                        <tr>
                                            <!-- preferred name-->
                                            <td>
                                                <xsl:apply-templates mode="patientBannerDetails" select="n1:patient/n1:name/n1:given"/>
                                            </td>
                                            <!-- dob -->
                                            <td>
                                                <xsl:apply-templates mode="patientBannerDetails" select="n1:patient/n1:birthTime"/>
                                            </td>
                                            <!-- gender -->
                                            <td>
                                                <div class="gender column">
                                                    <div class="dataBlock">
                                                        <div class="value">
                                                            <xsl:apply-templates mode="gender" select="n1:patient/n1:administrativeGenderCode"/>
                                                        </div>
                                                        <div class="label">Sex</div>
                                                    </div>
                                                </div>
                                            </td>
                                            <!-- insurance -->
                                            <td>
                                                <xsl:if test="//n1:item[n1:content/@styleCode='xHeaderInsurer']">
                                                    <div class="insurance column">
                                                        <div class="dataBlock">
                                                            <div class="value">
                                                                <xsl:apply-templates mode="patientBannerInsurers" select="//n1:item[n1:content/@styleCode='xHeaderInsurer']"/>
                                                            </div>
                                                            <div class="label">Insurer</div>
                                                        </div>
                                                    </div>
                                                </xsl:if>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <table class="ptBannerTable">
                                        <tr>
                                            <!-- mrn -->
                                            <td>
                                                <xsl:apply-templates mode="patientBannerDetails" select="n1:id"/>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <!-- we have breaks between regions, as well as breaks between multiple entries within a region -->
                <tr>
                    <td class="break" colspan="5"></td>
                </tr>
                <!-- secondary region is just more patient demographics -->
                <tr class="secondaryRegion">
                    <!-- patient address (zone 1) -->
                    <td>
                        <div class="address column">
                            <xsl:apply-templates select="n1:addr[1]"/>
                        </div>
                    </td>
                    <!-- patient telecoms (zone 2)-->
                    <td>
                        <div class="telecoms column">
                            <xsl:apply-templates select="n1:telecom[not(@nullFlavor)]"/>
                        </div>
                    </td>
                    <!-- languages, ethnicity, race (zone 3) -->
                    <td>
                        <div class="demographics column">
                            <div class="languages">
                                <xsl:apply-templates select="n1:patient/n1:languageCommunication"/>
                            </div>
                            <xsl:apply-templates mode="patientBannerDetails" select="n1:patient/n1:raceCode"/>
                            <xsl:apply-templates mode="patientBannerDetails" select="n1:patient/n1:ethnicGroupCode"/>
                            <xsl:apply-templates mode="patientBannerDetails" select="n1:patient/n1:maritalStatusCode"/>
                        </div>
                    </td>
                    <!-- other column (spans 2) (zone 4)-->
                    <td colspan="2">
                        <div class="other column">
                            <!-- employer, if present -->
                            <xsl:apply-templates mode="employer" select="/n1:ClinicalDocument/n1:participant[substring(n1:associatedEntity/n1:id/@root,string-length(n1:associatedEntity/n1:id/@root)-5) = '.3.2.3']"/>
                        </div>
                    </td>
                </tr>
                <!-- tertiary region is optional section headers (rows) and rows of contacts within a section -->
                <!--    Guardian(s) -->
                <xsl:if test="n1:patient/n1:guardian">
                    <tr>
                        <td colspan="5" class="sectionHeader">Guardian</td>
                    </tr>
                    <xsl:apply-templates mode="guardians" select="n1:patient/n1:guardian"/>
                </xsl:if>
                <!--    Emergency Contact(s)-->
                <xsl:if test="/n1:ClinicalDocument/n1:participant[n1:associatedEntity/@classCode='ECON']">
                    <tr>
                        <td colspan="5" class="sectionHeader">Emergency Contact</td>
                    </tr>
                    <xsl:apply-templates mode="emergencyContacts" select="/n1:ClinicalDocument/n1:participant[n1:associatedEntity/@classCode='ECON']"/>
                </xsl:if>
                <!--     Guarantor(s) -->
                <xsl:if test="//n1:item[n1:content/@styleCode='xHeaderGuarantor']">
                    <tr id="sectionHeader">
                        <td colspan="5" class="sectionHeader">Guarantor</td>
                    </tr>
                    <xsl:apply-templates mode="guarantors" select="//n1:item[n1:content/@styleCode='xHeaderGuarantor']"/>
                </xsl:if>
            </table>
        </div>
    </xsl:template>

    <xsl:template match="n1:name[string-length(n1:family)&gt;0]" mode="patientBanner" priority="9">
        <xsl:variable name="lastName" select="n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family"/>
        <xsl:apply-templates mode="patientBanner" select="n1:family"/>
        <xsl:apply-templates mode="patientBanner" select="n1:given[1]"/>
        <xsl:apply-templates mode="patientBanner" select="n1:suffix"/>
        <xsl:apply-templates mode="patientBanner" select="n1:prefix"/>
    </xsl:template>

    <xsl:template match="n1:family" mode="patientBanner">
        <span class="patientLastName">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

    <xsl:template match="n1:given[string-length(.)&gt;0]" mode="patientBanner">
        <span class="patientFirstName">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

    <xsl:template match="n1:suffix[string-length(.)&gt;0]" mode="patientBanner">
        <span class="patientSuffix">
            <xsl:text> </xsl:text>
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

    <xsl:template match="n1:prefix[string-length(.)&gt;0]" mode="patientBanner">
        <span class="patientPrefix">
            <xsl:text> (</xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>) </xsl:text>
        </span>
    </xsl:template>

    <!-- for names other than the patient name -->
    <xsl:template match="n1:name" mode="contacts" priority="9">
        <xsl:apply-templates mode="contacts" select="n1:prefix"/>
        <xsl:apply-templates mode="contacts" select="n1:given"/>
        <xsl:apply-templates mode="contacts" select="n1:family"/>
        <xsl:apply-templates mode="contacts" select="n1:suffix"/>
    </xsl:template>

    <xsl:template match="n1:prefix" mode="contacts">
        <span class="contactPrefixName">
            <xsl:value-of select="."/>
            <xsl:text> </xsl:text>
        </span>
    </xsl:template>

    <xsl:template match="n1:family" mode="contacts">
        <span class="contactLastName">
            <xsl:value-of select="."/>
            <xsl:text> </xsl:text>
        </span>
    </xsl:template>

    <xsl:template match="n1:given[string-length(.)&gt;0]" mode="contacts">
        <span class="contactFirstName">
            <xsl:value-of select="."/>
            <xsl:text> </xsl:text>
        </span>
    </xsl:template>

    <xsl:template match="n1:suffix[string-length(.)&gt;0]" mode="contacts">
        <span class="contactSuffixName">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

    <xsl:template match="n1:patientRole/n1:id[not(@nullFlavor) and not(@displayable='false')]" mode="patientBannerDetails">
        <div class="mrn column">
            <div class="dataBlock">
                <div class="value">
                    <xsl:value-of select="@extension"/>
                </div>
                <!-- if the value is root'd as an SSN then say so -->
                <xsl:choose>
                    <xsl:when test="@root='2.16.840.1.113883.4.1'">
                        <div class="label">SSN</div>
                    </xsl:when>
                    <xsl:otherwise>
                        <div class="label">MRN</div>
                    </xsl:otherwise>
                </xsl:choose>

            </div>
        </div>
    </xsl:template>

    <xsl:template match="n1:given[@qualifier='CL' and string-length(.)&gt;0]" mode="patientBannerDetails">
        <div class="preferredName column">
            <div class="dataBlock">
                <div class="value">
                    <xsl:value-of select="."/>
                </div>
                <div class="label">Preferred Name</div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="n1:birthTime[string-length(@value)&gt;0]" mode="patientBannerDetails">
        <div class="birthDate column">
            <div class="dataBlock">
                <div class="value">
                    <xsl:call-template name="formatDate">
                        <xsl:with-param name="date" select="@value"/>
                    </xsl:call-template>
                </div>
                <div class="label">Born</div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="n1:administrativeGenderCode[@code='M']" mode="gender" priority="9">
        <xsl:text>Male</xsl:text>
    </xsl:template>

    <xsl:template match="n1:administrativeGenderCode[@code='F']" mode="gender" priority="9">
        <xsl:text>Female</xsl:text>
    </xsl:template>

    <xsl:template match="n1:administrativeGenderCode[@code='UN']" mode="gender" priority="9">
        <xsl:text>Undifferentiated</xsl:text>
    </xsl:template>

    <xsl:template match="*" mode="gender">
        <xsl:text>Unknown</xsl:text>
    </xsl:template>


    <xsl:template match="n1:item" mode="patientBannerInsurers">
        <xsl:if test="position()&gt;1">
            <xsl:text>, </xsl:text>
        </xsl:if>
        <xsl:value-of select="n1:content"/>
    </xsl:template>

    <xsl:template match="n1:raceCode[@nullFlavor='ASKU']" mode="patientBannerDetails">
        <div class="dataBlock">
            <div class="value">Declined to Specify</div>
            <div class="label">Race</div>
        </div>
    </xsl:template>
    <xsl:template match="n1:raceCode[@nullFlavor='UNK']" mode="patientBannerDetails">
        <div class="dataBlock">
            <div class="value">Unknown</div>
            <div class="label">Race</div>
        </div>
    </xsl:template>
    <xsl:template match="n1:raceCode[string-length(@displayName)&gt;0]" mode="patientBannerDetails">
        <div class="dataBlock">
            <div class="value">
                <xsl:value-of select="@displayName"/>
                <xsl:apply-templates select="../ext:raceCode" mode="patientBannerDetails"/>
            </div>
            <div class="label">Race</div>
        </div>
    </xsl:template>

    <xsl:template match="ext:raceCode[string-length(@displayName)&gt;0]" mode="patientBannerDetails">
        <br/>
        <xsl:value-of select="@displayName"/>
    </xsl:template>

    <xsl:template match="n1:ethnicGroupCode[@nullFlavor='ASKU']" mode="patientBannerDetails">
        <div class="dataBlock">
            <div class="value">Declined to Specify</div>
            <div class="label">Ethnicity</div>
        </div>
    </xsl:template>
    <xsl:template match="n1:ethnicGroupCode[string-length(@displayName)&gt;0]" mode="patientBannerDetails">
        <div class="dataBlock">
            <div class="value">
                <xsl:value-of select="@displayName"/>
            </div>
            <div class="label">Ethnicity</div>
        </div>
    </xsl:template>

    <xsl:template match="n1:maritalStatusCode[string-length(@displayName)&gt;0]" mode="patientBannerDetails">
        <div class="dataBlock">
            <div class="value">
                <xsl:value-of select="@displayName"/>
            </div>
            <div class="label">Marital Status</div>
        </div>
    </xsl:template>

    <!-- employer -->
    <xsl:template mode="employer" match="/n1:ClinicalDocument/n1:participant">
        <div class="name column">
            <div class="dataBlock">
                <div class="value">
                    <xsl:apply-templates mode="contacts" select="n1:associatedEntity/n1:associatedPerson/n1:name"/>
                </div>
                <div class="label">Employer</div>
            </div>
            <xsl:apply-templates select="n1:associatedEntity/n1:addr[1]"/>
            <xsl:apply-templates select="n1:associatedEntity/n1:telecom[not(@nullFlavor)]"/>
        </div>
    </xsl:template>

    <!-- patientBanner Tertiary outputs only when we have at least one of:
      Guardians
      Emergency Contacts
      Guarantors
    -->
    <xsl:template mode="guardians" match="n1:patient/n1:guardian">
        <xsl:if test="position()&gt;1">
            <tr>
                <td class="break" colspan="5"></td>
            </tr>
        </xsl:if>
        <tr class="tertiaryRegion">
            <!-- name (zone 1) -->
            <td>
                <div class="name column">
                    <div class="dataBlock">
                        <xsl:apply-templates mode="contacts" select="n1:guardianPerson/n1:name"/>
                    </div>
                </div>
            </td>
            <!-- address (zone 2)-->
            <td>
                <div class="address column">
                    <xsl:apply-templates select="n1:addr[1]"/>
                </div>
            </td>
            <!-- phone (zone 3_1)-->
            <td>
                <div class="telecoms column">
                    <xsl:apply-templates select="n1:telecom[contains(@value, 'tel:')]"/>
                </div>
            </td>
            <!-- email 1 (zone 3_2)-->
            <td>
                <div class="telecoms column">
                    <xsl:apply-templates select="n1:telecom[contains(@value, 'mailto:')][0]"/>
                </div>
            </td>
            <!-- email 2 (zone 3_3)-->
            <td>
                <div class="telecoms column">
                    <xsl:apply-templates select="n1:telecom[contains(@value, 'mailto:')][1]"/>
                </div>
            </td>
        </tr>
    </xsl:template>

    <xsl:template mode="emergencyContacts" match="/n1:ClinicalDocument/n1:participant[n1:associatedEntity/@classCode='ECON']">
        <xsl:if test="position()&gt;1">
            <tr>
                <td class="break" colspan="5"></td>
            </tr>
        </xsl:if>
        <tr class="tertiaryRegion">
            <!-- name (zone 1)-->
            <td>
                <div class="name column">
                    <div class="dataBlock">
                        <xsl:apply-templates mode="contacts" select="n1:associatedEntity/n1:associatedPerson/n1:name"/>
                    </div>
                </div>
            </td>
            <!-- address (zone 2) -->
            <td>
                <div class="address column">
                    <xsl:apply-templates select="n1:associatedEntity/n1:addr[1]"/>
                </div>
            </td>
            <!-- phone (zone 3_1)-->
            <td>
                <div class="telecoms column">
                    <xsl:apply-templates select="n1:associatedEntity/n1:telecom[contains(@value, 'tel:')]"/>
                </div>
            </td>
            <!-- email 1 (zone 3_2)-->
            <td>
                <div class="telecoms column">
                    <xsl:apply-templates select="n1:associatedEntity/n1:telecom[contains(@value, 'mailto:')][0]"/>
                </div>
            </td>
            <!-- email 2 (zone 3_3) -->
            <td>
                <div class="telecoms column">
                    <xsl:apply-templates select="n1:associatedEntity/n1:telecom[contains(@value, 'mailto:')][1]"/>
                </div>
            </td>
        </tr>
    </xsl:template>

    <xsl:template mode="guarantors" match="n1:item">
        <xsl:if test="position()&gt;1">
            <tr>
                <td class="break" colspan="5"></td>
            </tr>
        </xsl:if>
        <tr class="tertiaryRegion">
            <!-- name (zone 1)-->
            <td>
                <div class="name column">
                    <div class="dataBlock">
                        <span class="contactLastName">
                            <xsl:value-of select="n1:content"/>
                        </span>
                    </div>
                </div>
            </td>
            <!-- address (zone 2)-->
            <td>
                <div class="address column">
                    <xsl:apply-templates select="/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component/n1:section[n1:code/@code='48768-6' and n1:code/@codeSystem='2.16.840.1.113883.6.1']/n1:entry/n1:act/n1:entryRelationship[n1:act/n1:performer/n1:assignedEntity/n1:code/@code='GUAR']/n1:act/n1:performer/n1:assignedEntity/n1:addr"/>
                </div>
            </td>
            <!-- phone (zone 3_1)-->
            <td>
                <div class="telecoms column">
                    <xsl:apply-templates select="/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component/n1:section[n1:code/@code='48768-6' and n1:code/@codeSystem='2.16.840.1.113883.6.1']/n1:entry/n1:act/n1:entryRelationship[n1:act/n1:performer/n1:assignedEntity/n1:code/@code='GUAR']/n1:act/n1:performer/n1:assignedEntity/n1:telecom[contains(@value, 'tel:')]"/>
                </div>
            </td>
            <!-- email 1 (zone 3_2)-->
            <td>
                <div class="telecoms column">
                    <xsl:apply-templates select="/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component/n1:section[n1:code/@code='48768-6' and n1:code/@codeSystem='2.16.840.1.113883.6.1']/n1:entry/n1:act/n1:entryRelationship[n1:act/n1:performer/n1:assignedEntity/n1:code/@code='GUAR']/n1:act/n1:performer/n1:assignedEntity/n1:telecom[contains(@value, 'mailto:')][0]"/>
                </div>
            </td>
            <!-- email 2 (zone 3_3)-->
            <td>
                <div class="telecoms column">
                    <xsl:apply-templates select="/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component/n1:section[n1:code/@code='48768-6' and n1:code/@codeSystem='2.16.840.1.113883.6.1']/n1:entry/n1:act/n1:entryRelationship[n1:act/n1:performer/n1:assignedEntity/n1:code/@code='GUAR']/n1:act/n1:performer/n1:assignedEntity/n1:telecom[contains(@value, 'mailto:')][1]"/>
                </div>
            </td>
        </tr>
    </xsl:template>


    <xsl:template match="*" mode="patientBanner"/>
    <xsl:template match="*" mode="patientBannerDetails"/>
    <!-- patientBanner -->



    <!-- generate table of contents -->
    <xsl:template name="make-tableofcontents">
        <div class="toc">
            <h2>
                <a name="toc" >Table of Contents</a>
            </h2>
            <ul>
                <xsl:for-each select="n1:component/n1:structuredBody/n1:component/n1:section">
                    <li>
                        <a href="#{generate-id(n1:title)}">
                            <xsl:apply-templates mode="sectionTitle" select="n1:code[@codeSystem='2.16.840.1.113883.6.1']"/>
                        </a>
                    </li>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>


    <!-- Component/Section -->
    <xsl:template match="n1:component/n1:section">
        <div>
            <xsl:attribute name="class">
                <xsl:text>section</xsl:text>
                <xsl:apply-templates select="n1:code[@codeSystem='2.16.840.1.113883.6.1']" mode="Section"/>
            </xsl:attribute>
            <div class="sectionHeader">
                <a name="{generate-id(n1:title)}" href="#toc">
                    <xsl:apply-templates mode="sectionTitle" select="n1:code[@codeSystem='2.16.840.1.113883.6.1']"/>
                </a>
            </div>
            <div class="sectionBody">
                <div class="sectionText">
                    <!-- this should be parsing all the stuff below text... why isn't it pulling in the table headers?  -->
                    <xsl:apply-templates select="n1:text"/>
                </div>
                <!--
        <xsl:if test="n1:component/n1:section">
                  <br/>
                  <xsl:apply-templates select="n1:component/n1:section"/>
                </xsl:if>
        -->
            </div>
        </div>
    </xsl:template>

    <!-- provide feature to map out different titles when document is styled -->
    <xsl:template match="n1:code[@codeSystem='2.16.840.1.113883.6.1']" mode="sectionTitle">
        <xsl:choose>
            <xsl:when test="@code='48765-2'">Allergies </xsl:when>
            <xsl:when test="@code='18776-5'">Treatment Plans</xsl:when>
            <!--       <xsl:when test="@code='8716-3'">Vitals</xsl:when> -->
            <xsl:when test="@code='11369-6'">Immunizations</xsl:when>
            <xsl:otherwise>
                <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'" />
                <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
                <xsl:value-of select="translate(../n1:title, $uppercase, $smallcase)"/>
                <xsl:text> </xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>



    <xsl:template match="n1:code[@codeSystem='2.16.840.1.113883.6.1']" mode="Section">
        <xsl:choose>
            <xsl:when test="@code='8716-3'"> vitalsSection</xsl:when>
            <xsl:when test="@code='46264-8'"> medicalDevicesSection</xsl:when>
            <xsl:when test="@code='10160-0'"> medicationsSection</xsl:when>
            <xsl:when test="@code='30954-2'"> resultsSection</xsl:when>
            <xsl:when test="@code='47519-4'"> proceduresSection</xsl:when>
            <xsl:when test="@code='11450-4'"> problemsSection activeProblemsSection</xsl:when>
            <!-- Yes they are all problems, problemsSection is generic-->
            <xsl:when test="@code='11348-0'"> problemsSection</xsl:when>
            <!-- Yes they are all problems, problemsSection is generic-->
            <xsl:when test="@code='10157-6'"> problemsSection familyProblemsSection</xsl:when>
            <!-- Yes they are all problems, problemsSection is generic-->
            <xsl:when test="@code='29762-2'"> problemsSection socialProblemsSection</xsl:when>
            <xsl:when test="@code='48765-2'"> allergiesSection</xsl:when>
            <xsl:when test="@code='11369-6'"> immunizationsSection</xsl:when>
            <!-- Hospital Discharge Med -->
            <xsl:when test="@code='10183-2'"> hdmedicationsSection</xsl:when>
            <!-- Hospital Discharge Med -->
            <xsl:when test="@code='42346-7'"> hamedicationsSection</xsl:when>
            <!-- medications administered -->
            <xsl:when test="@code='29549-3'"> medicationsAdministeredSection</xsl:when>
            <!-- hospital admission and hospital discharge diagnoses are types of problem lists -->
            <xsl:when test="@code='11535-2'"> problemsSection hospitalDischargeProblemsSection</xsl:when>
            <xsl:when test="@code='46241-6'"> problemsSection hospitalAdmissionProblemsSection</xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>

    <!-- Add spacer columns -->
    <xsl:template match="n1:component/n1:section//n1:td[@styleCode='xdates']">
        <td class="dates">
            <xsl:apply-templates select="*|@*|text()"/>
        </td>
        <td class="spacer"/>
    </xsl:template>

    <!-- Vitals specific-->
    <xsl:template match="n1:component/n1:section[n1:code/@code='8716-3' and n1:code/@codeSystem='2.16.840.1.113883.6.1']//n1:td[@styleCode='xorganizerComments']/@colspan">
        <xsl:attribute name="colspan">4</xsl:attribute>
    </xsl:template>


    <!-- Vitals specific, skip table rows that contain no text-->
    <xsl:template match="n1:component/n1:section[n1:code/@code='8716-3' and n1:code/@codeSystem='2.16.840.1.113883.6.1']//n1:tr[count(.//text())=0]" priority="9"/>


    <!-- Vitals specific-->
    <xsl:template match="n1:component/n1:section[n1:code/@code='8716-3' and n1:code/@codeSystem='2.16.840.1.113883.6.1']//n1:td[@styleCode='xresults']">
        <td class="results">
            <xsl:apply-templates select="*|@*|text()"/>
        </td>
        <td class="spacer"/>
    </xsl:template>

    <!-- Results Specific-->
    <xsl:template match="n1:component/n1:section[n1:code/@code='30954-2' and n1:code/@codeSystem='2.16.840.1.113883.6.1']//n1:td[@styleCode='xresults']">
        <td class="results">
            <xsl:apply-templates select="*|@*|text()"/>
        </td>
        <td class="spacer"/>
    </xsl:template>

    <!--Remove colspan 3 from CLINICAL INSTRUCTIONS/PATIENT DECISION AIDS -->
    <xsl:template match="n1:component/n1:section[n1:code/@code='69730-0' and n1:code/@codeSystem='2.16.840.1.113883.6.1']//n1:th[@colspan='3']">
        <th>
            <xsl:apply-templates select="*|text()"/>
        </th>
    </xsl:template>


    <xsl:template match="n1:component/n1:section[n1:code/@code='30954-2' and n1:code/@codeSystem='2.16.840.1.113883.6.1']//n1:td[@colspan='2' and @styleCode='xresults']">
        <td class="results" colspan="3">
            <xsl:apply-templates select="*|text()"/>
        </td>
        <td class="spacer"/>
    </xsl:template>

    <!-- Insurance is rendered in the header -->
    <xsl:template match="n1:component/n1:section[n1:code/@code='48768-6' and n1:code/@codeSystem='2.16.840.1.113883.6.1']"/>

    <!-- Section Text -->
    <xsl:template match="n1:text">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="n1:paragraph">
        <!-- artf696857 : [Transform] Add new CED Format for Visit-related Summary 07/2011 v2.7 -->
        <p>
            <xsl:apply-templates/>
        </p>
        <br/>
    </xsl:template>

    <!--   content  -->
    <xsl:template match="n1:content">
        <xsl:apply-templates/>
    </xsl:template>

    <!-- Content w/ deleted text is hidden -->
    <xsl:template match="n1:content[@revised='delete']"/>

    <!-- Content with a styleCode of 'xasIgnore' is ignored -->
    <xsl:template match="n1:content[@styleCode='xasIgnore']" priority="1"/>

    <!-- Content with a styleCode of 'status' means it is displaying a status values -->
    <xsl:template match="n1:content[@styleCode='xstatus']" priority="1">
        <xsl:choose>
            <!-- A status value of 'Active' is hidden -->
            <!-- Handle a status with a label -->
            <xsl:when test="./n1:content[@styleCode='xvalue']='Active'"/>
            <!-- A status value of 'Active' is hidden -->
            <!-- Handle a status without a label -->
            <xsl:when test=".='Active'"/>
            <!-- a status (labeled or not) that is empty is not output -->
            <xsl:when test="./n1:content[@styleCode='xvalue']=''"/>
            <xsl:when test=".=''"/>
            <!-- Otherwise, display it as a span -->
            <xsl:otherwise>
                <span class="status">
                    <xsl:apply-templates/>
                </span>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- Content with a styleCode of 'div' means it needs to be a div instead of a span -->
    <xsl:template match="n1:content[@styleCode='xdiv']" priority="1">
        <div>
            <xsl:apply-templates select="node()"/>
        </div>
    </xsl:template>

    <!-- Content with a style code, just process the styleCode and ignore any other attributes -->
    <xsl:template match="n1:content[@styleCode]">
        <span>
            <xsl:apply-templates select="@styleCode|node()"/>
        </span>
    </xsl:template>

    <!-- Lists -->
    <xsl:template match="n1:list">
        <!--   listan otsikko  -->
        <xsl:if test="n1:caption">
            <div style="font-weight:bold;color:white;background-color:#999999; ">
                <xsl:apply-templates select="n1:caption"/>
            </div>
        </xsl:if>
        <!-- Jokainen listan alkio -->
        <!-- artf696857 : [Transform] Add new CED Format for Visit-related Summary 07/2011 v2.7 -->
        <ul>
            <xsl:for-each select="n1:item">
                <li>
                    <!-- Lista-alkion elementti-->
                    <xsl:apply-templates/>
                </li>
            </xsl:for-each>
        </ul>
    </xsl:template>

    <!-- list in treatment plan need extra space -->
    <xsl:template match="n1:list[../../n1:code/@code='18776-5']">
        <!--   listan otsikko  -->
        <xsl:if test="n1:caption">
            <div style="font-weight:bold;color:white;background-color:#999999; ">
                <xsl:apply-templates select="n1:caption"/>
            </div>
        </xsl:if>
        <!-- Jokainen listan alkio -->
        <!-- artf696857 : [Transform] Add new CED Format for Visit-related Summary 07/2011 v2.7 -->
        <ul>
            <xsl:for-each select="n1:item">
                <li>
                    <!-- Lista-alkion elementti-->
                    <xsl:apply-templates/>
                </li>
            </xsl:for-each>
        </ul>
        <br></br>
    </xsl:template>

    <!-- ................ special list inside a <td> so we can introduce another table; we do not want <ul> and <li> to be generated   -->
    <xsl:template match="n1:list[@styleCode='xlistForTable']">
        <xsl:for-each select="n1:item">
            <xsl:apply-templates/>
        </xsl:for-each>
    </xsl:template>



    <!-- Captions -->
    <xsl:template match="n1:caption">
        <!-- artf696857 : [Transform] Add new CED Format for Visit-related Summary 07/2011 v2.7 -->
        <xsl:apply-templates/>
        <!-- <xsl:text>: </xsl:text> -->
        <xsl:choose>
            <xsl:when test="string-length(n1:caption)&gt;0">
                <xsl:text>: </xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <br/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- Tables -->
    <xsl:template match="n1:table|n1:table/n1:caption|n1:thead|n1:tfoot|n1:tbody|n1:colgroup|n1:col|n1:tr|n1:th|n1:td">
        <!-- Can't use <xsl:copy> here. If you do, Firefox will not recognize it as a valid HTML element, not 100% sure
        why but suspect it has something to do with the namespace-->
        <xsl:element name="{name()}">
            <xsl:apply-templates select="*|@*|text()"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="n1:td[@styleCode='xdetails' and count(*)=0]" priority="2">
        <xsl:copy>
            <xsl:attribute name="class">
                <xsl:text>empty</xsl:text>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="n1:tr[last()] | n1:tbody[last()]">
        <!-- Can't use <xsl:copy> here. If you do, Firefox will not recognize it as a valid HTML element, not 100% sure
        why but suspect it has something to do with the namespace-->
        <xsl:element name="{name()}">
            <xsl:attribute name="class">
                <xsl:text>last</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates select="*|@*|text()"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="n1:table/@*|n1:thead/@*|n1:tfoot/@*|n1:tbody/@*|n1:colgroup/@*|n1:col/@*|n1:tr/@*|n1:th/@*|n1:td/@*">
        <xsl:attribute name="{translate(name(), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz')}">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <!-- Table rows that are not meant to be seen in our style sheet -->
    <xsl:template match="n1:tr[@styleCode='xasIgnore']" priority="1"/>

    <xsl:template match="n1:table/n1:caption">
        <span style="font-weight:bold; ">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--   RenderMultiMedia

      this currently only handles GIF's and JPEG's.  It could, however,
      be extended by including other image MIME types in the predicate
      and/or by generating <object> or <applet> tag with the correct
      params depending on the media type  @ID  =$imageRef  referencedObject
      -->

    <xsl:template match="n1:renderMultiMedia">
        <xsl:variable name="imageRef" select="@referencedObject"/>
        <xsl:choose>
            <xsl:when test="//n1:regionOfInterest[@ID=$imageRef]">
                <!-- Here is where the Region of Interest image referencing goes -->
                <xsl:if test="//n1:regionOfInterest[@ID=$imageRef]//n1:observationMedia/n1:value[@mediaType=&quot;image/gif&quot; or @mediaType=&quot;image/jpeg&quot;]">
                    <br clear="all"/>
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            graphics/
                            <xsl:value-of select="//n1:regionOfInterest[@ID=$imageRef]//n1:observationMedia/n1:value/n1:reference/@value"/>
                        </xsl:attribute>
                    </xsl:element>
                </xsl:if>
            </xsl:when>
            <xsl:otherwise>
                <!-- Here is where the direct MultiMedia image referencing goes -->
                <xsl:if test="//n1:observationMedia[@ID=$imageRef]/n1:value[@mediaType=&quot;image/gif&quot; or @mediaType=&quot;image/jpeg&quot;]">
                    <br clear="all"/>
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            graphics/
                            <xsl:value-of select="//n1:observationMedia[@ID=$imageRef]/n1:value/n1:reference/@value"/>
                        </xsl:attribute>
                    </xsl:element>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- StyleCode attributes are translated to class attributes -->
    <xsl:template match="@styleCode" priority="1">
        <xsl:attribute name="class">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <!--    Superscript or Subscript   -->
    <xsl:template match="n1:sup">
        <xsl:element name="sup">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="n1:sub">
        <xsl:element name="sub">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- care team table
          similar to patient banner table: a row per major section (health care providers, contacts) with 4 columns to make these all line up
  -->
    <xsl:template name="careTeam">
        <div class="section careTeamSection">
            <table class="careTeamTable">
                <xsl:if test="(count(n1:participant/n1:associatedEntity[@classCode='CAREGIVER']) + count(//n1:serviceEvent/n1:performer))&gt;0">
                    <tr>
                        <td colspan="4" class="sectionHeader">
                            <xsl:text>Health Care Providers</xsl:text>
                        </td>
                    </tr>
                    <xsl:apply-templates select="n1:participant/n1:associatedEntity[@classCode='CAREGIVER']" mode="providers"/>
                    <xsl:apply-templates select="//n1:serviceEvent/n1:performer" mode="providers"/>
                </xsl:if>
                <tr>
                    <td class="break" colspan="4"/>
                </tr>
                <xsl:if test="n1:participant/n1:associatedEntity[@classCode!='CAREGIVER'] and not (/n1:ClinicalDocument/n1:participant[substring(n1:associatedEntity/n1:id/@root,string-length(n1:associatedEntity/n1:id/@root)-5) = '.3.2.3'])">
                    <tr>
                        <td colspan="4" class="sectionHeader">
                            <xsl:text>Patient Contacts</xsl:text>
                        </td>
                    </tr>
                    <xsl:apply-templates select="n1:participant/n1:associatedEntity[@classCode!='CAREGIVER']" mode="patientContacts"/>
                </xsl:if>
            </table>
        </div>
    </xsl:template>

    <!-- Providers -->
    <xsl:template match="n1:associatedEntity | n1:assignedEntity" mode="providers">
        <tr>
            <td class="contactType" colspan="4">
                <xsl:choose>
                    <xsl:when test="@classCode='CAREGIVER'">
                        <xsl:text>Care Giver</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="n1:code/@code" mode="providers"/>
                        <xsl:if test="string-length(../n1:functionCode/@code)&gt;0">
                            <xsl:text> (</xsl:text>
                            <xsl:apply-templates mode="providers" select="../n1:functionCode"/>
                            <xsl:text>)</xsl:text>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
            </td>
        </tr>
        <tr>
            <td class="contactName">
                <xsl:apply-templates select="n1:assignedPerson/n1:name[1] | n1:associatedPerson/n1:name[1] | n1:representedOrganization/n1:name[1]"/>
            </td>
            <!-- providers address:  show address, or UNK-->
            <td class="contactAddr">
                <xsl:choose>
                    <xsl:when test="n1:addr[1]/@nullFlavor='UNK'">
                        <div class="dataBlock">
                            <xsl:text>Unknown</xsl:text>
                            <div class="label">Address</div>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="n1:addr[1]"/>
                    </xsl:otherwise>
                </xsl:choose>
            </td>
            <td class="contactTelPhone">
                <xsl:apply-templates select="n1:telecom[contains(@value, 'tel:')]"/>
            </td>
            <td class="contactTelOther">
                <xsl:apply-templates select="n1:telecom[not(contains(@value, 'tel:'))]"/>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="n1:serviceEvent/n1:performer" mode="providers">
        <xsl:apply-templates select="n1:assignedEntity[not(n1:assignedPerson = /n1:ClinicalDocument/n1:participant/n1:associatedEntity[@classCode='CAREGIVER']/n1:associatedPerson)]" mode="providers"/>
    </xsl:template>

    <xsl:template match="@code" mode="providers">
        <xsl:choose>
            <xsl:when test=".='260000000X'">Ambulatory Health Care Facilities</xsl:when>
            <xsl:when test=".='100000000X'">Behavioral Health and Social Service Providers</xsl:when>
            <xsl:when test=".='110000000X'">Chiropractic Providers</xsl:when>
            <xsl:when test=".='120000000X'">Dental Providers</xsl:when>
            <xsl:when test=".='130000000X'">Dietary and Nutritional Service Providers</xsl:when>
            <xsl:when test=".='140000000X'">Emergency Medical Service Providers</xsl:when>
            <xsl:when test=".='150000000X'">Eye and Vision Service Providers</xsl:when>
            <xsl:when test=".='160000000X'">Pharmacy Service Providers (Individuals)</xsl:when>
            <xsl:when test=".='200000000X'">Allopathic &amp; Osteopathic Physicians</xsl:when>
            <xsl:when test=".='210000000X'">Podiatric Medicine and Surgery Providers</xsl:when>
            <xsl:when test=".='220000000X'">Respiratory, Rehabilitative and Restorative Service Providers</xsl:when>
            <xsl:when test=".='230000000X'">Speech, Language and Hearing Providers</xsl:when>
            <xsl:when test=".='250000000X'">Agencies</xsl:when>
            <xsl:when test=".='280000000X'">Hospitals</xsl:when>
            <xsl:when test=".='290000000X'">Laboratories</xsl:when>
            <xsl:when test=".='300000000X'">Managed Care Organizations</xsl:when>
            <xsl:when test=".='310000000X'">Nursing and Custodial Care Facilities</xsl:when>
            <xsl:when test=".='320000000X'">Residential Treatment Facilities</xsl:when>
            <xsl:when test=".='330000000X'">Suppliers (including Pharmacies and Durable Medical Equipment)</xsl:when>
            <xsl:when test=".='360000000X'">Physician Assistants and Advanced Practice Nursing Providers</xsl:when>
            <xsl:when test=".='370000000X'">Nursing Service Related Providers</xsl:when>
            <xsl:when test=".='380000000X'">Respite Care Facility</xsl:when>
            <xsl:when test=".='PHARMACY'">Pharmacy</xsl:when>
            <xsl:when test=".='101Y00000X'">Counselor</xsl:when>
            <xsl:when test=".='102L00000X'">Psychoanalyst</xsl:when>
            <xsl:when test=".='102X00000X'">Poetry Therapist</xsl:when>
            <xsl:when test=".='103G00000X'">Clinical Neuropsychologist</xsl:when>
            <xsl:when test=".='103K00000X'">Behavioral Analyst</xsl:when>
            <xsl:when test=".='103T00000X'">Psychologist</xsl:when>
            <xsl:when test=".='104100000X'">Social Worker</xsl:when>
            <xsl:when test=".='106H00000X'">Marriage &amp; Family Therapist</xsl:when>
            <xsl:when test=".='111N00000X'">Chiropractor</xsl:when>
            <xsl:when test=".='122300000X'">Dentist</xsl:when>
            <xsl:when test=".='122400000X'">Denturist</xsl:when>
            <xsl:when test=".='124Q00000X'">Dental Hygienist</xsl:when>
            <xsl:when test=".='125J00000X'">Dental Therapist</xsl:when>
            <xsl:when test=".='125K00000X'">Advanced Practice Dental Therapist</xsl:when>
            <xsl:when test=".='126800000X'">Dental Assistant</xsl:when>
            <xsl:when test=".='126900000X'">Dental Laboratory Technician</xsl:when>
            <xsl:when test=".='132700000X'">Dietary Manager</xsl:when>
            <xsl:when test=".='133N00000X'">Nutritionist</xsl:when>
            <xsl:when test=".='133V00000X'">Dietitian, Registered</xsl:when>
            <xsl:when test=".='136A00000X'">Dietetic Technician, Registered</xsl:when>
            <xsl:when test=".='146D00000X'">Personal Emergency Response Attendant</xsl:when>
            <xsl:when test=".='146L00000X'">Emergency Medical Technician, Paramedic</xsl:when>
            <xsl:when test=".='146M00000X'">Emergency Medical Technician, Intermediate</xsl:when>
            <xsl:when test=".='146N00000X'">Emergency Medical Technician, Basic</xsl:when>
            <xsl:when test=".='152W00000X'">Optometrist</xsl:when>
            <xsl:when test=".='156F00000X'">Technician/Technologist</xsl:when>
            <xsl:when test=".='163W00000X'">Registered Nurse</xsl:when>
            <xsl:when test=".='164W00000X'">Licensed Practical Nurse</xsl:when>
            <xsl:when test=".='164X00000X'">Licensed Vocational Nurse</xsl:when>
            <xsl:when test=".='167G00000X'">Licensed Psychiatric Technician</xsl:when>
            <xsl:when test=".='170100000X'">Medical Genetics, Ph.D. Medical Genetics</xsl:when>
            <xsl:when test=".='170300000X'">Genetic Counselor, MS</xsl:when>
            <xsl:when test=".='171000000X'">Military Health Care Provider</xsl:when>
            <xsl:when test=".='171100000X'">Acupuncturist</xsl:when>
            <xsl:when test=".='171M00000X'">Case Manager/Care Coordinator</xsl:when>
            <xsl:when test=".='171R00000X'">Interpreter</xsl:when>
            <xsl:when test=".='171W00000X'">Contractor</xsl:when>
            <xsl:when test=".='172A00000X'">Driver</xsl:when>
            <xsl:when test=".='172M00000X'">Mechanotherapist</xsl:when>
            <xsl:when test=".='172P00000X'">Naprapath</xsl:when>
            <xsl:when test=".='172V00000X'">Community Health Worker</xsl:when>
            <xsl:when test=".='173000000X'">Legal Medicine</xsl:when>
            <xsl:when test=".='173C00000X'">Reflexologist</xsl:when>
            <xsl:when test=".='173F00000X'">Sleep Specialist, PhD</xsl:when>
            <xsl:when test=".='174200000X'">Meals</xsl:when>
            <xsl:when test=".='174400000X'">Specialist</xsl:when>
            <xsl:when test=".='174H00000X'">Health Educator</xsl:when>
            <xsl:when test=".='174M00000X'">Veterinarian</xsl:when>
            <xsl:when test=".='174N00000X'">Lactation Consultant, Non-RN</xsl:when>
            <xsl:when test=".='174V00000X'">Clinical Ethicist</xsl:when>
            <xsl:when test=".='175F00000X'">Naturopath</xsl:when>
            <xsl:when test=".='175L00000X'">Homeopath</xsl:when>
            <xsl:when test=".='175M00000X'">Midwife, Lay</xsl:when>
            <xsl:when test=".='176B00000X'">Midwife</xsl:when>
            <xsl:when test=".='176P00000X'">Funeral Director</xsl:when>
            <xsl:when test=".='177F00000X'">Lodging</xsl:when>
            <xsl:when test=".='183500000X'">Pharmacist</xsl:when>
            <xsl:when test=".='183700000X'">Pharmacy Technician</xsl:when>
            <xsl:when test=".='193200000X'">Multi-Specialty</xsl:when>
            <xsl:when test=".='193400000X'">Single Specialty</xsl:when>
            <xsl:when test=".='202C00000X'">Independent Medical Examiner</xsl:when>
            <xsl:when test=".='202K00000X'">Phlebology</xsl:when>
            <xsl:when test=".='204C00000X'">Neuromusculoskeletal Medicine, Sports Medicine</xsl:when>
            <xsl:when test=".='204D00000X'">Neuromusculoskeletal Medicine &amp; OMM</xsl:when>
            <xsl:when test=".='204E00000X'">Oral &amp; Maxillofacial Surgery</xsl:when>
            <xsl:when test=".='204F00000X'">Transplant Surgery</xsl:when>
            <xsl:when test=".='204R00000X'">Electrodiagnostic Medicine</xsl:when>
            <xsl:when test=".='207K00000X'">Allergy &amp; Immunology</xsl:when>
            <xsl:when test=".='207L00000X'">Anesthesiology</xsl:when>
            <xsl:when test=".='207N00000X'">Dermatology</xsl:when>
            <xsl:when test=".='207P00000X'">Emergency Medicine</xsl:when>
            <xsl:when test=".='207Q00000X'">Family Medicine</xsl:when>
            <xsl:when test=".='207R00000X'">Internal Medicine</xsl:when>
            <xsl:when test=".='207T00000X'">Neurological Surgery</xsl:when>
            <xsl:when test=".='207U00000X'">Nuclear Medicine</xsl:when>
            <xsl:when test=".='207V00000X'">Obstetrics &amp; Gynecology</xsl:when>
            <xsl:when test=".='207W00000X'">Ophthalmology</xsl:when>
            <xsl:when test=".='207X00000X'">Orthopaedic Surgery</xsl:when>
            <xsl:when test=".='207Y00000X'">Otolaryngology</xsl:when>
            <xsl:when test=".='208000000X'">Pediatrics</xsl:when>
            <xsl:when test=".='208100000X'">Physical Medicine &amp; Rehabilitation</xsl:when>
            <xsl:when test=".='208200000X'">Plastic Surgery</xsl:when>
            <xsl:when test=".='208600000X'">Surgery</xsl:when>
            <xsl:when test=".='208800000X'">Urology</xsl:when>
            <xsl:when test=".='208C00000X'">Colon &amp; Rectal Surgery</xsl:when>
            <xsl:when test=".='208D00000X'">General Practice</xsl:when>
            <xsl:when test=".='208G00000X'">Thoracic Surgery (Cardiothoracic Vascular Surgery)</xsl:when>
            <xsl:when test=".='208M00000X'">Hospitalist</xsl:when>
            <xsl:when test=".='208U00000X'">Clinical Pharmacology</xsl:when>
            <xsl:when test=".='209800000X'">Legal Medicine</xsl:when>
            <xsl:when test=".='211D00000X'">Assistant, Podiatric</xsl:when>
            <xsl:when test=".='213E00000X'">Podiatrist</xsl:when>
            <xsl:when test=".='221700000X'">Art Therapist</xsl:when>
            <xsl:when test=".='222Q00000X'">Developmental Therapist</xsl:when>
            <xsl:when test=".='222Z00000X'">Orthotist</xsl:when>
            <xsl:when test=".='224900000X'">Mastectomy Fitter</xsl:when>
            <xsl:when test=".='224L00000X'">Pedorthist</xsl:when>
            <xsl:when test=".='224P00000X'">Prosthetist</xsl:when>
            <xsl:when test=".='224Y00000X'">Clinical Exercise Physiologist</xsl:when>
            <xsl:when test=".='224Z00000X'">Occupational Therapy Assistant</xsl:when>
            <xsl:when test=".='225000000X'">Orthotic Fitter</xsl:when>
            <xsl:when test=".='225100000X'">Physical Therapist</xsl:when>
            <xsl:when test=".='225200000X'">Physical Therapy Assistant</xsl:when>
            <xsl:when test=".='225400000X'">Rehabilitation Practitioner</xsl:when>
            <xsl:when test=".='225500000X'">Specialist/Technologist</xsl:when>
            <xsl:when test=".='225600000X'">Dance Therapist</xsl:when>
            <xsl:when test=".='225700000X'">Massage Therapist</xsl:when>
            <xsl:when test=".='225800000X'">Recreation Therapist</xsl:when>
            <xsl:when test=".='225A00000X'">Music Therapist</xsl:when>
            <xsl:when test=".='225B00000X'">Pulmonary Function Technologist</xsl:when>
            <xsl:when test=".='225C00000X'">Rehabilitation Counselor</xsl:when>
            <xsl:when test=".='225X00000X'">Occupational Therapist</xsl:when>
            <xsl:when test=".='226300000X'">Kinesiotherapist</xsl:when>
            <xsl:when test=".='227800000X'">Respiratory Therapist, Certified</xsl:when>
            <xsl:when test=".='227900000X'">Respiratory Therapist, Registered</xsl:when>
            <xsl:when test=".='229N00000X'">Anaplastologist</xsl:when>
            <xsl:when test=".='231H00000X'">Audiologist</xsl:when>
            <xsl:when test=".='235500000X'">Specialist/Technologist</xsl:when>
            <xsl:when test=".='235Z00000X'">Speech-Language Pathologist</xsl:when>
            <xsl:when test=".='237600000X'">Audiologist-Hearing Aid Fitter</xsl:when>
            <xsl:when test=".='237700000X'">Hearing Instrument Specialist</xsl:when>
            <xsl:when test=".='242T00000X'">Perfusionist</xsl:when>
            <xsl:when test=".='243U00000X'">Radiology Practitioner Assistant</xsl:when>
            <xsl:when test=".='246Q00000X'">Spec/Tech, Pathology</xsl:when>
            <xsl:when test=".='246R00000X'">Technician, Pathology</xsl:when>
            <xsl:when test=".='246W00000X'">Technician, Cardiology</xsl:when>
            <xsl:when test=".='246X00000X'">Spec/Tech, Cardiovascular</xsl:when>
            <xsl:when test=".='246Y00000X'">Spec/Tech, Health Info</xsl:when>
            <xsl:when test=".='246Z00000X'">Specialist/Technologist, Other</xsl:when>
            <xsl:when test=".='247000000X'">Technician, Health Information</xsl:when>
            <xsl:when test=".='247100000X'">Radiologic Technologist</xsl:when>
            <xsl:when test=".='247200000X'">Technician, Other</xsl:when>
            <xsl:when test=".='251300000X'">Local Education Agency (LEA)</xsl:when>
            <xsl:when test=".='251B00000X'">Case Management</xsl:when>
            <xsl:when test=".='251C00000X'">Day Training, Developmentally Disabled Services</xsl:when>
            <xsl:when test=".='251E00000X'">Home Health</xsl:when>
            <xsl:when test=".='251F00000X'">Home Infusion</xsl:when>
            <xsl:when test=".='251G00000X'">Hospice Care, Community Based</xsl:when>
            <xsl:when test=".='251J00000X'">Nursing Care</xsl:when>
            <xsl:when test=".='251K00000X'">Public Health or Welfare</xsl:when>
            <xsl:when test=".='251S00000X'">Community/Behavioral Health</xsl:when>
            <xsl:when test=".='251T00000X'">PACE Provider Organization</xsl:when>
            <xsl:when test=".='251V00000X'">Voluntary or Charitable</xsl:when>
            <xsl:when test=".='251X00000X'">Supports Brokerage</xsl:when>
            <xsl:when test=".='252Y00000X'">Early Intervention Provider Agency</xsl:when>
            <xsl:when test=".='253J00000X'">Foster Care Agency</xsl:when>
            <xsl:when test=".='253Z00000X'">In Home Supportive Care</xsl:when>
            <xsl:when test=".='261Q00000X'">Clinic/Center</xsl:when>
            <xsl:when test=".='273100000X'">Epilepsy Unit</xsl:when>
            <xsl:when test=".='273R00000X'">Psychiatric Unit</xsl:when>
            <xsl:when test=".='273Y00000X'">Rehabilitation Unit</xsl:when>
            <xsl:when test=".='275N00000X'">Medicare Defined Swing Bed Unit</xsl:when>
            <xsl:when test=".='276400000X'">Rehabilitation, Substance Use Disorder Unit</xsl:when>
            <xsl:when test=".='281P00000X'">Chronic Disease Hospital</xsl:when>
            <xsl:when test=".='282E00000X'">Long Term Care Hospital</xsl:when>
            <xsl:when test=".='282J00000X'">Religious Nonmedical Health Care Institution</xsl:when>
            <xsl:when test=".='282N00000X'">General Acute Care Hospital</xsl:when>
            <xsl:when test=".='283Q00000X'">Psychiatric Hospital</xsl:when>
            <xsl:when test=".='283X00000X'">Rehabilitation Hospital</xsl:when>
            <xsl:when test=".='284300000X'">Special Hospital</xsl:when>
            <xsl:when test=".='286500000X'">Military Hospital</xsl:when>
            <xsl:when test=".='287300000X'">Christian Science Sanitorium</xsl:when>
            <xsl:when test=".='291900000X'">Military Clinical Medical Laboratory</xsl:when>
            <xsl:when test=".='291U00000X'">Clinical Medical Laboratory</xsl:when>
            <xsl:when test=".='292200000X'">Dental Laboratory</xsl:when>
            <xsl:when test=".='293D00000X'">Physiological Laboratory</xsl:when>
            <xsl:when test=".='302F00000X'">Exclusive Provider Organization</xsl:when>
            <xsl:when test=".='302R00000X'">Health Maintenance Organization</xsl:when>
            <xsl:when test=".='305R00000X'">Preferred Provider Organization</xsl:when>
            <xsl:when test=".='305S00000X'">Point of Service</xsl:when>
            <xsl:when test=".='310400000X'">Assisted Living Facility</xsl:when>
            <xsl:when test=".='310500000X'">Intermediate Care Facility, Mental Illness</xsl:when>
            <xsl:when test=".='311500000X'">Alzheimer Center (Dementia Center)</xsl:when>
            <xsl:when test=".='311Z00000X'">Custodial Care Facility</xsl:when>
            <xsl:when test=".='313M00000X'">Nursing Facility/Intermediate Care Facility</xsl:when>
            <xsl:when test=".='314000000X'">Skilled Nursing Facility</xsl:when>
            <xsl:when test=".='315D00000X'">Hospice, Inpatient</xsl:when>
            <xsl:when test=".='315P00000X'">Intermediate Care Facility, Mentally Retarded</xsl:when>
            <xsl:when test=".='317400000X'">Christian Science Facility</xsl:when>
            <xsl:when test=".='320600000X'">Residential Treatment Facility, Mental Retardation and/or Developmental Disabilities</xsl:when>
            <xsl:when test=".='320700000X'">Residential Treatment Facility, Physical Disabilities</xsl:when>
            <xsl:when test=".='320800000X'">Community Based Residential Treatment Facility, Mental Illness</xsl:when>
            <xsl:when test=".='320900000X'">Community Based Residential Treatment, Mental Retardation and/or Developmental Disabilities</xsl:when>
            <xsl:when test=".='322D00000X'">Residential Treatment Facility, Emotionally Disturbed Children</xsl:when>
            <xsl:when test=".='323P00000X'">Psychiatric Residential Treatment Facility</xsl:when>
            <xsl:when test=".='324500000X'">Substance Abuse Rehabilitation Facility</xsl:when>
            <xsl:when test=".='331L00000X'">Blood Bank</xsl:when>
            <xsl:when test=".='332000000X'">Military/U.S. Coast Guard Pharmacy</xsl:when>
            <xsl:when test=".='332100000X'">Department of Veterans Affairs (VA) Pharmacy</xsl:when>
            <xsl:when test=".='332800000X'">Indian Health Service/Tribal/Urban Indian Health (I/T/U) Pharmacy</xsl:when>
            <xsl:when test=".='332900000X'">Non-Pharmacy Dispensing Site</xsl:when>
            <xsl:when test=".='332B00000X'">Durable Medical Equipment &amp; Medical Supplies</xsl:when>
            <xsl:when test=".='332G00000X'">Eye Bank</xsl:when>
            <xsl:when test=".='332H00000X'">Eyewear Supplier (Equipment, not the service)</xsl:when>
            <xsl:when test=".='332S00000X'">Hearing  Aid Equipment</xsl:when>
            <xsl:when test=".='332U00000X'">Home Delivered Meals</xsl:when>
            <xsl:when test=".='333300000X'">Emergency Response System Companies</xsl:when>
            <xsl:when test=".='333600000X'">Pharmacy</xsl:when>
            <xsl:when test=".='335E00000X'">Prosthetic/Orthotic Supplier</xsl:when>
            <xsl:when test=".='335G00000X'">Medical Foods Supplier</xsl:when>
            <xsl:when test=".='335U00000X'">Organ Procurement Organization</xsl:when>
            <xsl:when test=".='335V00000X'">Portable X-Ray Supplier</xsl:when>
            <xsl:when test=".='341600000X'">Ambulance</xsl:when>
            <xsl:when test=".='341800000X'">Military/U.S. Coast Guard Transport</xsl:when>
            <xsl:when test=".='343800000X'">Secured Medical Transport (VAN)</xsl:when>
            <xsl:when test=".='343900000X'">Non-emergency Medical Transport (VAN)</xsl:when>
            <xsl:when test=".='344600000X'">Taxi</xsl:when>
            <xsl:when test=".='344800000X'">Air Carrier</xsl:when>
            <xsl:when test=".='347B00000X'">Bus</xsl:when>
            <xsl:when test=".='347C00000X'">Private Vehicle</xsl:when>
            <xsl:when test=".='347D00000X'">Train</xsl:when>
            <xsl:when test=".='347E00000X'">Transportation Broker</xsl:when>
            <xsl:when test=".='363A00000X'">Physician Assistant</xsl:when>
            <xsl:when test=".='363L00000X'">Nurse Practitioner</xsl:when>
            <xsl:when test=".='364S00000X'">Clinical Nurse Specialist</xsl:when>
            <xsl:when test=".='367500000X'">Nurse Anesthetist, Certified Registered</xsl:when>
            <xsl:when test=".='367A00000X'">Advanced Practice Midwife</xsl:when>
            <xsl:when test=".='367H00000X'">Anesthesiologist Assistant</xsl:when>
            <xsl:when test=".='372500000X'">Chore Provider</xsl:when>
            <xsl:when test=".='372600000X'">Adult Companion</xsl:when>
            <xsl:when test=".='373H00000X'">Day Training/Habilitation Specialist</xsl:when>
            <xsl:when test=".='374700000X'">Technician</xsl:when>
            <xsl:when test=".='374J00000X'">Doula</xsl:when>
            <xsl:when test=".='374K00000X'">Religious Nonmedical Practitioner</xsl:when>
            <xsl:when test=".='374T00000X'">Religious Nonmedical Nursing Personnel</xsl:when>
            <xsl:when test=".='374U00000X'">Home Health Aide</xsl:when>
            <xsl:when test=".='376G00000X'">Nursing Home Administrator</xsl:when>
            <xsl:when test=".='376J00000X'">Homemaker</xsl:when>
            <xsl:when test=".='376K00000X'">Nurse's Aide</xsl:when>
            <xsl:when test=".='385H00000X'">Respite Care</xsl:when>
            <xsl:when test=".='390200000X'">Student in an Organized Health Care Education/Training Program</xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="n1:functionCode" mode="providers">
        <xsl:choose>
            <xsl:when test="./@code='AD'">Admitting</xsl:when>
            <xsl:when test="./@code='AT'">Attending</xsl:when>
            <xsl:when test="./@code='CP'">Consulting Provider</xsl:when>
            <xsl:when test="./@code='FHCP'">Family Health Care Professional</xsl:when>
            <xsl:when test="./@code='PP'">Primary Care Provider</xsl:when>
            <xsl:when test="./@code='RP'">Referring Provider</xsl:when>
            <xsl:when test="./@code='RT'">Referred to Provider</xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="./@code"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- End Providers section-->

    <!-- Patient Contacts -->
    <xsl:template match="n1:associatedEntity" mode="patientContacts">
        <tr>
            <td class="contactType" colspan="4">
                <xsl:apply-templates select="." mode="patientClassCode"/>
                <xsl:if test="string-length(n1:code/@code)&gt;0">
                    <xsl:if test="n1:code/@code!='ECON'">
                        <xsl:text> (</xsl:text>
                        <xsl:value-of select="n1:code/@displayName"/>
                        <xsl:text>)</xsl:text>
                    </xsl:if>
                </xsl:if>
            </td>
        </tr>
        <tr>
            <td class="contactName">
                <xsl:apply-templates select="n1:assignedPerson/n1:name[1] | n1:associatedPerson/n1:name[1] | n1:representedOrganization/n1:name[1]"/>
            </td>
            <!-- providers address:  show address, or UNK-->
            <td class="contactAddr">
                <xsl:choose>
                    <xsl:when test="n1:addr[1]/@nullFlavor='UNK'">
                        <div class="dataBlock">
                            <xsl:text>Unknown</xsl:text>
                            <div class="label">Address</div>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="n1:addr[1]"/>
                    </xsl:otherwise>
                </xsl:choose>
            </td>
            <td class="contactTelPhone">
                <xsl:apply-templates select="n1:telecom[contains(@value, 'tel:')]"/>
            </td>
            <td class="contactTelOther">
                <xsl:apply-templates select="n1:telecom[not(contains(@value, 'tel:'))]"/>
            </td>
        </tr>
    </xsl:template>

    <!-- Footer Banner -->
    <xsl:template name="documentFooter">
        <div class="section documentFooter">
            <div class="sectionHeader">
                <xsl:text>Document Details</xsl:text>
            </div>
            <div class="sectionBody">
                <div class="organizationName">
                    <xsl:value-of select="n1:custodian/n1:assignedCustodian/n1:representedCustodianOrganization/n1:name"/>
                </div>
                <div class="address column">
                    <xsl:apply-templates select="n1:custodian/n1:assignedCustodian/n1:representedCustodianOrganization/n1:addr"/>
                </div>
                <div class="phone column">
                    <xsl:apply-templates select="n1:custodian/n1:assignedCustodian/n1:representedCustodianOrganization/n1:telecom[not(@nullFlavor)]"/>
                </div>
                <div class="details column">
                    <div class="value">
                        <xsl:value-of select="n1:author/n1:assignedAuthor/n1:assignedAuthoringDevice/n1:softwareName"/>
                    </div>
                    <div class="value">
                        <xsl:call-template name="formatDTTM">
                            <xsl:with-param name="date" select="n1:effectiveTime/@value"/>
                        </xsl:call-template>
                    </div>
                    <div class="value">
                        <xsl:apply-templates select="n1:author[1]/n1:assignedAuthor/n1:assignedPerson/n1:name[1]"/>
                    </div>
                    <div class="label">Published</div>
                </div>
            </div>
            <div>
                <table class="poweredBy">
                    <tr>
                        <td class="poweredBy">
                            <xsl:text>Powered by </xsl:text>
                            <span class="poweredBy">
                                <!--
              <xsl:attribute name="href">
                                  <xsl:value-of select="www.kareo.com/ehr"/>Kareo Clinical
                              </xsl:attribute>
              -->
                                <a href="http://www.kareo.com/ehr" target="_blank" >Kareo Clinical</a>
                            </span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </xsl:template>


    <xsl:template name="payer">
        <table class="itemTable" style="; width: 100%" border="0">
            <xsl:for-each select="/n1:ClinicalDocument/n1:participant[@typeCode=&quot;HLD&quot;]">
                <tr>
                    <td class="nameColumn">
                        <xsl:text>Subscriber: </xsl:text>
                    </td>
                    <td>
                        <xsl:apply-templates select="n1:associatedEntity/n1:associatedPerson/n1:name[1]"/>
                    </td>
                    <td class="nameColumn">
                        <xsl:text>Payer: </xsl:text>
                    </td>
                    <td>
                        <xsl:apply-templates select="n1:associatedEntity/n1:scopingOrganization/n1:name[1]"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="nameColumn">
                        ID:<xsl:value-of select="n1:associatedEntity/n1:id/@extension"/><br/>
                        <xsl:call-template name="getContactInfo">
                            <xsl:with-param name="contact" select="n1:associatedEntity"/>
                        </xsl:call-template>
                    </td>
                    <td></td>
                    <td>
                        <xsl:call-template name="getContactInfo">
                            <xsl:with-param name="contact" select="n1:associatedEntity/n1:scopingOrganization"/>
                        </xsl:call-template>
                    </td>
                </tr>
                <tr>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>

    <xsl:template match="n1:languageCode">
        <xsl:choose>
            <xsl:when test="@code='aar'">Afar</xsl:when>
            <xsl:when test="@code='abk'">Abkhazian</xsl:when>
            <xsl:when test="@code='afr'">Afrikaans</xsl:when>
            <xsl:when test="@code='aka'">Akan</xsl:when>
            <xsl:when test="@code='sqi'">Albanian</xsl:when>
            <xsl:when test="@code='amh'">Amharic</xsl:when>
            <xsl:when test="@code='ara'">Arabic</xsl:when>
            <xsl:when test="@code='arg'">Aragonese</xsl:when>
            <xsl:when test="@code='hye'">Armenian</xsl:when>
            <xsl:when test="@code='asm'">Assamese</xsl:when>
            <xsl:when test="@code='ava'">Avaric</xsl:when>
            <xsl:when test="@code='ave'">Avestan</xsl:when>
            <xsl:when test="@code='aym'">Aymara</xsl:when>
            <xsl:when test="@code='aze'">Azerbaijani</xsl:when>
            <xsl:when test="@code='bak'">Bashkir</xsl:when>
            <xsl:when test="@code='bam'">Bambara</xsl:when>
            <xsl:when test="@code='eus'">Basque</xsl:when>
            <xsl:when test="@code='bel'">Belarusian</xsl:when>
            <xsl:when test="@code='ben'">Bengali</xsl:when>
            <xsl:when test="@code='bih'">Bihari languages</xsl:when>
            <xsl:when test="@code='bis'">Bislama</xsl:when>
            <xsl:when test="@code='bos'">Bosnian</xsl:when>
            <xsl:when test="@code='bre'">Breton</xsl:when>
            <xsl:when test="@code='bul'">Bulgarian</xsl:when>
            <xsl:when test="@code='mya'">Burmese</xsl:when>
            <xsl:when test="@code='cat'">Catalan</xsl:when>
            <xsl:when test="@code='cha'">Chamorro</xsl:when>
            <xsl:when test="@code='che'">Chechen</xsl:when>
            <xsl:when test="@code='zho'">Chinese</xsl:when>
            <xsl:when test="@code='chu'">Church Slavic</xsl:when>
            <xsl:when test="@code='chv'">Chuvash</xsl:when>
            <xsl:when test="@code='cor'">Cornish</xsl:when>
            <xsl:when test="@code='cos'">Corsican</xsl:when>
            <xsl:when test="@code='cre'">Cree</xsl:when>
            <xsl:when test="@code='ces'">Czech</xsl:when>
            <xsl:when test="@code='dan'">Danish</xsl:when>
            <xsl:when test="@code='div'">Divehi</xsl:when>
            <xsl:when test="@code='nld'">Dutch</xsl:when>
            <xsl:when test="@code='dzo'">Dzongkha</xsl:when>
            <xsl:when test="@code='eng'">English</xsl:when>
            <xsl:when test="@code='epo'">Esperanto</xsl:when>
            <xsl:when test="@code='est'">Estonian</xsl:when>
            <xsl:when test="@code='ewe'">Ewe</xsl:when>
            <xsl:when test="@code='fao'">Faroese</xsl:when>
            <xsl:when test="@code='fij'">Fijian</xsl:when>
            <xsl:when test="@code='fin'">Finnish</xsl:when>
            <xsl:when test="@code='fra'">French</xsl:when>
            <xsl:when test="@code='fry'">Western Frisian</xsl:when>
            <xsl:when test="@code='ful'">Fulah</xsl:when>
            <xsl:when test="@code='kat'">Georgian</xsl:when>
            <xsl:when test="@code='deu'">German</xsl:when>
            <xsl:when test="@code='gla'">Gaelic</xsl:when>
            <xsl:when test="@code='gle'">Irish</xsl:when>
            <xsl:when test="@code='glg'">Galician</xsl:when>
            <xsl:when test="@code='glv'">Manx</xsl:when>
            <xsl:when test="@code='ell'">Greek</xsl:when>
            <xsl:when test="@code='grn'">Guarani</xsl:when>
            <xsl:when test="@code='guj'">Gujarati</xsl:when>
            <xsl:when test="@code='hat'">Haitian</xsl:when>
            <xsl:when test="@code='hau'">Hausa</xsl:when>
            <xsl:when test="@code='heb'">Hebrew</xsl:when>
            <xsl:when test="@code='her'">Herero</xsl:when>
            <xsl:when test="@code='hin'">Hindi</xsl:when>
            <xsl:when test="@code='hmo'">Hiri Motu</xsl:when>
            <xsl:when test="@code='hrv'">Croatian</xsl:when>
            <xsl:when test="@code='hun'">Hungarian</xsl:when>
            <xsl:when test="@code='ibo'">Igbo</xsl:when>
            <xsl:when test="@code='isl'">Icelandic</xsl:when>
            <xsl:when test="@code='ido'">Ido</xsl:when>
            <xsl:when test="@code='iii'">Sichuan Yi</xsl:when>
            <xsl:when test="@code='iku'">Inuktitut</xsl:when>
            <xsl:when test="@code='ile'">Interlingue</xsl:when>
            <xsl:when test="@code='ina'">Interlingua</xsl:when>
            <xsl:when test="@code='ind'">Indonesian</xsl:when>
            <xsl:when test="@code='ipk'">Inupiaq</xsl:when>
            <xsl:when test="@code='ita'">Italian</xsl:when>
            <xsl:when test="@code='jav'">Javanese</xsl:when>
            <xsl:when test="@code='jpn'">Japanese</xsl:when>
            <xsl:when test="@code='kal'">Kalaallisut</xsl:when>
            <xsl:when test="@code='kan'">Kannada</xsl:when>
            <xsl:when test="@code='kas'">Kashmiri</xsl:when>
            <xsl:when test="@code='kau'">Kanuri</xsl:when>
            <xsl:when test="@code='kaz'">Kazakh</xsl:when>
            <xsl:when test="@code='khm'">Khmer</xsl:when>
            <xsl:when test="@code='kik'">Kikuyu</xsl:when>
            <xsl:when test="@code='kin'">Kinyarwanda</xsl:when>
            <xsl:when test="@code='kir'">Kirghiz</xsl:when>
            <xsl:when test="@code='kom'">Komi</xsl:when>
            <xsl:when test="@code='kon'">Kongo</xsl:when>
            <xsl:when test="@code='kor'">Korean</xsl:when>
            <xsl:when test="@code='kua'">Kuanyama</xsl:when>
            <xsl:when test="@code='kur'">Kurdish</xsl:when>
            <xsl:when test="@code='lao'">Lao</xsl:when>
            <xsl:when test="@code='lat'">Latin</xsl:when>
            <xsl:when test="@code='lav'">Latvian</xsl:when>
            <xsl:when test="@code='lim'">Limburgan</xsl:when>
            <xsl:when test="@code='lin'">Lingala</xsl:when>
            <xsl:when test="@code='lit'">Lithuanian</xsl:when>
            <xsl:when test="@code='ltz'">Luxembourgish</xsl:when>
            <xsl:when test="@code='lub'">Luba-Katanga</xsl:when>
            <xsl:when test="@code='lug'">Ganda</xsl:when>
            <xsl:when test="@code='mkd'">Macedonian</xsl:when>
            <xsl:when test="@code='mah'">Marshallese</xsl:when>
            <xsl:when test="@code='mal'">Malayalam</xsl:when>
            <xsl:when test="@code='mri'">Maori</xsl:when>
            <xsl:when test="@code='mar'">Marathi</xsl:when>
            <xsl:when test="@code='msa'">Malay</xsl:when>
            <xsl:when test="@code='mlg'">Malagasy</xsl:when>
            <xsl:when test="@code='mlt'">Maltese</xsl:when>
            <xsl:when test="@code='mon'">Mongolian</xsl:when>
            <xsl:when test="@code='nau'">Nauru</xsl:when>
            <xsl:when test="@code='nav'">Navajo</xsl:when>
            <xsl:when test="@code='nbl'">Ndebele, South</xsl:when>
            <xsl:when test="@code='nde'">Ndebele, North</xsl:when>
            <xsl:when test="@code='ndo'">Ndonga</xsl:when>
            <xsl:when test="@code='nep'">Nepali</xsl:when>
            <xsl:when test="@code='nno'">Norwegian Nynorsk</xsl:when>
            <xsl:when test="@code='nob'">Bokmål, Norwegian</xsl:when>
            <xsl:when test="@code='nor'">Norwegian</xsl:when>
            <xsl:when test="@code='nya'">Chichewa</xsl:when>
            <xsl:when test="@code='oci'">Occitan (post 1500)</xsl:when>
            <xsl:when test="@code='oji'">Ojibwa</xsl:when>
            <xsl:when test="@code='ori'">Oriya</xsl:when>
            <xsl:when test="@code='orm'">Oromomaffia</xsl:when>
            <xsl:when test="@code='oss'">Ossetian</xsl:when>
            <xsl:when test="@code='pan'">Panjabi</xsl:when>
            <xsl:when test="@code='fas'">Persian</xsl:when>
            <xsl:when test="@code='pli'">Pali</xsl:when>
            <xsl:when test="@code='pol'">Polish</xsl:when>
            <xsl:when test="@code='por'">Portuguese</xsl:when>
            <xsl:when test="@code='pus'">Pushto</xsl:when>
            <xsl:when test="@code='que'">Quechua</xsl:when>
            <xsl:when test="@code='roh'">Romansh</xsl:when>
            <xsl:when test="@code='ron'">Romanian</xsl:when>
            <xsl:when test="@code='run'">Rundi</xsl:when>
            <xsl:when test="@code='rus'">Russian</xsl:when>
            <xsl:when test="@code='sag'">Sango</xsl:when>
            <xsl:when test="@code='san'">Sanskrit</xsl:when>
            <xsl:when test="@code='sin'">Sinhala</xsl:when>
            <xsl:when test="@code='slk'">Slovak</xsl:when>
            <xsl:when test="@code='slv'">Slovenian</xsl:when>
            <xsl:when test="@code='sme'">Northern Sami</xsl:when>
            <xsl:when test="@code='smo'">Samoan</xsl:when>
            <xsl:when test="@code='sna'">Shona</xsl:when>
            <xsl:when test="@code='snd'">Sindhi</xsl:when>
            <xsl:when test="@code='som'">Somali</xsl:when>
            <xsl:when test="@code='sot'">Sotho, Southern</xsl:when>
            <xsl:when test="@code='spa'">Spanish</xsl:when>
            <xsl:when test="@code='srd'">Sardinian</xsl:when>
            <xsl:when test="@code='srp'">Serbian</xsl:when>
            <xsl:when test="@code='ssw'">Swati</xsl:when>
            <xsl:when test="@code='sun'">Sundanese</xsl:when>
            <xsl:when test="@code='swa'">Swahili</xsl:when>
            <xsl:when test="@code='swe'">Swedish</xsl:when>
            <xsl:when test="@code='tah'">Tahitian</xsl:when>
            <xsl:when test="@code='tam'">Tamil</xsl:when>
            <xsl:when test="@code='tat'">Tatar</xsl:when>
            <xsl:when test="@code='tel'">Telugu</xsl:when>
            <xsl:when test="@code='tgk'">Tajik</xsl:when>
            <xsl:when test="@code='tgl'">Tagalog</xsl:when>
            <xsl:when test="@code='tha'">Thai</xsl:when>
            <xsl:when test="@code='bod'">Tibetan</xsl:when>
            <xsl:when test="@code='tir'">Tigrinya</xsl:when>
            <xsl:when test="@code='ton'">Tonga (Tonga Islands)</xsl:when>
            <xsl:when test="@code='tsn'">Tswana</xsl:when>
            <xsl:when test="@code='tso'">Tsonga</xsl:when>
            <xsl:when test="@code='tuk'">Turkmen</xsl:when>
            <xsl:when test="@code='tur'">Turkish</xsl:when>
            <xsl:when test="@code='twi'">Twi</xsl:when>
            <xsl:when test="@code='uig'">Uighur</xsl:when>
            <xsl:when test="@code='ukr'">Ukrainian</xsl:when>
            <xsl:when test="@code='urd'">Urdu</xsl:when>
            <xsl:when test="@code='uzb'">Uzbek</xsl:when>
            <xsl:when test="@code='ven'">Venda</xsl:when>
            <xsl:when test="@code='vie'">Vietnamese</xsl:when>
            <xsl:when test="@code='vol'">Volapük</xsl:when>
            <xsl:when test="@code='cym'">Welsh</xsl:when>
            <xsl:when test="@code='wln'">Walloon</xsl:when>
            <xsl:when test="@code='wol'">Wolof</xsl:when>
            <xsl:when test="@code='xho'">Xhosa</xsl:when>
            <xsl:when test="@code='yid'">Yiddish</xsl:when>
            <xsl:when test="@code='yor'">Yoruba</xsl:when>
            <xsl:when test="@code='zha'">Zhuang</xsl:when>
            <xsl:when test="@code='zul'">Zulu</xsl:when>
            <xsl:when test="@code='sgn'">Sign</xsl:when>
            <xsl:when test="@code='sgn'">Sign Language</xsl:when>
            <xsl:when test="@code='cpf'">French Creole</xsl:when>
            <xsl:when test="@code='hmn'">Hmong</xsl:when>
            <xsl:when test="@code='fil'">Filipino</xsl:when>
            <xsl:when test="@code='ab'">Abkhazian</xsl:when>
            <xsl:when test="@code='aa'">Afar</xsl:when>
            <xsl:when test="@code='af'">Afrikaans</xsl:when>
            <xsl:when test="@code='sq'">Albanian</xsl:when>
            <xsl:when test="@code='am'">Amharic</xsl:when>
            <xsl:when test="@code='ar'">Arabic</xsl:when>
            <xsl:when test="@code='hy'">Armenian</xsl:when>
            <xsl:when test="@code='ay'">Aymara</xsl:when>
            <xsl:when test="@code='az'">Azerbaijani; Azeri</xsl:when>
            <xsl:when test="@code='ba'">Bashkir</xsl:when>
            <xsl:when test="@code='eu'">Basque</xsl:when>
            <xsl:when test="@code='be'">Belarusian</xsl:when>
            <xsl:when test="@code='bn'">Bengali</xsl:when>
            <xsl:when test="@code='bi'">Bislama</xsl:when>
            <xsl:when test="@code='bs'">Bosnian</xsl:when>
            <xsl:when test="@code='br'">Breton</xsl:when>
            <xsl:when test="@code='bg'">Bulgarian</xsl:when>
            <xsl:when test="@code='my'">Burmese</xsl:when>
            <xsl:when test="@code='zh'">Cantonese</xsl:when>
            <xsl:when test="@code='ca'">Catalan; Valencian</xsl:when>
            <xsl:when test="@code='ch'">Chamorro</xsl:when>
            <xsl:when test="@code='zh'">Chaochow; Chao-Chou; Chaozhou; Teochew</xsl:when>
            <xsl:when test="@code='zh'">Chinese</xsl:when>
            <xsl:when test="@code='co'">Corsican</xsl:when>
            <xsl:when test="@code='hr'">Croatian</xsl:when>
            <xsl:when test="@code='cs'">Czech</xsl:when>
            <xsl:when test="@code='da'">Danish</xsl:when>
            <xsl:when test="@code='fa'">Dari; Afghan Persian</xsl:when>
            <xsl:when test="@code='nl'">Dutch</xsl:when>
            <xsl:when test="@code='en'">English</xsl:when>
            <xsl:when test="@code='fa'">Farsi; Iranian Persian</xsl:when>
            <xsl:when test="@code='fj'">Fijian</xsl:when>
            <xsl:when test="@code='fi'">Finnish</xsl:when>
            <xsl:when test="@code='nl'">Flemish</xsl:when>
            <xsl:when test="@code='fr'">French</xsl:when>
            <xsl:when test="@code='zh'">Fuchow; Fuzhou; Min Dong Chinese</xsl:when>
            <xsl:when test="@code='zh'">Fukienese; Taiwanese; Min Nan Chinese</xsl:when>
            <xsl:when test="@code='ff'">Fulah; Fulani</xsl:when>
            <xsl:when test="@code='ka'">Georgian</xsl:when>
            <xsl:when test="@code='de'">German</xsl:when>
            <xsl:when test="@code='el'">Greek; Modern</xsl:when>
            <xsl:when test="@code='gn'">Guarani</xsl:when>
            <xsl:when test="@code='gu'">Gujarati; Gujarathi</xsl:when>
            <xsl:when test="@code='ht '">Haitian; Haitian Creole</xsl:when>
            <xsl:when test="@code='zh'">Hakka Chinese</xsl:when>
            <xsl:when test="@code='he'">Hebrew</xsl:when>
            <xsl:when test="@code='hi'">Hindi</xsl:when>
            <xsl:when test="@code='hu'">Hungarian</xsl:when>
            <xsl:when test="@code='is'">Icelandic</xsl:when>
            <xsl:when test="@code='id'">Indonesian</xsl:when>
            <xsl:when test="@code='ga'">Irish ; Irish Gaelic</xsl:when>
            <xsl:when test="@code='it'">Italian</xsl:when>
            <xsl:when test="@code='ja'">Japanese</xsl:when>
            <xsl:when test="@code='jv'">Javanese</xsl:when>
            <xsl:when test="@code='kl'">Kalaallisut; Greenlandic</xsl:when>
            <xsl:when test="@code='kn'">Kannada</xsl:when>
            <xsl:when test="@code='ks'">Kashmiri</xsl:when>
            <xsl:when test="@code='kk'">Kazakh</xsl:when>
            <xsl:when test="@code='km'">Khmer; Cambodian</xsl:when>
            <xsl:when test="@code='rw'">Kinyarwanda</xsl:when>
            <xsl:when test="@code='ky'">Kirghiz</xsl:when>
            <xsl:when test="@code='rn'">Kirundi; Rundi</xsl:when>
            <xsl:when test="@code='ko'">Korean</xsl:when>
            <xsl:when test="@code='ku'">Kurdish</xsl:when>
            <xsl:when test="@code='ky'">Kyrgyz</xsl:when>
            <xsl:when test="@code='lo'">Lao</xsl:when>
            <xsl:when test="@code='lv'">Latvian</xsl:when>
            <xsl:when test="@code='ln'">Lingala</xsl:when>
            <xsl:when test="@code='lt'">Lithuanian</xsl:when>
            <xsl:when test="@code='mk'">Macedonian</xsl:when>
            <xsl:when test="@code='mg'">Malagasy</xsl:when>
            <xsl:when test="@code='ms'">Malay</xsl:when>
            <xsl:when test="@code='ml'">Malayalam</xsl:when>
            <xsl:when test="@code='zh'">Mandarin Chinese</xsl:when>
            <xsl:when test="@code='mr'">Marathi</xsl:when>
            <xsl:when test="@code='mh'">Marshallese</xsl:when>
            <xsl:when test="@code='ro'">Moldovan; Moldavian</xsl:when>
            <xsl:when test="@code='mn'">Mongolian</xsl:when>
            <xsl:when test="@code='nv'">Navaho; Navajo</xsl:when>
            <xsl:when test="@code='ne'">Nepalese; Nepali</xsl:when>
            <xsl:when test="@code='no'">Norwegian</xsl:when>
            <xsl:when test="@code='oc'">Occitan</xsl:when>
            <xsl:when test="@code='or'">Oriya</xsl:when>
            <xsl:when test="@code='om'">Oromo</xsl:when>
            <xsl:when test="@code='pa'">Panjabi; Punjabi</xsl:when>
            <xsl:when test="@code='fa'">Persian</xsl:when>
            <xsl:when test="@code='pl'">Polish</xsl:when>
            <xsl:when test="@code='pt'">Portuguese</xsl:when>
            <xsl:when test="@code='ps'">Pushto; Pashto</xsl:when>
            <xsl:when test="@code='ro'">Romanian</xsl:when>
            <xsl:when test="@code='ru'">Russian</xsl:when>
            <xsl:when test="@code='sm'">Samoan</xsl:when>
            <xsl:when test="@code='gd'">Scottish Gaelic</xsl:when>
            <xsl:when test="@code='sr'">Serbian</xsl:when>
            <xsl:when test="@code='sh'">Serbo-Croatian</xsl:when>
            <xsl:when test="@code='zh'">Shanghainese; Wu Chinese</xsl:when>
            <xsl:when test="@code='sn'">Shona</xsl:when>
            <xsl:when test="@code='sd'">Sindhi</xsl:when>
            <xsl:when test="@code='si '">Sinhalese; Sinhala</xsl:when>
            <xsl:when test="@code='sk'">Slovak</xsl:when>
            <xsl:when test="@code='sl'">Slovenian</xsl:when>
            <xsl:when test="@code='so'">Somali</xsl:when>
            <xsl:when test="@code='st'">Sotho; Southern</xsl:when>
            <xsl:when test="@code='es'">Spanish; Castilian</xsl:when>
            <xsl:when test="@code='su   '">Sudanese</xsl:when>
            <xsl:when test="@code='sw'">Swahili</xsl:when>
            <xsl:when test="@code='sv'">Swedish</xsl:when>
            <xsl:when test="@code='tl'">Tagalog</xsl:when>
            <xsl:when test="@code='zh'">Taiwanese; Fukienese; Min Nan Chinese</xsl:when>
            <xsl:when test="@code='ta'">Tamil</xsl:when>
            <xsl:when test="@code='tt '">Tatar</xsl:when>
            <xsl:when test="@code='te'">Telegu</xsl:when>
            <xsl:when test="@code='th'">Thai</xsl:when>
            <xsl:when test="@code='bo'">Tibetan</xsl:when>
            <xsl:when test="@code='ti'">Tigrinya</xsl:when>
            <xsl:when test="@code='zh'">Toisan; Toishan</xsl:when>
            <xsl:when test="@code='to '">Tonga</xsl:when>
            <xsl:when test="@code='ts'">Tsonga</xsl:when>
            <xsl:when test="@code='tn'">Tswana</xsl:when>
            <xsl:when test="@code='tr'">Turkish</xsl:when>
            <xsl:when test="@code='tk'">Turkmen</xsl:when>
            <xsl:when test="@code='tw'">Twi</xsl:when>
            <xsl:when test="@code='uk'">Ukrainian</xsl:when>
            <xsl:when test="@code='ur'">Urdu</xsl:when>
            <xsl:when test="@code='vi'">Vietnamese</xsl:when>
            <xsl:when test="@code='cy'">Welsh</xsl:when>
            <xsl:when test="@code='wo'">Wolof</xsl:when>
            <xsl:when test="@code='xh'">Xhosa</xsl:when>
            <xsl:when test="@code='yi'">Yiddish</xsl:when>
            <xsl:when test="@code='yo'">Yoruba</xsl:when>
            <xsl:when test="@code='zu'">Zulu</xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="@code"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- WI 75804 adding patient contacts -->
    <xsl:template match="n1:associatedEntity" mode="patientClassCode">
        <xsl:choose>
            <!-- HITSP  C80 2.2.1.2.6 -->
            <xsl:when test="./@classCode='NOK'">Next of Kin</xsl:when>
            <xsl:when test="./@classCode='ECON'">Emergency Contact</xsl:when>
            <xsl:when test="./@classCode='CON'">Contact</xsl:when>
            <xsl:when test="./@classCode='GUARD'">Guardian</xsl:when>
            <xsl:when test="./@classCode='EMP'">Employee</xsl:when>
            <xsl:when test="./@classCode='GUAR'">Guarantor</xsl:when>
            <!-- artf690990 : [CED] Guarantor Contact details shows as "Personal" in CED  Jan 2011 V2.4 -->
            <xsl:when test="./@classCode='PRS'">Personal</xsl:when>
            <xsl:when test="./@classCode='AGNT'">Agent</xsl:when>
            <xsl:when test="./@classCode='CAREGIVER'">Caregiver</xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="./@classCode"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="translateParticipantType">
        <xsl:param name="code"/>
        <xsl:choose>
            <xsl:when test="$code='CHILD'">child</xsl:when>
            <xsl:when test="$code='CHLDADOPT'">adopted child</xsl:when>
            <xsl:when test="$code='DAUADOPT'">adopted daughter</xsl:when>
            <xsl:when test="$code='SONADOPT'">adopted son</xsl:when>
            <xsl:when test="$code='CHLDINLAW'">child in-law</xsl:when>
            <xsl:when test="$code='DAUINLAW'">daughter in-law</xsl:when>
            <xsl:when test="$code='SONINLAW'">son in-law</xsl:when>
            <xsl:when test="$code='CHLDFOST'">foster child</xsl:when>
            <xsl:when test="$code='DAUFOST'">foster daughter</xsl:when>
            <xsl:when test="$code='SONFOST'">foster son</xsl:when>
            <xsl:when test="$code='NCHILD'">natural child</xsl:when>
            <xsl:when test="$code='DAU'">natural daughter</xsl:when>
            <xsl:when test="$code='SON'">natural son</xsl:when>
            <xsl:when test="$code='STPCHLD'">step child</xsl:when>
            <xsl:when test="$code='STPDAU'">stepdaughter</xsl:when>
            <xsl:when test="$code='STPSON'">stepson</xsl:when>
            <xsl:when test="$code='GRNDCHILD'">grandchild</xsl:when>
            <xsl:when test="$code='GRNDDAU'">granddaughter</xsl:when>
            <xsl:when test="$code='GRNDSON'">grandson</xsl:when>
            <xsl:when test="$code='GRPRN'">Grandparent</xsl:when>
            <xsl:when test="$code='GRFTH'">Grandfather</xsl:when>
            <xsl:when test="$code='GRMTH'">Grandmother</xsl:when>
            <xsl:when test="$code='GGRPRN'">great grandparent</xsl:when>
            <xsl:when test="$code='GGRFTH'">great grandfather</xsl:when>
            <xsl:when test="$code='GGRMTH'">great grandmother</xsl:when>
            <xsl:when test="$code='NIENEPH'">niece/nephew</xsl:when>
            <xsl:when test="$code='NEPHEW'">nephew</xsl:when>
            <xsl:when test="$code='NIECE'">niece</xsl:when>
            <xsl:when test="$code='PRN'">Parent</xsl:when>
            <xsl:when test="$code='NPRN'">natural parent</xsl:when>
            <xsl:when test="$code='NFTH'">natural father</xsl:when>
            <xsl:when test="$code='NMTH'">natural mother</xsl:when>
            <xsl:when test="$code='PRNINLAW'">parent in-law</xsl:when>
            <xsl:when test="$code='FTHINLAW'">father-in-law</xsl:when>
            <xsl:when test="$code='MTHINLOAW'">mother-in-law</xsl:when>
            <xsl:when test="$code='STPPRN'">step parent</xsl:when>
            <xsl:when test="$code='STPFTH'">stepfather</xsl:when>
            <xsl:when test="$code='STPMTH'">stepmother</xsl:when>
            <xsl:when test="$code='FTH'">Father</xsl:when>
            <xsl:when test="$code='MTH'">Mother</xsl:when>
            <xsl:when test="$code='SIB'">Sibling</xsl:when>
            <xsl:when test="$code='HSIB'">half-sibling</xsl:when>
            <xsl:when test="$code='HBRO'">half-brother</xsl:when>
            <xsl:when test="$code='HSIS'">half-sister</xsl:when>
            <xsl:when test="$code='NSIB'">natural sibling</xsl:when>
            <xsl:when test="$code='NBRO'">natural brother</xsl:when>
            <xsl:when test="$code='NSIS'">natural sister</xsl:when>
            <xsl:when test="$code='SIBINLAW'">sibling in-law</xsl:when>
            <xsl:when test="$code='BROINLAW'">brother-in-law</xsl:when>
            <xsl:when test="$code='SISLINLAW'">sister-in-law</xsl:when>
            <xsl:when test="$code='STPSIB'">step sibling</xsl:when>
            <xsl:when test="$code='STPBRO'">stepbrother</xsl:when>
            <xsl:when test="$code='STPSIS'">stepsister</xsl:when>
            <xsl:when test="$code='BRO'">Brother</xsl:when>
            <xsl:when test="$code='SIS'">Sister</xsl:when>
            <xsl:when test="$code='SIGOTHR'">significant other</xsl:when>
            <xsl:when test="$code='SPS'">spouse</xsl:when>
            <xsl:when test="$code='HUSB'">husband</xsl:when>
            <xsl:when test="$code='WIFE'">wife</xsl:when>
            <xsl:when test="$code='AUNT'">aunt</xsl:when>
            <xsl:when test="$code='COUSN'">cousin</xsl:when>
            <xsl:when test="$code='DOMPART'">domestic partner</xsl:when>
            <xsl:when test="$code='ROOM'">Roomate</xsl:when>
            <xsl:when test="$code='UNCLE'">uncle</xsl:when>
            <xsl:when test="$code='FRND'">unrelated friend</xsl:when>
            <xsl:when test="$code='NBOR'">neighbor</xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$code"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!--Shared Templates-->

    <!--  Format Date

      outputs a date in Month Day, Year form
      e.g., 19991207  ==> December 07, 1999
      -->
    <xsl:template name="formatDate">
        <xsl:param name="date"/>
        <xsl:variable name="month" select="substring ($date, 5, 2)"/>
        <xsl:choose>
            <xsl:when test="$month='01'">
                <xsl:text>January </xsl:text>
            </xsl:when>
            <xsl:when test="$month='02'">
                <xsl:text>February </xsl:text>
            </xsl:when>
            <xsl:when test="$month='03'">
                <xsl:text>March </xsl:text>
            </xsl:when>
            <xsl:when test="$month='04'">
                <xsl:text>April </xsl:text>
            </xsl:when>
            <xsl:when test="$month='05'">
                <xsl:text>May </xsl:text>
            </xsl:when>
            <xsl:when test="$month='06'">
                <xsl:text>June </xsl:text>
            </xsl:when>
            <xsl:when test="$month='07'">
                <xsl:text>July </xsl:text>
            </xsl:when>
            <xsl:when test="$month='08'">
                <xsl:text>August </xsl:text>
            </xsl:when>
            <xsl:when test="$month='09'">
                <xsl:text>September </xsl:text>
            </xsl:when>
            <xsl:when test="$month='10'">
                <xsl:text>October </xsl:text>
            </xsl:when>
            <xsl:when test="$month='11'">
                <xsl:text>November </xsl:text>
            </xsl:when>
            <xsl:when test="$month='12'">
                <xsl:text>December </xsl:text>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="substring ($date, 7, 1)=&quot;0&quot;">
                <xsl:value-of select="substring ($date, 8, 1)"/>
                <xsl:text>, </xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="substring ($date, 7, 2)"/>
                <xsl:text>, </xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="substring ($date, 1, 4)"/>
    </xsl:template>

    <!-- Display a name  -->
    <xsl:template match="n1:name">
        <span>
            <xsl:choose>
                <xsl:when test="string-length(n1:family)&gt;0">
                    <xsl:if test="string-length(n1:given)&gt;0">
                        <xsl:value-of select="n1:given"/>
                        <xsl:text> </xsl:text>
                    </xsl:if>
                    <xsl:value-of select="n1:family"/>
                    <xsl:if test="string-length(n1:suffix)&gt;0">
                        <xsl:text>, </xsl:text>
                        <xsl:value-of select="n1:suffix"/>
                    </xsl:if>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="."/>
                </xsl:otherwise>
            </xsl:choose>
        </span>
    </xsl:template>

    <!-- Display a non null address -->
    <xsl:template match="n1:addr[not(@nullFlavor) and (not(n1:streetAddressLine/@nullFlavor) or not(n1:city/@nullFlavor) or not(n1:state/@nullFlavor) or not(n1:postalCode/@nullFlavor))]">
        <div class="dataBlock">
            <xsl:apply-templates select="n1:streetAddressLine"/>
            <div class="value">
                <xsl:if test="not(n1:city/@nullFlavor)">
                    <xsl:value-of select="n1:city"/>
                    <xsl:text>, </xsl:text>
                </xsl:if>
                <xsl:if test="not(n1:state/@nullFlavor)">
                    <xsl:value-of select="n1:state"/>
                    <xsl:text> </xsl:text>
                </xsl:if>
                <xsl:if test="not(n1:postalCode/@nullFlavor)">
                    <xsl:value-of select="n1:postalCode"/>
                </xsl:if>
            </div>
            <div class="label">Address</div>
        </div>
    </xsl:template>

    <!-- Handles all address -->
    <xsl:template match="n1:addr"/>

    <!-- Display street address lines -->
    <xsl:template match="n1:streetAddressLine[not(@nullFlavor)]">
        <div class="value">
            <xsl:value-of select="."/>
        </div>
    </xsl:template>

    <!-- Display a telecom values -->
    <xsl:template match="n1:telecom">
        <div class="dataBlock phoneNumber">
            <div class="value">
                <xsl:choose>
                    <xsl:when test="contains(@value, 'tel:+1-')">
                        <!-- this is a phone -->
                        <xsl:variable name="phoneString" select="substring-after(@value, 'tel:+1-')"/>
                        <!-- now break out as (999) 888-1234 with option later on to show extension -->
                        <xsl:value-of select="substring($phoneString,1,5)"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="substring($phoneString,6,8)"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- this is a web or email address-->
                        <xsl:value-of select="substring-after(@value, ':')"/>
                    </xsl:otherwise>
                </xsl:choose>
            </div>
            <div class="label">
                <xsl:variable name="use" select="@use"/>
                <xsl:choose>
                    <xsl:when test="$use = 'HP' or . = 'H'">Home</xsl:when>
                    <xsl:when test="$use = 'HV'">Vacation Home</xsl:when>
                    <xsl:when test="$use = 'WP'">Work</xsl:when>
                    <xsl:when test="$use = 'PUB'">Public</xsl:when>
                    <xsl:when test="$use = 'PG'">Pager</xsl:when>
                    <xsl:when test="$use = 'MC'">Mobile</xsl:when>
                    <xsl:when test="$use = 'EC'">Emergency</xsl:when>
                </xsl:choose>
                <xsl:text> </xsl:text>
                <xsl:variable name="value" select="@value"/>
                <xsl:choose>
                    <xsl:when test="starts-with($value, 'tel:')">Phone</xsl:when>
                    <xsl:when test="starts-with($value, 'http:')">Web</xsl:when>
                    <xsl:when test="starts-with($value, 'mailto:')">Email</xsl:when>
                    <xsl:when test="starts-with($value, 'fax:')">Fax</xsl:when>
                </xsl:choose>
            </div>
        </div>
    </xsl:template>

    <!-- Display a spoke language -->
    <xsl:template match="n1:languageCommunication[n1:languageCode/@nullFlavor]">
        <div class="dataBlock language">
            <div class="value">Declined to Specify</div>
            <div class="label">Language</div>
        </div>
    </xsl:template>
    <xsl:template match="n1:languageCommunication[not(n1:languageCode/@nullFlavor)]">
        <div class="dataBlock language">
            <div class="value">
                <xsl:apply-templates select="n1:languageCode"/>
                <xsl:if test="n1:preferenceInd[@value='true']">
                    <xsl:text> (preferred)</xsl:text>
                </xsl:if>
            </div>
            <div class="label">Language</div>
        </div>
    </xsl:template>

    <!-- Handle a line break -->
    <xsl:template match="n1:br">
        <br/>
    </xsl:template>

    <xsl:template match="n1:span[@class='ActiveStatus']"/>

    <!-- format date time -->
    <xsl:template name="formatDTTM">
        <xsl:param name="date"/>
        <xsl:call-template name="formatDate">
            <xsl:with-param name="date">
                <xsl:value-of select="$date"/>
            </xsl:with-param>
        </xsl:call-template>
        <xsl:variable name="hour" select="substring($date,9,2)"/>
        <xsl:variable name="min" select="substring($date,11,2)"/>
        <xsl:text> </xsl:text><xsl:value-of select="$hour"/>:<xsl:value-of select="$min"/>
        <xsl:choose>
            <xsl:when test="contains($date,'+')">
                +<xsl:value-of select="substring-after($date,'+')"/>
            </xsl:when>
            <xsl:otherwise>
                -<xsl:value-of select="substring-after($date,'-')"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- Most likely depricated -->
    <xsl:template name="getContactInfo">
        <xsl:param name="contact"/>
        <xsl:apply-templates select="$contact/n1:addr"/>
        <xsl:apply-templates select="$contact/n1:telecom"/>
    </xsl:template>

    <!-- handle the CDA linkHtml element that is child of a content element -->
    <xsl:template match="n1:content[n1:linkHtml]">
        <a>
            <xsl:attribute name="href">
                <xsl:value-of select="n1:linkHtml/@href"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
        </a>
    </xsl:template>

</xsl:stylesheet>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta charset="UTF-8" /><meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta name="google-site-verification" content="wB8L3NzcuLw8H-iLSNNiaLAwuBRlkB23mZZyN8BNJ4o" /><meta name="viewport" content="width=device-width, initial-scale=1" /><meta name="ROBOTS" content="ALL" /><meta name="revisit-after" content="7 days" /><meta name="rating" content="General" /><meta name="language" content="en-us" /><meta name="verify-v1" content="2IMV8gAEXv1deuvI3PDjnuf9xJXs/gxklsGy6Kldm6U=" /><meta name="y_key" content="a478a4b77d91a49b" /><meta name="msvalidate.01" content="341C6ECD0285829BCA738BA9A7EC0ACD" /><link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400i,700,700i,900,900i|Oswald:300,400,500,600,700" rel="stylesheet" /><link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet" /><link href="https://fonts.googleapis.com/css?family=Maven+Pro:400,500,700,900" rel="stylesheet" /><link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet" /><link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" /><link href="https://fonts.googleapis.com/css?family=Frank+Ruhl+Libre:300,400,500,700" rel="stylesheet" /><link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet" /><link href="/css/bootstrap.min.css" rel="stylesheet" /><link href="/css/font-awesome.min.css" rel="stylesheet" /><link rel="stylesheet" href="/css/animate.css" /><link rel="stylesheet" href="/css/jquery.mCustomScrollbar.css" /><link href="/css/backTop.css" rel="stylesheet" type="text/css" /><link href="https://fonts.googleapis.com/css?family=Hind+Guntur" rel="stylesheet" /><link href="/css/style.css" rel="stylesheet" />
    <script>
        function FormatString(Needtoformat) {

            Needtoformat1 = Needtoformat;

            Needtoformat1 = Needtoformat1.replace(/-/g, "~");
            Needtoformat1 = Needtoformat1.replace(/ /g, "-");
            Needtoformat1 = Needtoformat1.replace(/%/g, "percent");
            Needtoformat1 = Needtoformat1.replace("`", "-colon-");
            Needtoformat1 = Needtoformat1.replace("-by-", "-baaay-");
            Needtoformat1 = Needtoformat1.replace("/", "-by-");
            Needtoformat1 = Needtoformat1.replace(/&/g, "ad");
            return Needtoformat1;
        }
        function OnRecordSelected1(source, eventArgs) {
            var hdnValueID = "hdnValue";
            document.getElementById(hdnValueID).value = eventArgs.get_text();
            if (eventArgs.get_value() == "articlecategory") {
                window.location = "/article/" + FormatString(document.getElementById(hdnValueID).value) + ".aspx";
            }
            if (eventArgs.get_value() == "sarticlecategory") {
                window.location = "/p/" + FormatString(document.getElementById(hdnValueID).value) + ".aspx";
            }
            if (eventArgs.get_value() == "articletitle") {
                window.location = "/int.aspx?section=a&name=" + FormatString(document.getElementById(hdnValueID).value) + "&chapter=1";
            }
            if (eventArgs.get_value() == "sarticletitle") {

                window.location = "/int.aspx?section=s&name=" + FormatString(document.getElementById(hdnValueID).value) + "&chapter=1";
            }
            if (eventArgs.get_value() == "articleauthor") {
                window.location = "/author/" + FormatString(document.getElementById(hdnValueID).value.replace(" - As Article Author", "")) + ".aspx";
            }
            if (eventArgs.get_value() == "state") {
                window.location = "/photo/" + FormatString(document.getElementById(hdnValueID).value) + ".aspx";
            }
            if (eventArgs.get_value() == "album") {
                window.location = "/int.aspx?section=p&name=" + FormatString(document.getElementById(hdnValueID).value);
            }
            if (eventArgs.get_value() == "theme") {
                window.location = "/theme/" + FormatString(document.getElementById(hdnValueID).value) + ".aspx";
            }
            if (eventArgs.get_value() == "photographer") {
                window.location = "/photographer/" + FormatString(document.getElementById(hdnValueID).value.replace(" - As Photographer", "")) + ".aspx";
            }
            if (eventArgs.get_value() == "booktitle") {
                window.location = "/book-detail.aspx?bookname=" + document.getElementById(hdnValueID).value;
            }
            if (eventArgs.get_value() == "bookauthor") {
                window.location = "/book-author.aspx?Author=" + document.getElementById(hdnValueID).value;
            }
        }

        function OnRecordPopulated1(sender, e) {
            var employees = sender.get_completionList().childNodes;
            for (var i = 0; i < employees.length; i++) {
                var div = document.createElement("span"); div.style.cssFloat = "left";
                if (employees[i]._value == "articlecategory") {
                    div.innerHTML = "<i class='fa fa-list' aria-hidden='true'></i>&nbsp;";
                }
                if (employees[i]._value == "sarticlecategory") {
                    div.innerHTML = "<i class='fa fa-list' aria-hidden='true'></i>&nbsp;";
                }
                if (employees[i]._value == "articletitle") {
                    div.innerHTML = "<i class='fa fa-file' aria-hidden='true'></i>&nbsp;";
                }
                if (employees[i]._value == "sarticletitle") {
                    div.innerHTML = "<i class='fa fa-file' aria-hidden='true'></i>&nbsp;";
                }
                if (employees[i]._value == "articleauthor") {
                    div.innerHTML = "<i class='fa fa-user' aria-hidden='true'></i>&nbsp;";
                }
                if (employees[i]._value == "state") {
                    div.innerHTML = "<i class='fa fa-globe' aria-hidden='true'></i>&nbsp;";
                }
                if (employees[i]._value == "album") {
                    div.innerHTML = "<i class='fa fa-camera-retro' aria-hidden='true'></i>&nbsp;";
                }
                if (employees[i]._value == "theme") {
                    div.innerHTML = "<i class='fa fa-picture-o' aria-hidden='true'></i>&nbsp;";
                }
                if (employees[i]._value == "photographer") {
                    div.innerHTML = "<i class='fa fa-user' aria-hidden='true'></i>&nbsp;";
                }
                if (employees[i]._value == "booktitle") {
                    div.innerHTML = "<i class='fa fa-book' aria-hidden='true'></i>&nbsp;";
                }
                if (employees[i]._value == "bookauthor") {
                    div.innerHTML = "<i class='fa fa-user' aria-hidden='true'></i>&nbsp;";
                }
                employees[i].appendChild(div);
            }
        }
    </script>

    <script id="feedify_webscript">
        var feedify = feedify || {};
        window.feedify_options = { fedify_url: "https://feedify.net/", pkey: "BCgscB7nTAtDxbJOWP63A8ZlQ-asOYAbQyUuxzVRHoFWURgwPKrYmiQ4EH8rBvlzYbVR8wwid_A8glvhWIIr55w" };
        (function (window, document) {
            function addScript(script_url) {
                var s = document.createElement('script');
                s.type = 'text/javascript';
                s.src = script_url;
                document.getElementsByTagName('head')[0].appendChild(s);
            }
            addScript('https://tpcf.feedify.net/uploads/settings/2ae0e58023d8f75cf4ccef28ebce406a.js?ts=' + Math.random());
            addScript('https://cdn.feedify.net/getjs/feedbackembad-min-3.0.js');
        })(window, document);
    </script>
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-222262595-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-222262595-1');
    </script>

<script async src="https://www.googletagmanager.com/gtag/js?id=G-8V8VD3F89E"></script> <script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'G-8V8VD3F89E');
</script>

   
<script type="text/javascript">
    (function (d, t) {
        var g = d.createElement(t),
            s = d.getElementsByTagName(t)[0];
        g.src = "https://cdn.pushalert.co/integrate_69202cb248a60a1bbd51700172f1b1fc.js";
        s.parentNode.insertBefore(g, s);
    }(document, "script"));
</script>

    
  <style type="text/css">
    .articleActualContent .articleDetailParaArea p:first-child::first-letter {
      font-size: 48px;
    }
  </style>
  <title>The story of Sindhutai Sapkal - A mother to orphaned children</title>
  <meta name="description" content="Esamskriti: An online encyclopedia of Indian culture, Indian traditions, ancient India, education in India, history, Indian Travel, Indian leaders, festivals of India, languages, Ayurveda, & many more…" />
  <meta name="keywords" content="Sindhutai Sapkal, Good News India, Optimist India, Orphans India, Dharma" />
  <meta itemprop="articleSection" name="section" content="SPECIAL SECTIONS" />
  <meta itemprop="thumbnailUrl" name="image_src" content="http://www.esamskriti.com/essays/docfile/58_4820.jpg" />
  <meta property="og:title" content="The story of Sindhutai Sapkal - A mother to orphaned children" />
  <meta property="og:type" content="article" />
  <meta itemprop="url" property="og:url" content="https://www.esamskriti.com/essay-chapters.aspx?sectionname=SPECIAL-SECTIONS&topicname=The-story-of-Sindhutai-Sapkal-~-A-mother-to-orphaned-children&chapter=1" />
  <meta property="og:site-name" content="eSamskriti" />
  <meta property="og:description" content="Esamskriti: An online encyclopedia of Indian culture, Indian traditions, ancient India, education in India, history, Indian Travel, Indian leaders, festivals of India, languages, Ayurveda, & many more…" />
  <meta property="og:image" content="http://www.esamskriti.com/essays/docfile/58_4820.jpg" />
  <meta property="og:image:width" content="1024" />
  <meta property="og:image:height" content="636" />
  <meta name="twitter:title" content="The story of Sindhutai Sapkal - A mother to orphaned children" />
  <meta name="twitter:description" content="Esamskriti: An online encyclopedia of Indian culture, Indian traditions, ancient India, education in India, history, Indian Travel, Indian leaders, festivals of India, languages, Ayurveda, & many more…" />
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:site" content="" />
  <meta name="twitter:image:src" content="http://www.esamskriti.com/essays/docfile/58_4820.jpg" />
  <meta property="fb:app_id" content="938695192953419" />

<title>

</title></head>
<body>
    <form method="post" action="/e/SPECIAL-SECTIONS/The-story-of-Sindhutai-Sapkal-~-A-mother-to-orphaned-children-1.aspx" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE1ODQwOTMxMDQPFiQeDVByZXZDaGFwdGVySUQFATAeA1VybAWdAWh0dHBzOi8vd3d3LmVzYW1za3JpdGkuY29tL2Vzc2F5LWNoYXB0ZXJzLmFzcHg/c2VjdGlvbm5hbWU9U1BFQ0lBTC1TRUNUSU9OUyZ0b3BpY25hbWU9VGhlLXN0b3J5LW9mLVNpbmRodXRhaS1TYXBrYWwtfi1BLW1vdGhlci10by1vcnBoYW5lZC1jaGlsZHJlbiZjaGFwdGVyPTEeB05leHRVUkxlHg9TZWN0aW9uTmFtZVBhdGgFMWh0dHA6Ly93d3cuZXNhbXNrcml0aS5jb20vcy9TUEVDSUFMLVNFQ1RJT05TLmFzcHgeDU5leHRDaGFwdGVySUQFATIeEENhdGVnb3J5TmFtZVBhdGgFNmh0dHA6Ly93d3cuZXNhbXNrcml0aS5jb20vYXJ0aWNsZS9Hb29kLVdvcmstSW5kaWEuYXNweB4HS2V5d29yZAXeASggbG93ZXIodC5rZXl3b3JkKSBsaWtlICclc2luZGh1dGFpIHNhcGthbCUnIG9yICBsb3dlcih0LmtleXdvcmQpIGxpa2UgJyUgZGhhcm1hJScgb3IgIGxvd2VyKHQua2V5d29yZCkgbGlrZSAnJSBnb29kIG5ld3MgaW5kaWElJyBvciAgbG93ZXIodC5rZXl3b3JkKSBsaWtlICclIG9wdGltaXN0IGluZGlhJScgb3IgIGxvd2VyKHQua2V5d29yZCkgbGlrZSAnJSBvcnBoYW5zIGluZGlhJScgKR4MQXJ0aWNsZUNsYXNzBRVhcnRpY2xlRGV0YWlsUGFyYUFyZWEeC1NlY3Rpb25OYW1lBRBTUEVDSUFMIFNFQ1RJT05THg9NZXRhRGVzY3JpcHRpb24FywFFc2Ftc2tyaXRpOiBBbiBvbmxpbmUgZW5jeWNsb3BlZGlhIG9mIEluZGlhbiBjdWx0dXJlLCBJbmRpYW4gdHJhZGl0aW9ucywgYW5jaWVudCBJbmRpYSwgZWR1Y2F0aW9uIGluIEluZGlhLCBoaXN0b3J5LCBJbmRpYW4gVHJhdmVsLCBJbmRpYW4gbGVhZGVycywgZmVzdGl2YWxzIG9mIEluZGlhLCBsYW5ndWFnZXMsIEF5dXJ2ZWRhLCAmIG1hbnkgbW9yZeKAph4HUHJldlVSTGUeDE1ldGFLZXl3b3JkcwVIU2luZGh1dGFpIFNhcGthbCwgR29vZCBOZXdzIEluZGlhLCBPcHRpbWlzdCBJbmRpYSwgT3JwaGFucyBJbmRpYSwgRGhhcm1hHgxDYXRlZ29yeU5hbWUFD0dvb2QgV29yayBJbmRpYR4HVG9waWNJRAUENDgyMB4FVGl0bGUFQVRoZSBzdG9yeSBvZiBTaW5kaHV0YWkgU2Fwa2FsIC0gQSBtb3RoZXIgdG8gb3JwaGFuZWQgY2hpbGRyZW4NCg0KHgpDYXRlZ29yeUlkBQI1OB4JQ2hhcHRlcklEBQExHglUb3BpY05hbWUFPVRoZSBzdG9yeSBvZiBTaW5kaHV0YWkgU2Fwa2FsIC0gQSBtb3RoZXIgdG8gb3JwaGFuZWQgY2hpbGRyZW4WAmYPDxYCHgVDYXRJRGVkFgICAxBkZBYCAgIPZBY2AgEPFgIeBFRleHQFD1Jha3NoYSBQYWhhcmlhIGQCAg8WAh8TBQ5TZXB0ZW1iZXIgMjAxOGQCAw8WAh8TBZEBPGxpPjxpIGNsYXNzPSdmYSBmYS1lbnZlbG9wZS1vJyB0aXRsZT0nbWFpbCcgYXJpYS1oaWRkZW49J3RydWUnPjwvaT48YSBocmVmPSdtYWlsdG86cmFrc2hhLnBockBnb29nbGVtYWlsLmNvbSc+cmFrc2hhLnBockBnb29nbGVtYWlsLmNvbTwvYT48L2xpPmQCBQ8WAh8TBXM8bGk+PGkgY2xhc3M9J2ZhIGZhLWV5ZScgYXJpYS1oaWRkZW49J3RydWUnPjwvaT48c3BhbiBjbGFzcz0nYXJ0aWNsZVZpZXdDb3VudCc+NTI1OTYgPHNwYW4+dmlld3M8L3NwYW4+PC9zcGFuPjwvbGk+ZAIGDxYCHxMFmwEgPGxpPjxhIGhyZWY9J2h0dHA6Ly93d3cuZXNhbXNrcml0aS5jb20vZS9TcGVjaWFsLVNlY3Rpb25zL0dvb2QtV29yay1JbmRpYS9UaGUtc3Rvcnktb2YtU2luZGh1dGFpLVNhcGthbC1+LUEtbW90aGVyLXRvLW9ycGhhbmVkLWNoaWxkcmVuLTEuYXNweCc+MTwvYT48L2xpPmQCBw8WAh8TBQIwMWQCCA8WAh8TBQIwMWQCCQ8PFgIeB1Zpc2libGVoZGQCCg8PFgIfFGhkZAILDxYCHxMF8gkgPGxpPjxhIGhyZWY9Jy9zYS9Hb29kLVdvcmstSW5kaWEvU3Rvcnktb2YtYS1GaW5hbmNlLVByb2Zlc3Npb25hbC13aG8tc3RhcnRlZC1hLVNDSE9PTC1mb3ItRGlmZmVyZW50bHktQWJsZWQtQ2hpbGRyZW4tbmVhci1NdW1iYWktMS5hc3B4Jz5TdG9yeSBvZiBhIEZpbmFuY2UgUHJvZmVzc2lvbmFsIHdobyBzdGFydGVkIGEgU0NIT09MIGZvciBEaWZmZXJlbnRseSBBYmxlZCBDaGlsZHJlbiBuZWFyIE11bWJhaTwvYT48L2xpPiA8bGk+PGEgaHJlZj0nL3NhL0dvb2QtV29yay1JbmRpYS9Fa2FsLWNvbG9uLXMtT25lLVRlYWNoZXItUmV2b2x1dGlvbi0tMS5hc3B4Jz5Fa2FsYHMgT25lIFRlYWNoZXIgUmV2b2x1dGlvbiA8L2E+PC9saT4gPGxpPjxhIGhyZWY9Jy9zYS9Hb29kLVdvcmstSW5kaWEvU2FhbHVtYXJhZGEtVGhpbW1ha2thLWlzLXRoZS1EYXVnaHRlci1vZi1OYXR1cmUtMS5hc3B4Jz5TYWFsdW1hcmFkYSBUaGltbWFra2EgaXMgdGhlIERhdWdodGVyIG9mIE5hdHVyZTwvYT48L2xpPiA8bGk+PGEgaHJlZj0nL3NhL0dvb2QtV29yay1JbmRpYS9DcmVhdGluZy1sZWFkZXJzLWFuZC1mb2xsb3dlcnMtb2YtdG9tb3Jyb3ctMS5hc3B4Jz5DcmVhdGluZyBsZWFkZXJzIGFuZCBmb2xsb3dlcnMgb2YgdG9tb3Jyb3c8L2E+PC9saT4gPGxpPjxhIGhyZWY9Jy9zYS9Hb29kLVdvcmstSW5kaWEvVGhlLXN0b3J5LW9mLVNpbmRodXRhaS1TYXBrYWwtfi1BLW1vdGhlci10by1vcnBoYW5lZC1jaGlsZHJlbi0xLmFzcHgnPlRoZSBzdG9yeSBvZiBTaW5kaHV0YWkgU2Fwa2FsIC0gQSBtb3RoZXIgdG8gb3JwaGFuZWQgY2hpbGRyZW48L2E+PC9saT4gPGxpPjxhIGhyZWY9Jy9zYS9Hb29kLVdvcmstSW5kaWEvQ1JPV0QtRlVORElORy1lU2Ftc2tyaXRpLTEuYXNweCc+Q1JPV0QgRlVORElORyBlU2Ftc2tyaXRpPC9hPjwvbGk+IDxsaT48YSBocmVmPScvc2EvR29vZC1Xb3JrLUluZGlhL05hdHVyYWwtRmFybWluZy1+LVJldml2aW5nLWEtc3VzdGFpbmFibGUtcHJhY3RpY2UtZm9yLWEtaGVhbHRoeS1mdXR1cmUtMS5hc3B4Jz5OYXR1cmFsIEZhcm1pbmcgLSBSZXZpdmluZyBhIHN1c3RhaW5hYmxlIHByYWN0aWNlIGZvciBhIGhlYWx0aHkgZnV0dXJlPC9hPjwvbGk+IDxsaT48YSBocmVmPScvc2EvR29vZC1Xb3JrLUluZGlhL1RyYW5zZm9ybWF0aW9uLW9mLVdhc3RlbGFuZC1pbnRvLUdyZWVuYmVsdC1pbi1Kb2RocHVyLTEuYXNweCc+VHJhbnNmb3JtYXRpb24gb2YgV2FzdGVsYW5kIGludG8gR3JlZW5iZWx0IGluIEpvZGhwdXI8L2E+PC9saT5kAgwPFgIfEwXhAjxsaT48YSBocmVmPSIvc3BlY2lhbHNlY3Rpb24vQXl1cnZlZGEuYXNweCI+QXl1cnZlZGE8L2E+PC9saT48bGk+PGEgaHJlZj0iL3NwZWNpYWxzZWN0aW9uL0dvb2QtV29yay1JbmRpYS5hc3B4Ij5Hb29kIFdvcmsgSW5kaWE8L2E+PC9saT48bGk+PGEgaHJlZj0iL3NwZWNpYWxzZWN0aW9uL0ludGVycHJldGluZy1WaXZla2FuYW5kYS5hc3B4Ij5JbnRlcnByZXRpbmcgVml2ZWthbmFuZGE8L2E+PC9saT48bGk+PGEgaHJlZj0iL3NwZWNpYWxzZWN0aW9uL0xpZmUuYXNweCI+TGlmZTwvYT48L2xpPjxsaT48YSBocmVmPSIvc3BlY2lhbHNlY3Rpb24vU3VwcG9ydC1JbmRpYS5hc3B4Ij5TdXBwb3J0IEluZGlhPC9hPjwvbGk+ZAINDxYCHxMFtgIgPGxpPjxhIGhyZWY9Jy9hdXRob3IvQXR1bC1TYXRoZS5hc3B4Jz5BdHVsIFNhdGhlPC9hPjwvbGk+IDxsaT48YSBocmVmPScvYXV0aG9yL1Jha3NoYS1QYWhhcmlhLS5hc3B4Jz5SYWtzaGEgUGFoYXJpYSA8L2E+PC9saT4gPGxpPjxhIGhyZWY9Jy9hdXRob3IvU2FuamVldi1OYXl5YXIuYXNweCc+U2FuamVldiBOYXl5YXI8L2E+PC9saT4gPGxpPjxhIGhyZWY9Jy9hdXRob3IvVmFydW4tQXJ5YS5hc3B4Jz5WYXJ1biBBcnlhPC9hPjwvbGk+IDxsaT48YSBocmVmPScvYXV0aG9yL1ZpamF5LU1hcm9vLmFzcHgnPlZpamF5IE1hcm9vPC9hPjwvbGk+ZAIODxYCHxMFkQE8aW1nIG9uY29udGV4dG1lbnU9J3JldHVybiBmYWxzZTsnIHNyYz0naHR0cDovL3d3dy5lc2Ftc2tyaXRpLmNvbS9lc3NheXMvZG9jZmlsZS81OF80ODIwLmpwZycgIGNsYXNzPScgaW1nLXJlc3BvbnNpdmUgYXJ0aWNsZUltZ0NlbnRlcicgYWx0PScnIC8+ZAIPDxYCHxMFp3k8dWwgc3R5bGU9Imxpc3Qtc3R5bGUtdHlwZTpkaXNjIj48bGk+PHNwYW4gY2xhc3M9InNuYXBzaG90UG9pbnQiPlNpbmRodXRhaSB3YXMgbWFycmllZCBhdCB0ZW4sIGFiYW5kb25lZCBieSBoZXIgaHVzYmFuZCBhdCB0d2VudHksIGJlY2FtZSBtb3RoZXIgYXQgdGhlIHNhbWUgYWdlIGFuZCBoYWQgbm93aGVyZSB0byBnby4gU2hlIGJlZ2dlZCBmb3IgYSBsaXZpbmcuIFRoZSBEaXZpbmUgaG93ZXZlciwgaGFkIGRpZmZlcmVudCBwbGFucyBmb3IgaGVyLiBTaGUgYWRvcHRlZCBvbmUgY2hpbGQgYW5kIGdyYWR1YWxseSBpdCBiZWNhbWUgYSBtb3ZlbWVudC4gV2l0aG91dCBhbnkgZ292ZXJubWVudCBzdXBwb3J0IGFuZCBieSBzaGFyaW5nIGhlciBsaWZl4oCZcyBzdG9yeSB0aHJvdWdoIHRhbGtzIHNoZSBvcGVuZWQgb3JwaGFuYWdlcyBhbmQgYnJvdWdodCB1cCBvdmVyIDEsMjAwIGNoaWxkcmVuLiBJdCBvbmx5IGdvZXMgdG8gc2hvdyB0aGF0IGxpZmUgaXMgd2hhdCB5b3UgbWFrZSBvdXQgb2YgaXQuPC9zcGFuPjwvbGk+PC91bD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPkNoaWxkaG9vZCBpcyBhIGJsaXNzZnVsIHBoYXNlIG9mIGxpZmUuClBhcmVudHMgbG92ZSBhbmQgcGFtcGVyIHRoZWlyIGNoaWxkcmVuIGFuZCBtYWtlIHRoZW0gdGhlIGNlbnRyZSBvZiB0aGVpciB3b3JsZC4KSG93ZXZlciwgdGhlIHNhbWUgY2hpbGRob29kIGNhbiBiZSBob3JyaWZ5aW5nIHdoZW4gYSBjaGlsZCBoYXMgbm8gcGFyZW50cy4KVGhlcmUgaXMgbm8gZ3JlYXRlciBzb3Jyb3cgdGhhbiBiZWluZyBhbiBvcnBoYW4gb3IgbGVhZGluZyBhIGxpZmUgd2l0aG91dApzaGVsdGVyLiBIYXZpbmcgc2FpZCB0aGF0LCB0aGUgRGl2aW5lIHNlbmRzIHBlb3BsZSB0byBNb3RoZXIgRWFydGggdG8gbWFrZSBhCmRpZmZlcmVuY2UuIFNpbmRodXRhaSBpcyBvbmUgc3VjaCBwZXJzb247IGJ5IGJlY29taW5nIGEgbW90aGVyIHRvIG9ycGhhbnMgU2luZGh1dGFpCmJlY2FtZSBHb2TigJlzIGdpZnQgdG8gdGhvdXNhbmRzIG9mIG9ycGhhbmVkIGNoaWxkcmVuLiAmbmJzcDs8L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBjbGFzcz0icHVycGxlVGV4dCI+V2hvIGlzIFNpbmRodXRhaSBTYXBrYWw/PC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5TaGUgaXMgYSByZW5vd25lZCBhbmQgYSBkZXZvdGVkIHNvY2lhbCB3b3JrZXIKd2hvIGZvY3VzZXMgb24gcHJpb3JpdGl6aW5nIHRoZSBsaXZlcyBvZiBvcnBoYW5lZCBjaGlsZHJlbi4gSGVyIGRlY2lzaW9uIHRvCmxvb2sgYWZ0ZXIgb3JwaGFuZWQgY2hpbGRyZW4gd2FzIHRyaWdnZXJlZCBieSBoZXIgb3duIGxpZmUgZXhwZXJpZW5jZXMuIER1cmluZwpoZXIgY2hpbGRob29kIFNpbmRodXRhaSB3ZW50IHRocm91Z2ggcGhhc2VzIHdoZXJlIHNoZSBtaXNzZWQgaGF2aW5nIHNvbWVvbmUgYnkKaGVyIHNpZGUuIEluIG9uZSBvZiBoZXIgaW50ZXJ2aWV3cyBzaGUgc2FpZCB0aGF0IGl0IHdhcyBhdCBzdWNoIHRpbWVzIHRoYXQgc2hlCnJlYWxpemVkIHdoYXQgaXQgbWVhbnQgdG8gYmUgYWJhbmRvbmVkLiBIYXZpbmcgc3VmZmVyZWQgdGh1cywgc2hlIG1hZGUgaXQgaGVyCmxpZmXigJlzIG1pc3Npb24gdG8gc3RhbmQgYnkgbmVlZHkgYW5kIGhvbWVsZXNzIGNoaWxkcmVuLiA8L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPkhlciBncmVhdG5lc3MgYW5kIGtpbmQgbmF0dXJlIGlzCnJlZmxlY3RlZCBpbiBvbmUgb2YgaGVyIHNwZWVjaGVzLiBTaGUgc2FpZCwg4oCYSSBhbSB3aXRoIGV2ZXJ5b25lIHdobyBoYXMgbm8Kb3RoZXIgcGVvcGxlIHRvIGxvb2sgYWZ0ZXIgdGhlbeKAmS48L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxiPiZuYnNwOzwvYj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gY2xhc3M9InB1cnBsZVRleHQiPkVhcmx5IGxpZmUgYW5kIHN0cnVnZ2xlczwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWY7Y29sb3I6IzcwMzBBMCI+Jm5ic3A7PC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5TaW5kaHV0YWkgd2FzIGJvcm4gb24gMTQ8c3VwPnRoPC9zdXA+Ck5vdmVtYmVyIDE5NDggaW4gYSBjYXR0bGUgZ3JhemluZyBmYW1pbHkgaW4gTWFoYXJhc2h0cmHigJlzIFdhcmRoYSBkaXN0cmljdC4gSGVyCmZhdGhlciB3YXMga2VlbiB0byBlZHVjYXRlIGhlciBidXQgbW90aGVyIHdhcyBub3QuIEF0IHRoZSBhZ2Ugb2YgdGVuIHNoZSB3YXMKbWFycmllZCB0byBhIG1hbiB0d2VudHkgeWVhcnMgaGVyIHNlbmlvci4gUG9zdCBtYXJyaWFnZSBzaGUgZmFjZWQgYSBkaWZmaWN1bHQKbGlmZSBidXQgc2hlIGRpZCBub3QgbG9zZSBob3BlLiBJbiBoZXIgbmV3IGhvbWUgc2hlIGZvdWdodCBhZ2FpbnN0IHRoZQpleHBsb2l0YXRpb24gb2YgbG9jYWwgd29tZW4sIHdobyBjb2xsZWN0ZWQgY293IGR1bmcsIGJ5IHRoZSBmb3Jlc3RzIGRlcGFydG1lbnQKYW5kIGxhbmRsb3Jkcy4gPC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5UaGlzIG9ubHkgbWFkZSB0aGluZ3MgbW9yZSBkaWZmaWN1bHQgZm9yCmhlci4gPC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5BdCB0aGUgeW91bmcgYWdlIG9mIHR3ZW50eSwgd2hlbiBuaW5lLQptb250aHMgcHJlZ25hbnQsIHNoZSB3YXMgYmVhdGVuIGJhZGx5IGFuZCBsZWZ0IHRvIGRpZSBieSBoZXIgaHVzYmFuZC4gU2hlIGdhdmUKYmlydGggdG8gYSBiYWJ5IGdpcmwgTWFtdGEgaW4gdGhhdCBzZW1pLWNvbnNjaW91cyBzdGF0ZSBhbmQgc3RydWdnbGVkIHRvIHN0YXkKYWxpdmUuIFNpbmRodXRhaSB0b29rIHRvIGJlZ2dpbmcgb24gdGhlIHN0cmVldHMgYW5kIHJhaWx3YXkgcGxhdGZvcm1zIHRvIHN1cnZpdmUuCkJlY2F1c2Ugc2hlIGZlYXJlZCBiZWluZyBwaWNrZWQgdXAgYnkgbWVuIGF0IG5pZ2h0IHNoZSBvZnRlbiBzcGVudCB0aGUgbmlnaHQgYXQKY2VtZXRlcmllcy4gU3VjaCB3YXMgaGVyIGNvbmRpdGlvbiB0aGF0IHBlb3BsZSBjYWxsZWQgaGVyIGEgZ2hvc3Qgc2luY2Ugc2hlIHdhcwpzZWVuIGF0IG5pZ2h0IGluIHRoZSBjZW1ldGVyaWVzLiA8L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWY7YmFja2dyb3VuZDp3aGl0ZSI+4oCcSW4gdGhpcyBjb25zdGFudAp0dXNzbGUgdG8gc3Vydml2ZSwgc2hlIGZvdW5kIGhlcnNlbGYgaW4gQ2hpa2FsZGFyYSwgc2l0dWF0ZWQgaW4gdGhlIEFtcmF2YXRpCmRpc3RyaWN0IG9mIE1haGFyYXNodHJhLiBIZXJlLCBkdWUgdG8gYSB0aWdlciBwcmVzZXJ2YXRpb24gcHJvamVjdCwgODQgdHJpYmFsCnZpbGxhZ2VzIHdlcmUgZXZhY3VhdGVkLiBBbWlkc3QgdGhlIGNvbmZ1c2lvbiwgYSBwcm9qZWN0IG9mZmljZXIgaW1wb3VuZGVkIDEzMgpjb3dzIG9mIEFkaXZhc2kgdmlsbGFnZXJzIGFuZCBvbmUgb2YgdGhlIGNvd3MgZGllZC4gU2luZGh1dGFpIGRlY2lkZWQgdG8gZmlnaHQKZm9yIGEgcHJvcGVyIHJlaGFiaWxpdGF0aW9uIG9mIHRoZSBoZWxwbGVzcyB0cmliYWwgdmlsbGFnZXJzLiBIZXIgZWZmb3J0cyB3ZXJlCmFja25vd2xlZGdlZCBieSB0aGUgTWluaXN0ZXIgb2YgRm9yZXN0cyBhbmQgaGUgbWFkZSBhcHByb3ByaWF0ZSBhcnJhbmdlbWVudHMKZm9yIGFsdGVybmF0aXZlIHJlbG9jYXRpb24uPC9zcGFuPuKAnTwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5JdCB3YXMgZHVyaW5nIHRoZXNlIHRyeWluZyB0aW1lcyB0aGF0CnNoZSByZWFsaXplZCBob3cgZGlmZmljdWx0IGl0IHdvdWxkIGJlIGZvciBhYmFuZG9uZWQgY2hpbGRyZW4gYW5kIG9yIG9ycGhhbnMKYW5kIGRlY2lkZWQgdG8gZG8gc29tZXRoaW5nIGZvciB0aGVtLiAmbmJzcDtIZXIKZmlyc3QgYWRvcHRlZCBjaGlsZCB3YXMgRGVlcGFrLCB3aG9tIHNoZSBmb3VuZCBvbiBhIHJhaWx3YXkgdHJhY2suIFF1aXRlIHNvb24Kc2hlIGhhZCBhZG9wdGVkIHNpeHRlZW4gY2hpbGRyZW4uIDwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZiI+U28gU2luZGh1dGFpIHN0YXJ0ZWQgdGFraW5nIGNhcmUgb2YgY2hpbGRyZW4KaW4gcmV0dXJuIGZvciBzb21lIGZvb2QuIExvb2tpbmcgYWZ0ZXIgdGhlc2Uga2lkcyBzb29uIGJlY2FtZSB0aGUgbWlzc2lvbiBvZgpoZXIgbGlmZS4gU2hlIG9wZW5lZCBoZXIgZmlyc3QgYXNocmFtIGF0IENoaWthbGRoYXJhLiBQZW9wbGUgd2hvIGRvbmF0ZWQgbW9uZXkKYXNrZWQgaGVyIGZvciBhIHJlY2VpcHQgc28gc2hlIHJlYWxpemVkIHRoZSBuZWVkIGZvciBhbiBOR08uIDwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZjtiYWNrZ3JvdW5kOndoaXRlIj7igJxTbyBzaGUgZm9ybWVkICZhbXA7CnJlZ2lzdGVyZWQgaGVyIGZpcnN0IE5HTywgU2F2aXRyaWJhaSBQaHVsZSBHaXJsc+KAmSBIb3N0ZWwgdW5kZXIgdGhlIEZvdW5kYXRpb24sClZhbnZhc2kgR29wYWxrcnVzaG5hIFNoaWtzaGFuIEV2YW0gS3JlZWRhIFByYXNhcmFrIE1hbmRhbCBpbiBDaGlrYWxkaGFyYSBpbgpBbXJhdmF0aS4gVG9kYXksIGhlciBjaGlsZHJlbiBydW4gZm91ciBOR09zIGFuZCBEZWVwYWssIGhlciBmaXJzdCBhZG9wdGVkIHNvbgp3aG8gcmVmdXNlZCB0byBsZWF2ZSBoZXIgb24gZ3Jvd2luZyB1cCwgaGFzIG5hbWVkIHRoZSBzZWNvbmQgb25lLCBNYW10YSBCYWwKQmhhd2FuLCBhZnRlciBoZXIgZGF1Z2h0ZXIsIE1hbXRhLiBTaW5kaHV0YWkgaGFzIGFsc28gZm9ybWVkIGEgY293IHNoZWx0ZXIsCkdvcGlrYSBHYWkgUmFrc2hhbiBLZW5kcmEgdG8gc2F2ZSBvbGQgY293cyB0aGF0IGFyZSBiZWluZyBzZW50IHRvIHRoZSBzbGF1Z2h0ZXIKaG91c2VzLiBTaGUgYnJpbmdzIHRoZW0gdG8gdGhlIHNoZWx0ZXIgYW5kIGNhcmVzIGZvciB0aGVtLjwvc3Bhbj7igJ0gPGI+MTwvYj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZiI+VGhpcyB3YXkgU2luZGh1IGJlY2FtZSBTaW5kaHV0YWkgb3IgTWFhaQpvciBtb3RoZXIgb2Ygb3JwaGFucy48L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPk1hbnkgb2YgaGVyIGFkb3B0ZWQgY2hpbGRyZW4gYXJlIG5vdyBoaWdobHkKcXVhbGlmaWVkIGZvciBlLmcuIGRvY3RvcnMgYW5kIGxhd3llcnMuIFNvbWUgYWRvcHRlZCBjaGlsZHJlbiBoYXZlIHN0YXJ0ZWQKb3JwaGFuYWdlcyBvZiB0aGVpciBvd24uIDwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZiI+V2hlbiBTaW5kdXRhaeKAmXMgaHVzYmFuZCByZXR1cm5lZCBhbmQKYXNrZWQgZm9yIGZvcmdpdmVuZXNzIHNoZSB3YXMgZ3JhY2lvdXMgZW5vdWdoIHRvIGZvcmdldCBhbmQgZm9yZ2l2ZS48L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxiPiZuYnNwOzwvYj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gY2xhc3M9InB1cnBsZVRleHQiPlNpbmRodXRhaSAtIEEgbGl2aW5nCmV4YW1wbGUgb2YgaHVtYW5pdHkgYW5kJm5ic3A7bG92ZTwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZiI+U2luZGh1dGFp4oCZcyBsaWZlIHN0b3J5IGlzIG9uZSBvZgppbmNyZWRpYmxlIGdyaXQgYW5kIHdpbGxwb3dlci4gU2hlIHNob3dlZCBob3cgYWR2ZXJzaXR5IGJyaW5ncyBvdXQgdGhlIGJlc3QgaW4KdXMgYW5kIGRlZGljYXRlZCBoZXIgbGlmZSB0byBhZG9wdGluZyAmYW1wOyBudXJ0dXJpbmcgb3JwaGFucy4gRnVydGhlciwgc2hlCmNvbnN0cnVjdGVkIG1vcmUgdGhhbiBzaXggb3JwaGFuYWdlcyBpbiBNYWhhcmFzaHRyYSB3aGVyZSBvcnBoYW5lZCBjaGlsZHJlbiBhcmUKZ2l2ZW4gZm9vZCwgc2hlbHRlciwgYW5kIGVkdWNhdGlvbi4gSGVyIG9yZ2FuaXphdGlvbiBhbHNvIGdhdmUgc2hlbHRlciB0bwpudW1lcm91cyB3b21lbiwgd2hvIGFyZSBkZXN0aXR1dGUgYW5kIGFiYW5kb25lZC4gPC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5SdW5uaW5nIHRoZXNlIHNoZWx0ZXIgaG9tZXMgaXMgbm90IGFuCmVhc3kgdGFzazsgc2hlIHdvcmtzIGhhcmQgdG8gcmFpc2UgZnVuZHMgZm9yIGhlciBvcnBoYW5hZ2VzLiBJbnN0ZWFkIG9mIHRha2luZwpmaW5hbmNpYWwgaGVscCBmcm9tIGFueW9uZSwgc2hlIGdhdmUgcG93ZXJmdWwgYW5kIGluc3BpcmluZyBzcGVlY2hlcyBpbiB0aGUKZm9ybSBvZiBzaGFyaW5nIGhlciBsaWZl4oCZcyBzdG9yeS4gQXQgdGhlIGVuZCBvZiBoZXIgc3BlZWNoZXMsIOKAnHNoZSBzcHJlYWRzIHRoZQpsb29zZSBlbmQgb2YgaGVyIHNhcmkgYW5kIGFza3MgZm9yIGFsbXMgdG8gZmVlZCBhbmQgZWR1Y2F0ZSBoZXIgY2hpbGRyZW4u4oCdIFNoZQphcHBlYWxzIHRvIHBlb3BsZSB0byBoZWxwIHRoZSB1bmRlcnByaXZpbGVnZWQgYW5kIG5lZ2xlY3RlZCBzZWN0aW9ucyBvZiB0aGUKc29jaWV0eS4gPC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5JbiB5ZXQgYW5vdGhlciBvdXRzdGFuZGluZyBzcGVlY2ggc2hlIHNhaWQKdGhhdCBzaGUgd2FudGVkIGhlciBzdG9yeSB0byBiZSBzaGFyZWQgd2lkZWx5IHNvIHRoYXQgb3RoZXJzIGFyZSBtb3RpdmF0ZWQgdG8Kb3ZlcmNvbWUgdGhlIGRpZmZpY3VsdGllcyBvZiBsaWZlLiBIZXIgZmFtZSBoYXMgbmV2ZXIgYWZmZWN0ZWQgaGVyIHBlcnNvbmEuClNpbmRodXRhaeKAmXMgaGFwcGluZXNzIGxpZXMgaW4gYmVpbmcgd2l0aCBoZXIgY2hpbGRyZW4sIGZ1bGZpbGxpbmcgdGhlaXIgZHJlYW1zCmFuZCBzZXR0bGluZyB0aGVtIGRvd24gaW4gbGlmZS48L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPkluIHNwaXRlIG9mIGEgc2VyaWVzIG9mIHN0cnVnZ2xlcyB0aGF0CnNoZSBmYWNlZCBpbiBmdWxmaWxsaW5nIGhlciBtaXNzaW9uLCBTYXBrYWwgaGFzIGFkb3B0ZWQgb3ZlciAxLDEwMCBvcnBoYW4KY2hpbGRyZW4uIFByZXNlbnRseSwgc2hlIGhhcyBhIGdyYW5kIGZhbWlseSBvZiAyMDcgc29ucy1pbi1sYXcsIDM2CmRhdWdodGVycy1pbi1sYXcsIGFuZCBtb3JlIHRoYW4gMTA1MCBncmFuZGNoaWxkcmVuLiBUaGUgYmVzdCB0aGluZyBpcyB0aGF0IG1hbnkKb2YgdGhlbSBhcmUgc2VydmluZyBzb2NpZXR5IGluIGRpZmZlcmVudCB3YXlzLiBTb21lIG9mIHRoZW0gaGF2ZSBiZWNvbWUgbGF3eWVycywKZG9jdG9ycyB3aGlsZSBvdGhlcnMgc3RhcnRlZCB0aGVpciBvd24gc2hlbHRlciBob21lcy48L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxiPiZuYnNwOzwvYj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gY2xhc3M9InB1cnBsZVRleHQiPkF3YXJkcyBhbmQgcmVjb2duaXRpb248L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPlNpbmRodXRhaeKAmXMgZXh0ZW5zaXZlIHNvY2lhbCB3b3JrIGhhcwpiZWVuIHJlY29nbml6ZWQgdGhyb3VnaCBvdmVyIDc1MCBhd2FyZHMuIFNoZSByZWNlaXZlZCB0aGUgcHJlc3RpZ2lvdXMgbmF0aW9uYWwKYXdhcmQgZm9yIDxpPkljb25pYyBNb3RoZXI8L2k+IGFuZCBNb3RoZXIKVGVyZXNhIEF3YXJkcyBmb3IgU29jaWFsIEp1c3RpY2UgaW4gMjAxMy4gU2Fwa2FsIHdhcyBjb25mZXJyZWQgYSBEb2N0b3JhdGUgaW4gTGl0ZXJhdHVyZQpieSB0aGUgRFkgUGF0aWwgSW5zdGl0dXRlIG9mIFRlY2hub2xvZ3kgYW5kIFJlc2VhcmNoLCBQdW5lIGluIDIwMTYuPC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5TaGUgYWxzbyBnb3QgYW4gYXdhcmQga25vd24gYXMg4oCYVGhlIE1pbmQKb2YgU3RlZWzigJkgaW4gMjAxMC4gVHJ1ZSB0byB0aGUgYXdhcmTigJlzIG5hbWUsIFNpbmR1dGFpIGhhcyBhIG1pbmQgb2YgcHVyZSBzdGVlbC4KSW4gb3JkZXIgdG8gYWNrbm93bGVkZ2UgaGVyIHJlbWFya2FibGUgY29udHJpYnV0aW9uIHRvIHNvY2lldHkgc2hlIHdhcyBnaXZlbiB0aGUKcHJlc3RpZ2lvdXMgQWhpbHlhYmFpIEhvbGthciBhd2FyZCBieSB0aGUgTWFoYXJhc2h0cmEgZ292ZXJubWVudCBpbiAyMDAyLiBTYXBrYWwKYWxzbyByZWNlaXZlZCB0aGUgQWhtYWRpeXlhJm5ic3A7UGVhY2UgUHJpemUgYXQgdGhlIE5hdGlvbmFsIFBlYWNlClN5bXBvc2l1bSZuYnNwO2hlbGQgYXQgTG9uZG9uIGluIDIwMTQuPC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5SZWNlbnRseSwgb24gSW50ZXJuYXRpb25hbCBXb21lbiYjMzk7cyBEYXkgMjAxOCwgUHJlc2lkZW50IFJhbSBOYXRoIEtvdmluZCBob25vdXJlZCB3b21lbiBhY2hpZXZlcnMgd2l0aCZuYnNwOzxpPk5hcmkgU2hha3RpIFB1cmFza2FyPC9pPi4gU2luZGh1dGFpIHdhcyBvbmUKb2YgdGhlIHRoaXJ0eSBuaW5lIHdvbWVuIGFjaGlldmVycyB3aG8gcmVjZWl2ZWQgdGhpcyBwcmVzdGlnaW91cyBhd2FyZC4gPC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5UaGUgTWFyYXRoaSBtb3ZpZSA8aT5NZWUgU2luZGh1dGFpIFNhcGthbDwvaT4gd2FzIGJhc2VkIG9uIGhlciBsaWZlLiBUaGUgZmlsbSB3YXMgc2VsZWN0ZWQKZm9yIHRoZSA1NHRoIExvbmRvbiBGaWxtIEZlc3RpdmFsLiBGaWxtIG1ha2VyIEFuYW50aCBNYWhhZGV2YW4gc2FpZCwgPHNwYW4gc3R5bGU9ImJhY2tncm91bmQ6d2hpdGUiPuKAnFNoZSBoYXMgY2hhbmdlZCBteSBsaWZlLiBUb2RheSBzaGUgaXMgbWFhaSB0byBtZSBhbmQKSSBhbSBoZXIgYmFsYS4gSXQgaXMgaXJvbmljYWwgdGhhdCBhZnRlciBtYWtpbmcgdGVuIEhpbmRpIGZpbG1zLCB0aGF0IG9uZQpNYXJhdGhpIGZpbG0geW91IG1ha2UgZ2V0cyB5b3UgZm91ciBuYXRpb25hbCBhd2FyZHMuIFNvbWV3aGVyZSBvdXIgbGl2ZXMgd2VyZQpkZXN0aW5lZCB0byBtZWV04oCdLjwvc3Bhbj4gPGI+MTwvYj48L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPkluIDQyIHllYXJzIHNoZSBoYXMgcmFpc2VkIGFib3V0IDEsMjAwCmNoaWxkcmVuLiBIZXIgaW5zcGlyaW5nIGpvdXJuZXkgc2hvd3MgdGhhdCBmb3IgYSBjb21taXR0ZWQgaW5kaXZpZHVhbCBub3RoaW5nCmlzIGltcG9zc2libGUuIFNpbmRodXRhaSBpcyBhbiBlcGl0b21lIG9mIEh1bWFuaXR5LiBGcm9tIGJlaW5nIGEgZGVwcml2ZWQgd2lmZQp0byBiZWdnaW5nIG9uIHRoZSBzdHJlZXRzLCBzaGUgaGFzIG5vdyBiZWNvbWUgYSDigJhNb3RoZXIgb2Ygb3JwaGFucyBhbmQKaGVscGxlc3PigJkgY2hpbGRyZW4uIEV2ZW4gYXQgNzAgc2hlIGhhcyB0aGUgc2FtZSBkcml2ZSB0byBkbyBzb21ldGhpbmcgZ29vZCBmb3Igc29jaWV0eS48L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPjxhIGhyZWY9Imh0dHBzOi8vd3d3LmVzYW1za3JpdGkuY29tL2F1dGhvci9SYWtzaGEtUGFoYXJpYS0uYXNweCI+VG8gcmVhZCBhbGwKYXJ0aWNsZXMgYnkgdGhlIEF1dGhvcjwvYT48L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPjxhIGhyZWY9Imh0dHA6Ly9zaW5kaHV0YWlzYXBha2FsLm9yZy8iPlRvCnZpc2l0IFNJTkRIVVRBSeKAmXMgc2l0ZTwvYT4gPC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PGI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5SZWZlcmVuY2VzPC9zcGFuPjwvYj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj4xIDxhIGhyZWY9Imh0dHA6Ly93d3cuZnJlZXByZXNzam91cm5hbC5pbi9mZWF0dXJlZC1ibG9nL3dvbWVucy1kYXktMjAxNy1tb3RoZXItb2Ytb3JwaGFucy1zaW5kaHV0YWktc2Fwa2FsLzEwMzEwMDIiPkZyZWUKUHJlc3MgSm91cm5hbCBhcnRpY2xlPC9hPiAmbmJzcDs8L3NwYW4+PC9wPmQCEA8PFgIfFGhkZAIRDw8WAh8UaGRkAhIPFgIfEwXbBDxkaXYgY2xhc3M9ImFydGljbGVUYWdBcmVhIj48ZGl2IGNsYXNzPSJtZWRpYSI+PGRpdiBjbGFzcz0ibWVkaWEtbGVmdCI+PGg2PjxpIGNsYXNzPSJmYSBmYS10YWciIGFyaWEtaGlkZGVuPSJ0cnVlIj48L2k+PHNwYW4+VGFnZ2VkIDo8L3NwYW4+PC9oNj48L2Rpdj48ZGl2IGNsYXNzPSJtZWRpYS1ib2R5Ij48ZGl2IGNsYXNzPSJhcnRpY2xlVGFnTGluayI+PHVsPiAgIDxsaT48YSBocmVmPScvdGFncy9TaW5kaHV0YWktU2Fwa2FsLmFzcHgnPlNpbmRodXRhaSBTYXBrYWw8L2E+IDwvbGk+ICAgPGxpPjxhIGhyZWY9Jy90YWdzL0RoYXJtYS5hc3B4Jz4gRGhhcm1hPC9hPiA8L2xpPiAgIDxsaT48YSBocmVmPScvdGFncy9Hb29kLU5ld3MtSW5kaWEuYXNweCc+IEdvb2QgTmV3cyBJbmRpYTwvYT4gPC9saT4gICA8bGk+PGEgaHJlZj0nL3RhZ3MvT3B0aW1pc3QtSW5kaWEuYXNweCc+IE9wdGltaXN0IEluZGlhPC9hPiA8L2xpPiAgIDxsaT48YSBocmVmPScvdGFncy9PcnBoYW5zLUluZGlhLmFzcHgnPiBPcnBoYW5zIEluZGlhPC9hPiA8L2xpPiAgIDxsaT48YSBocmVmPScvdGFncy8uYXNweCc+IDwvYT4gPC9saT48L3VsPjwvZGl2PjwvZGl2PjwvZGl2PjwvZGl2PmQCEw8WAh8TBYYOPHVsIGNsYXNzPSJsYXRlc3RBcnRpY2xlU2xpZGVyTGlzdCI+PGxpPiA8YSBocmVmPScvZS9IaXN0b3J5L0luZGlhbi1IaXN0b3J5L0hvdy1Ccml0aXNoLXNvbGRpZXJzLWluLU1pbGl0YXJ5LUNhbnRvbm1lbnRzLWNvbnRyaWJ1dGVkLXRvLXNwcmVhZC1vZi1WZW5lcmVhbC1EaXNlYXNlcy1pbi1JbmRpYS0tMS5hc3B4Jz48aDQ+SG93IEJyaXRpc2ggc29sZGllcnMgaW4gTWlsaXRhcnkgQ2FudG9ubWVudHMgY29udHJpYnV0ZWQgdG8gc3ByZWFkIG9mIFZlbmVyZWFsIERpc2Vhc2VzIGluIEluZGlhIDwvaDQ+PC9hPjwvbGk+PGxpPiA8YSBocmVmPScvZS9OYXRpb25hbC1BZmZhaXJzL0lkZWFzLWFkLVBvbGljeS9JbXBhY3Qtb2YtUXVpY2stU2VydmljZS1EZWxpdmVyeS1vbi1QaHlzaWNhbC1hbmQtTWVudGFsLUhlYWx0aC0tMS5hc3B4Jz48aDQ+SW1wYWN0IG9mIFF1aWNrIFNlcnZpY2UgRGVsaXZlcnkgb24gUGh5c2ljYWwgYW5kIE1lbnRhbCBIZWFsdGggPC9oND48L2E+PC9saT48bGk+IDxhIGhyZWY9Jy9lL0N1bHR1cmUvSW5kaWFuLUN1bHR1cmUvSGluZGktYmluZHMtUGVvcGxlLW9mLUFydW5hY2hhbC1QcmFkZXNoLWxpa2UtRmV2aWNvbC0tMS5hc3B4Jz48aDQ+SGluZGkgYmluZHMgUGVvcGxlIG9mIEFydW5hY2hhbCBQcmFkZXNoIGxpa2UgRmV2aWNvbCA8L2g0PjwvYT48L2xpPjxsaT4gPGEgaHJlZj0nL2UvU3Bpcml0dWFsaXR5L1BoaWxvc29waHkvRml2ZS1QaWxsYXJzLW9mLVNwaXJpdHVhbC1Hcm93dGgtMS5hc3B4Jz48aDQ+Rml2ZSBQaWxsYXJzIG9mIFNwaXJpdHVhbCBHcm93dGg8L2g0PjwvYT48L2xpPjxsaT4gPGEgaHJlZj0nL2UvQ3VsdHVyZS9JbmRpYW4tQ3VsdHVyZS9EYWxhaS1MYW1hLUJpcnRoZGF5LUNlbGVicmF0aW9ucy0yMDI1LS0xLmFzcHgnPjxoND5EYWxhaSBMYW1hIEJpcnRoZGF5IENlbGVicmF0aW9ucyAyMDI1IDwvaDQ+PC9hPjwvbGk+PGxpIGNsYXNzPSJzaGFyZVdvcnRoeVBob3RvQ2xhc3MiPiA8YSBocmVmPScvYS9VdHRhci1QcmFkZXNoL1dhbGwtUGFpbnRpbmdzLW9mLUthc2hpLmFzcHgnPjxoND5XYWxsIFBhaW50aW5ncyBvZiBLYXNoaTwvaDQ+PC9hPjwvbGk+PGxpIGNsYXNzPSJzaGFyZVdvcnRoeVBob3RvQ2xhc3MiPiA8YSBocmVmPScvYS9VdHRhci1QcmFkZXNoL0Rldi1EZWVwYXZhbGktVmFyYW5hc2kuYXNweCc+PGg0PkRldiBEZWVwYXZhbGkgVmFyYW5hc2k8L2g0PjwvYT48L2xpPjxsaSBjbGFzcz0ic2hhcmVXb3J0aHlQaG90b0NsYXNzIj4gPGEgaHJlZj0nL2EvVXR0YXJha2hhbmQvQ29yYmV0dC1OYXRpb25hbC1QYXJrLUJleW9uZC1UaWdlcnMuYXNweCc+PGg0PkNvcmJldHQgTmF0aW9uYWwgUGFyayBCZXlvbmQgVGlnZXJzPC9oND48L2E+PC9saT48bGkgY2xhc3M9InNoYXJlV29ydGh5UGhvdG9DbGFzcyI+IDxhIGhyZWY9Jy9hL1V0dGFyYWtoYW5kL1RpZ2Vycy1vZi1Db3JiZXR0LU5hdGlvbmFsLVBhcmsuYXNweCc+PGg0PlRpZ2VycyBvZiBDb3JiZXR0IE5hdGlvbmFsIFBhcms8L2g0PjwvYT48L2xpPjxsaSBjbGFzcz0ic2hhcmVXb3J0aHlQaG90b0NsYXNzIj4gPGEgaHJlZj0nL2EvUmFqYXN0aGFuL0dBTkdBVVItRmVzdGl2YWwtSmFpcHVyLmFzcHgnPjxoND5HQU5HQVVSIEZlc3RpdmFsIEphaXB1cjwvaDQ+PC9hPjwvbGk+PGxpIGNsYXNzPSJzaGFyZVdvcnRoeVBob3RvQ2xhc3MiPiA8YSBocmVmPScvdi9NaWxreXdheS1UaW1lbGFwc2UtQXQtVGFibywtU3BpdGktVmFsbGV5LzIzLmFzcHgnPjxoND5NaWxreXdheSBUaW1lbGFwc2UgYXQgVGFibywgU3BpdGkgVmFsbGV5PC9oND48L2E+PC9saT48L3VsPmQCFA8WAh8TBdQDCTxkaXYgY2xhc3M9ImdhbGxsZXJ5RGV0YWlsUmlnaHRBZCI+PGEgaHJlZj0iaHR0cDovL3d3dy5lc2Ftc2tyaXRpLmNvbS9hL01haGFyYXNodHJhL0thaWxhc2EtVGVtcGxlLUVsbG9yYS5hc3B4Ij48aW1nIG9uY29udGV4dG1lbnU9J3JldHVybiBmYWxzZTsnIHNyYz0iaHR0cDovL3d3dy5lc2Ftc2tyaXRpLmNvbS9waG90b2dyYXBoLzQ3XzE2ODI0LmpwZyIgY2xhc3M9ImltZy1yZXNwb25zaXZlIiB0aXRsZT0iS2FpbGFzYSBUZW1wbGUgRWxsb3JhIiBhbHQ9IiI+PHNwYW4gc3R5bGU9J3RleHQtYWxpZ246IGNlbnRlcjtkaXNwbGF5OiBibG9jaztjb2xvcjogIzAwMDtmb250LXdlaWdodDogNjAwO3BhZGRpbmc6IDVweCAxMHB4O3dpZHRoOiAxMDAlO2ZvbnQtZmFtaWx5OiAnTGF0bycsIHNhbnMtc2VyaWY7Jz5LYWlsYXNhIFRlbXBsZSBFbGxvcmE8L3NwYW4+PC9hPjwvZGl2PjwhLS0gU3ViR2FsbGVyeVJpZ2h0QWQgLS0+ZAIVDxYCHxMF3QMJPGRpdiBjbGFzcz0iZ2FsbGxlcnlEZXRhaWxSaWdodEFkIj48YSBocmVmPSJodHRwOi8vd3d3LmVzYW1za3JpdGkuY29tL2EvVXR0YXItUHJhZGVzaC9WcmluZGF2YW4tb24tSmFubWFzaHRhbWktLmFzcHgiPjxpbWcgb25jb250ZXh0bWVudT0ncmV0dXJuIGZhbHNlOycgc3JjPSJodHRwOi8vd3d3LmVzYW1za3JpdGkuY29tL3Bob3RvZ3JhcGgvdl81LmpwZyIgY2xhc3M9ImltZy1yZXNwb25zaXZlIiB0aXRsZT0iVnJpbmRhdmFuIG9uIEphbm1hc2h0YW1pICIgYWx0PSIiPjxzcGFuIHN0eWxlPSd0ZXh0LWFsaWduOiBjZW50ZXI7ZGlzcGxheTogYmxvY2s7Y29sb3I6ICMwMDA7Zm9udC13ZWlnaHQ6IDYwMDtwYWRkaW5nOiA1cHggMTBweDt3aWR0aDogMTAwJTtmb250LWZhbWlseTogJ0xhdG8nLCBzYW5zLXNlcmlmOyc+VnJpbmRhdmFuIG9uIEphbm1hc2h0YW1pIDwvc3Bhbj48L2E+PC9kaXY+PCEtLSBTdWJHYWxsZXJ5UmlnaHRBZCAtLT5kAhYPFgIfEwXBAwk8ZGl2IGNsYXNzPSJnYWxsbGVyeURldGFpbFJpZ2h0QWQiPjxhIGhyZWY9Imh0dHA6Ly93d3cuZXNhbXNrcml0aS5jb20vYS9HdWphcmF0L0dpci1OYXRpb25hbC1QYXJrLmFzcHgiPjxpbWcgb25jb250ZXh0bWVudT0ncmV0dXJuIGZhbHNlOycgc3JjPSJodHRwOi8vd3d3LmVzYW1za3JpdGkuY29tL3Bob3RvZ3JhcGgvZ2lyLTcuanBnIiBjbGFzcz0iaW1nLXJlc3BvbnNpdmUiIHRpdGxlPSJHaXIgTmF0aW9uYWwgUGFyayIgYWx0PSIiPjxzcGFuIHN0eWxlPSd0ZXh0LWFsaWduOiBjZW50ZXI7ZGlzcGxheTogYmxvY2s7Y29sb3I6ICMwMDA7Zm9udC13ZWlnaHQ6IDYwMDtwYWRkaW5nOiA1cHggMTBweDt3aWR0aDogMTAwJTtmb250LWZhbWlseTogJ0xhdG8nLCBzYW5zLXNlcmlmOyc+R2lyIE5hdGlvbmFsIFBhcms8L3NwYW4+PC9hPjwvZGl2PjwhLS0gU3ViR2FsbGVyeVJpZ2h0QWQgLS0+ZAIXDxYCHxMFhg48dWwgY2xhc3M9ImxhdGVzdEFydGljbGVTbGlkZXJMaXN0Ij48bGk+IDxhIGhyZWY9Jy9lL0hpc3RvcnkvSW5kaWFuLUhpc3RvcnkvSG93LUJyaXRpc2gtc29sZGllcnMtaW4tTWlsaXRhcnktQ2FudG9ubWVudHMtY29udHJpYnV0ZWQtdG8tc3ByZWFkLW9mLVZlbmVyZWFsLURpc2Vhc2VzLWluLUluZGlhLS0xLmFzcHgnPjxoND5Ib3cgQnJpdGlzaCBzb2xkaWVycyBpbiBNaWxpdGFyeSBDYW50b25tZW50cyBjb250cmlidXRlZCB0byBzcHJlYWQgb2YgVmVuZXJlYWwgRGlzZWFzZXMgaW4gSW5kaWEgPC9oND48L2E+PC9saT48bGk+IDxhIGhyZWY9Jy9lL05hdGlvbmFsLUFmZmFpcnMvSWRlYXMtYWQtUG9saWN5L0ltcGFjdC1vZi1RdWljay1TZXJ2aWNlLURlbGl2ZXJ5LW9uLVBoeXNpY2FsLWFuZC1NZW50YWwtSGVhbHRoLS0xLmFzcHgnPjxoND5JbXBhY3Qgb2YgUXVpY2sgU2VydmljZSBEZWxpdmVyeSBvbiBQaHlzaWNhbCBhbmQgTWVudGFsIEhlYWx0aCA8L2g0PjwvYT48L2xpPjxsaT4gPGEgaHJlZj0nL2UvQ3VsdHVyZS9JbmRpYW4tQ3VsdHVyZS9IaW5kaS1iaW5kcy1QZW9wbGUtb2YtQXJ1bmFjaGFsLVByYWRlc2gtbGlrZS1GZXZpY29sLS0xLmFzcHgnPjxoND5IaW5kaSBiaW5kcyBQZW9wbGUgb2YgQXJ1bmFjaGFsIFByYWRlc2ggbGlrZSBGZXZpY29sIDwvaDQ+PC9hPjwvbGk+PGxpPiA8YSBocmVmPScvZS9TcGlyaXR1YWxpdHkvUGhpbG9zb3BoeS9GaXZlLVBpbGxhcnMtb2YtU3Bpcml0dWFsLUdyb3d0aC0xLmFzcHgnPjxoND5GaXZlIFBpbGxhcnMgb2YgU3Bpcml0dWFsIEdyb3d0aDwvaDQ+PC9hPjwvbGk+PGxpPiA8YSBocmVmPScvZS9DdWx0dXJlL0luZGlhbi1DdWx0dXJlL0RhbGFpLUxhbWEtQmlydGhkYXktQ2VsZWJyYXRpb25zLTIwMjUtLTEuYXNweCc+PGg0PkRhbGFpIExhbWEgQmlydGhkYXkgQ2VsZWJyYXRpb25zIDIwMjUgPC9oND48L2E+PC9saT48bGkgY2xhc3M9InNoYXJlV29ydGh5UGhvdG9DbGFzcyI+IDxhIGhyZWY9Jy9hL1V0dGFyLVByYWRlc2gvV2FsbC1QYWludGluZ3Mtb2YtS2FzaGkuYXNweCc+PGg0PldhbGwgUGFpbnRpbmdzIG9mIEthc2hpPC9oND48L2E+PC9saT48bGkgY2xhc3M9InNoYXJlV29ydGh5UGhvdG9DbGFzcyI+IDxhIGhyZWY9Jy9hL1V0dGFyLVByYWRlc2gvRGV2LURlZXBhdmFsaS1WYXJhbmFzaS5hc3B4Jz48aDQ+RGV2IERlZXBhdmFsaSBWYXJhbmFzaTwvaDQ+PC9hPjwvbGk+PGxpIGNsYXNzPSJzaGFyZVdvcnRoeVBob3RvQ2xhc3MiPiA8YSBocmVmPScvYS9VdHRhcmFraGFuZC9Db3JiZXR0LU5hdGlvbmFsLVBhcmstQmV5b25kLVRpZ2Vycy5hc3B4Jz48aDQ+Q29yYmV0dCBOYXRpb25hbCBQYXJrIEJleW9uZCBUaWdlcnM8L2g0PjwvYT48L2xpPjxsaSBjbGFzcz0ic2hhcmVXb3J0aHlQaG90b0NsYXNzIj4gPGEgaHJlZj0nL2EvVXR0YXJha2hhbmQvVGlnZXJzLW9mLUNvcmJldHQtTmF0aW9uYWwtUGFyay5hc3B4Jz48aDQ+VGlnZXJzIG9mIENvcmJldHQgTmF0aW9uYWwgUGFyazwvaDQ+PC9hPjwvbGk+PGxpIGNsYXNzPSJzaGFyZVdvcnRoeVBob3RvQ2xhc3MiPiA8YSBocmVmPScvYS9SYWphc3RoYW4vR0FOR0FVUi1GZXN0aXZhbC1KYWlwdXIuYXNweCc+PGg0PkdBTkdBVVIgRmVzdGl2YWwgSmFpcHVyPC9oND48L2E+PC9saT48bGkgY2xhc3M9InNoYXJlV29ydGh5UGhvdG9DbGFzcyI+IDxhIGhyZWY9Jy92L01pbGt5d2F5LVRpbWVsYXBzZS1BdC1UYWJvLC1TcGl0aS1WYWxsZXkvMjMuYXNweCc+PGg0Pk1pbGt5d2F5IFRpbWVsYXBzZSBhdCBUYWJvLCBTcGl0aSBWYWxsZXk8L2g0PjwvYT48L2xpPjwvdWw+ZAIYDxYCHxMFoRw8ZGl2IGNsYXNzPSdyb3cnPjxkaXYgY2xhc3M9J2NvbC1tZC0xMic+PGRpdiBjbGFzcz0nYXJ0aWNsZVBhZ2VSZWxhdGVkTGlua3NIZWFkaW5nJz48aDM+UmVsYXRlZCBMaW5rczwvaDM+PC9kaXY+PC9kaXY+PC9kaXY+PGRpdiBjbGFzcz0ncm93Jz48ZGl2IGNsYXNzPSdjb2wtbWQtMTIgYXJ0aWNsZURldGFpbFJlbGF0ZWRPdXRlcic+PGRpdiBjbGFzcz0nYXJ0aWNsZURldGFpbFJlbGF0ZWRMaW5rc0JveCc+PGEgaHJlZj0naHR0cDovL3d3dy5lc2Ftc2tyaXRpLmNvbS9lL0hpc3RvcnkvSW5kaWFuLUhpc3RvcnkvQ29uZ3Jlc3Mtc3RyYXRlZ3ktaXMtZGl2aWRlLUhpbmR1cy1iYWFheS1DYXN0ZS1hbmQtbWFrZS1TYW5hdGFuaXMtRGVmZW5zaXZlLS0xLmFzcHgnPjxkaXYgY2xhc3M9J3JlbGF0ZWRMaW5rc091dGVyQm94Jz48ZGl2IGNsYXNzPSdyZWxhdGVkTGlua3NCZycgc3R5bGU9J2JhY2tncm91bmQ6IHVybChodHRwOi8vd3d3LmVzYW1za3JpdGkuY29tL2Vzc2F5cy9kb2NmaWxlLzEzXzcxMTcuanBnKTsnPjxkaXYgY2xhc3M9J3JlbGF0ZWRMaW5rc0lubmVyQm94QXJlYSc+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzSW5uZXJCb3hJbm5lcic+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzQ29udGVudE91dGVyJz48ZGl2IGNsYXNzPSdyZWxhdGVkTGlua3NDb250ZW50SW5uZXInPjxoNj5Db25ncmVzcyBzdHJhdGVneSBpcyBkaXZpZGUgSGluZHVzIGJ5IENhc3RlIGFuZCBtYWtlIFNhbmF0YW4gLi4uPC9oNj48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj48L2E+PC9kaXY+PGRpdiBjbGFzcz0nYXJ0aWNsZURldGFpbFJlbGF0ZWRMaW5rc0JveCc+PGEgaHJlZj0naHR0cDovL3d3dy5lc2Ftc2tyaXRpLmNvbS9lL1NwaXJpdHVhbGl0eS9QaGlsb3NvcGh5L1NhbWFueWEtRGhhcm1hLWFuZC1TcGlyaXR1YWxpdHktMS5hc3B4Jz48ZGl2IGNsYXNzPSdyZWxhdGVkTGlua3NPdXRlckJveCc+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzQmcnIHN0eWxlPSdiYWNrZ3JvdW5kOiB1cmwoaHR0cDovL3d3dy5lc2Ftc2tyaXRpLmNvbS9lc3NheXMvZG9jZmlsZS8xMzMwLmpwZyk7Jz48ZGl2IGNsYXNzPSdyZWxhdGVkTGlua3NJbm5lckJveEFyZWEnPjxkaXYgY2xhc3M9J3JlbGF0ZWRMaW5rc0lubmVyQm94SW5uZXInPjxkaXYgY2xhc3M9J3JlbGF0ZWRMaW5rc0NvbnRlbnRPdXRlcic+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzQ29udGVudElubmVyJz48aDY+U2FtYW55YSBEaGFybWEgYW5kIFNwaXJpdHVhbGl0eTwvaDY+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+PC9hPjwvZGl2PjxkaXYgY2xhc3M9J2FydGljbGVEZXRhaWxSZWxhdGVkTGlua3NCb3gnPjxhIGhyZWY9J2h0dHA6Ly93d3cuZXNhbXNrcml0aS5jb20vZS9DdWx0dXJlL0luZGlhbi1DdWx0dXJlL0NvZXhpc3RlbmNlLW9mLUhpbmR1LC1CdWRkaGlzdC1hbmQtSmFpbi1tb251bWVudHMtYW5kLXBpbGdyaW1hZ2VzLS0xLmFzcHgnPjxkaXYgY2xhc3M9J3JlbGF0ZWRMaW5rc091dGVyQm94Jz48ZGl2IGNsYXNzPSdyZWxhdGVkTGlua3NCZycgc3R5bGU9J2JhY2tncm91bmQ6IHVybChodHRwOi8vd3d3LmVzYW1za3JpdGkuY29tL2Vzc2F5cy9kb2NmaWxlLzE1XzM4MDIuanBnKTsnPjxkaXYgY2xhc3M9J3JlbGF0ZWRMaW5rc0lubmVyQm94QXJlYSc+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzSW5uZXJCb3hJbm5lcic+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzQ29udGVudE91dGVyJz48ZGl2IGNsYXNzPSdyZWxhdGVkTGlua3NDb250ZW50SW5uZXInPjxoNj5Db2V4aXN0ZW5jZSBvZiBIaW5kdSwgQnVkZGhpc3QgYW5kIEphaW4gbW9udW1lbnRzIGFuZCBwaWxncmkgLi4uPC9oNj48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj48L2E+PC9kaXY+PGRpdiBjbGFzcz0nYXJ0aWNsZURldGFpbFJlbGF0ZWRMaW5rc0JveCc+PGEgaHJlZj0naHR0cDovL3d3dy5lc2Ftc2tyaXRpLmNvbS9lL1NwaXJpdHVhbGl0eS9QaGlsb3NvcGh5L1VuaXR5LWJldHdlZW4tU2FuYXRhbi1hbmQtU2lraC1EaGFybWEtMS5hc3B4Jz48ZGl2IGNsYXNzPSdyZWxhdGVkTGlua3NPdXRlckJveCc+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzQmcnIHN0eWxlPSdiYWNrZ3JvdW5kOiB1cmwoaHR0cDovL3d3dy5lc2Ftc2tyaXRpLmNvbS9lc3NheXMvZG9jZmlsZS8xMzAwLmpwZyk7Jz48ZGl2IGNsYXNzPSdyZWxhdGVkTGlua3NJbm5lckJveEFyZWEnPjxkaXYgY2xhc3M9J3JlbGF0ZWRMaW5rc0lubmVyQm94SW5uZXInPjxkaXYgY2xhc3M9J3JlbGF0ZWRMaW5rc0NvbnRlbnRPdXRlcic+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzQ29udGVudElubmVyJz48aDY+VW5pdHkgYmV0d2VlbiBTYW5hdGFuIGFuZCBTaWtoIERoYXJtYTwvaDY+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+PC9hPjwvZGl2PjxkaXYgY2xhc3M9J2FydGljbGVEZXRhaWxSZWxhdGVkTGlua3NCb3gnPjxhIGhyZWY9J2h0dHA6Ly93d3cuZXNhbXNrcml0aS5jb20vZS9TcGlyaXR1YWxpdHkvRWR1Y2F0aW9uL1doYXQtaXMtdGhlLWRpZmZlcmVuY2UtYmV0d2Vlbi1hLVByb2Zlc3Npb24tYW5kLWEtVm9jYXRpb24tMS5hc3B4Jz48ZGl2IGNsYXNzPSdyZWxhdGVkTGlua3NPdXRlckJveCc+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzQmcnIHN0eWxlPSdiYWNrZ3JvdW5kOiB1cmwoaHR0cDovL3d3dy5lc2Ftc2tyaXRpLmNvbS9lc3NheXMvZG9jZmlsZS82XzgzNDguanBnKTsnPjxkaXYgY2xhc3M9J3JlbGF0ZWRMaW5rc0lubmVyQm94QXJlYSc+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzSW5uZXJCb3hJbm5lcic+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzQ29udGVudE91dGVyJz48ZGl2IGNsYXNzPSdyZWxhdGVkTGlua3NDb250ZW50SW5uZXInPjxoNj5XaGF0IGlzIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gYSBQcm9mZXNzaW9uIGFuZCBhIFZvY2F0aW9uPC9oNj48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj48L2E+PC9kaXY+PGRpdiBjbGFzcz0nYXJ0aWNsZURldGFpbFJlbGF0ZWRMaW5rc0JveCc+PGEgaHJlZj0naHR0cDovL3d3dy5lc2Ftc2tyaXRpLmNvbS9lL0N1bHR1cmUvSW5kaWFuLUN1bHR1cmUvU3Rvcmllcy1vZi1CaGFyYXQtMTV+RG8tbm90LWxpZS1ieS1XaG9pc1dpc2UtYnktTW90aGVyLUhlYXJ0LWJ5LUh1cnJ5dG9EaWUtMS5hc3B4Jz48ZGl2IGNsYXNzPSdyZWxhdGVkTGlua3NPdXRlckJveCc+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzQmcnIHN0eWxlPSdiYWNrZ3JvdW5kOiB1cmwoaHR0cDovL3d3dy5lc2Ftc2tyaXRpLmNvbS9lc3NheXMvZG9jZmlsZS8xNV81NDg3LmpwZyk7Jz48ZGl2IGNsYXNzPSdyZWxhdGVkTGlua3NJbm5lckJveEFyZWEnPjxkaXYgY2xhc3M9J3JlbGF0ZWRMaW5rc0lubmVyQm94SW5uZXInPjxkaXYgY2xhc3M9J3JlbGF0ZWRMaW5rc0NvbnRlbnRPdXRlcic+PGRpdiBjbGFzcz0ncmVsYXRlZExpbmtzQ29udGVudElubmVyJz48aDY+U3RvcmllcyBvZiBCaGFyYXQgMTUtRG8gbm90IGxpZS9XaG9pc1dpc2UvTW90aGVyIEhlYXJ0L0h1cnJ5IC4uLjwvaDY+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+PC9hPjwvZGl2PjwvZGl2PjwvZGl2PmQCGQ8WAh8TBQ9SYWtzaGEgUGFoYXJpYSBkAhoPFgIfEwUOU2VwdGVtYmVyIDIwMThkAhsPFgIfEwWRATxsaT48aSBjbGFzcz0nZmEgZmEtZW52ZWxvcGUtbycgdGl0bGU9J21haWwnIGFyaWEtaGlkZGVuPSd0cnVlJz48L2k+PGEgaHJlZj0nbWFpbHRvOnJha3NoYS5waHJAZ29vZ2xlbWFpbC5jb20nPnJha3NoYS5waHJAZ29vZ2xlbWFpbC5jb208L2E+PC9saT5kAhwPFgIfEwWneTx1bCBzdHlsZT0ibGlzdC1zdHlsZS10eXBlOmRpc2MiPjxsaT48c3BhbiBjbGFzcz0ic25hcHNob3RQb2ludCI+U2luZGh1dGFpIHdhcyBtYXJyaWVkIGF0IHRlbiwgYWJhbmRvbmVkIGJ5IGhlciBodXNiYW5kIGF0IHR3ZW50eSwgYmVjYW1lIG1vdGhlciBhdCB0aGUgc2FtZSBhZ2UgYW5kIGhhZCBub3doZXJlIHRvIGdvLiBTaGUgYmVnZ2VkIGZvciBhIGxpdmluZy4gVGhlIERpdmluZSBob3dldmVyLCBoYWQgZGlmZmVyZW50IHBsYW5zIGZvciBoZXIuIFNoZSBhZG9wdGVkIG9uZSBjaGlsZCBhbmQgZ3JhZHVhbGx5IGl0IGJlY2FtZSBhIG1vdmVtZW50LiBXaXRob3V0IGFueSBnb3Zlcm5tZW50IHN1cHBvcnQgYW5kIGJ5IHNoYXJpbmcgaGVyIGxpZmXigJlzIHN0b3J5IHRocm91Z2ggdGFsa3Mgc2hlIG9wZW5lZCBvcnBoYW5hZ2VzIGFuZCBicm91Z2h0IHVwIG92ZXIgMSwyMDAgY2hpbGRyZW4uIEl0IG9ubHkgZ29lcyB0byBzaG93IHRoYXQgbGlmZSBpcyB3aGF0IHlvdSBtYWtlIG91dCBvZiBpdC48L3NwYW4+PC9saT48L3VsPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZiI+Q2hpbGRob29kIGlzIGEgYmxpc3NmdWwgcGhhc2Ugb2YgbGlmZS4KUGFyZW50cyBsb3ZlIGFuZCBwYW1wZXIgdGhlaXIgY2hpbGRyZW4gYW5kIG1ha2UgdGhlbSB0aGUgY2VudHJlIG9mIHRoZWlyIHdvcmxkLgpIb3dldmVyLCB0aGUgc2FtZSBjaGlsZGhvb2QgY2FuIGJlIGhvcnJpZnlpbmcgd2hlbiBhIGNoaWxkIGhhcyBubyBwYXJlbnRzLgpUaGVyZSBpcyBubyBncmVhdGVyIHNvcnJvdyB0aGFuIGJlaW5nIGFuIG9ycGhhbiBvciBsZWFkaW5nIGEgbGlmZSB3aXRob3V0CnNoZWx0ZXIuIEhhdmluZyBzYWlkIHRoYXQsIHRoZSBEaXZpbmUgc2VuZHMgcGVvcGxlIHRvIE1vdGhlciBFYXJ0aCB0byBtYWtlIGEKZGlmZmVyZW5jZS4gU2luZGh1dGFpIGlzIG9uZSBzdWNoIHBlcnNvbjsgYnkgYmVjb21pbmcgYSBtb3RoZXIgdG8gb3JwaGFucyBTaW5kaHV0YWkKYmVjYW1lIEdvZOKAmXMgZ2lmdCB0byB0aG91c2FuZHMgb2Ygb3JwaGFuZWQgY2hpbGRyZW4uICZuYnNwOzwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIGNsYXNzPSJwdXJwbGVUZXh0Ij5XaG8gaXMgU2luZGh1dGFpIFNhcGthbD88L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPlNoZSBpcyBhIHJlbm93bmVkIGFuZCBhIGRldm90ZWQgc29jaWFsIHdvcmtlcgp3aG8gZm9jdXNlcyBvbiBwcmlvcml0aXppbmcgdGhlIGxpdmVzIG9mIG9ycGhhbmVkIGNoaWxkcmVuLiBIZXIgZGVjaXNpb24gdG8KbG9vayBhZnRlciBvcnBoYW5lZCBjaGlsZHJlbiB3YXMgdHJpZ2dlcmVkIGJ5IGhlciBvd24gbGlmZSBleHBlcmllbmNlcy4gRHVyaW5nCmhlciBjaGlsZGhvb2QgU2luZGh1dGFpIHdlbnQgdGhyb3VnaCBwaGFzZXMgd2hlcmUgc2hlIG1pc3NlZCBoYXZpbmcgc29tZW9uZSBieQpoZXIgc2lkZS4gSW4gb25lIG9mIGhlciBpbnRlcnZpZXdzIHNoZSBzYWlkIHRoYXQgaXQgd2FzIGF0IHN1Y2ggdGltZXMgdGhhdCBzaGUKcmVhbGl6ZWQgd2hhdCBpdCBtZWFudCB0byBiZSBhYmFuZG9uZWQuIEhhdmluZyBzdWZmZXJlZCB0aHVzLCBzaGUgbWFkZSBpdCBoZXIKbGlmZeKAmXMgbWlzc2lvbiB0byBzdGFuZCBieSBuZWVkeSBhbmQgaG9tZWxlc3MgY2hpbGRyZW4uIDwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZiI+SGVyIGdyZWF0bmVzcyBhbmQga2luZCBuYXR1cmUgaXMKcmVmbGVjdGVkIGluIG9uZSBvZiBoZXIgc3BlZWNoZXMuIFNoZSBzYWlkLCDigJhJIGFtIHdpdGggZXZlcnlvbmUgd2hvIGhhcyBubwpvdGhlciBwZW9wbGUgdG8gbG9vayBhZnRlciB0aGVt4oCZLjwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PGI+Jm5ic3A7PC9iPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBjbGFzcz0icHVycGxlVGV4dCI+RWFybHkgbGlmZSBhbmQgc3RydWdnbGVzPC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZjtjb2xvcjojNzAzMEEwIj4mbmJzcDs8L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPlNpbmRodXRhaSB3YXMgYm9ybiBvbiAxNDxzdXA+dGg8L3N1cD4KTm92ZW1iZXIgMTk0OCBpbiBhIGNhdHRsZSBncmF6aW5nIGZhbWlseSBpbiBNYWhhcmFzaHRyYeKAmXMgV2FyZGhhIGRpc3RyaWN0LiBIZXIKZmF0aGVyIHdhcyBrZWVuIHRvIGVkdWNhdGUgaGVyIGJ1dCBtb3RoZXIgd2FzIG5vdC4gQXQgdGhlIGFnZSBvZiB0ZW4gc2hlIHdhcwptYXJyaWVkIHRvIGEgbWFuIHR3ZW50eSB5ZWFycyBoZXIgc2VuaW9yLiBQb3N0IG1hcnJpYWdlIHNoZSBmYWNlZCBhIGRpZmZpY3VsdApsaWZlIGJ1dCBzaGUgZGlkIG5vdCBsb3NlIGhvcGUuIEluIGhlciBuZXcgaG9tZSBzaGUgZm91Z2h0IGFnYWluc3QgdGhlCmV4cGxvaXRhdGlvbiBvZiBsb2NhbCB3b21lbiwgd2hvIGNvbGxlY3RlZCBjb3cgZHVuZywgYnkgdGhlIGZvcmVzdHMgZGVwYXJ0bWVudAphbmQgbGFuZGxvcmRzLiA8L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPlRoaXMgb25seSBtYWRlIHRoaW5ncyBtb3JlIGRpZmZpY3VsdCBmb3IKaGVyLiA8L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPkF0IHRoZSB5b3VuZyBhZ2Ugb2YgdHdlbnR5LCB3aGVuIG5pbmUtCm1vbnRocyBwcmVnbmFudCwgc2hlIHdhcyBiZWF0ZW4gYmFkbHkgYW5kIGxlZnQgdG8gZGllIGJ5IGhlciBodXNiYW5kLiBTaGUgZ2F2ZQpiaXJ0aCB0byBhIGJhYnkgZ2lybCBNYW10YSBpbiB0aGF0IHNlbWktY29uc2Npb3VzIHN0YXRlIGFuZCBzdHJ1Z2dsZWQgdG8gc3RheQphbGl2ZS4gU2luZGh1dGFpIHRvb2sgdG8gYmVnZ2luZyBvbiB0aGUgc3RyZWV0cyBhbmQgcmFpbHdheSBwbGF0Zm9ybXMgdG8gc3Vydml2ZS4KQmVjYXVzZSBzaGUgZmVhcmVkIGJlaW5nIHBpY2tlZCB1cCBieSBtZW4gYXQgbmlnaHQgc2hlIG9mdGVuIHNwZW50IHRoZSBuaWdodCBhdApjZW1ldGVyaWVzLiBTdWNoIHdhcyBoZXIgY29uZGl0aW9uIHRoYXQgcGVvcGxlIGNhbGxlZCBoZXIgYSBnaG9zdCBzaW5jZSBzaGUgd2FzCnNlZW4gYXQgbmlnaHQgaW4gdGhlIGNlbWV0ZXJpZXMuIDwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZjtiYWNrZ3JvdW5kOndoaXRlIj7igJxJbiB0aGlzIGNvbnN0YW50CnR1c3NsZSB0byBzdXJ2aXZlLCBzaGUgZm91bmQgaGVyc2VsZiBpbiBDaGlrYWxkYXJhLCBzaXR1YXRlZCBpbiB0aGUgQW1yYXZhdGkKZGlzdHJpY3Qgb2YgTWFoYXJhc2h0cmEuIEhlcmUsIGR1ZSB0byBhIHRpZ2VyIHByZXNlcnZhdGlvbiBwcm9qZWN0LCA4NCB0cmliYWwKdmlsbGFnZXMgd2VyZSBldmFjdWF0ZWQuIEFtaWRzdCB0aGUgY29uZnVzaW9uLCBhIHByb2plY3Qgb2ZmaWNlciBpbXBvdW5kZWQgMTMyCmNvd3Mgb2YgQWRpdmFzaSB2aWxsYWdlcnMgYW5kIG9uZSBvZiB0aGUgY293cyBkaWVkLiBTaW5kaHV0YWkgZGVjaWRlZCB0byBmaWdodApmb3IgYSBwcm9wZXIgcmVoYWJpbGl0YXRpb24gb2YgdGhlIGhlbHBsZXNzIHRyaWJhbCB2aWxsYWdlcnMuIEhlciBlZmZvcnRzIHdlcmUKYWNrbm93bGVkZ2VkIGJ5IHRoZSBNaW5pc3RlciBvZiBGb3Jlc3RzIGFuZCBoZSBtYWRlIGFwcHJvcHJpYXRlIGFycmFuZ2VtZW50cwpmb3IgYWx0ZXJuYXRpdmUgcmVsb2NhdGlvbi48L3NwYW4+4oCdPC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPkl0IHdhcyBkdXJpbmcgdGhlc2UgdHJ5aW5nIHRpbWVzIHRoYXQKc2hlIHJlYWxpemVkIGhvdyBkaWZmaWN1bHQgaXQgd291bGQgYmUgZm9yIGFiYW5kb25lZCBjaGlsZHJlbiBhbmQgb3Igb3JwaGFucwphbmQgZGVjaWRlZCB0byBkbyBzb21ldGhpbmcgZm9yIHRoZW0uICZuYnNwO0hlcgpmaXJzdCBhZG9wdGVkIGNoaWxkIHdhcyBEZWVwYWssIHdob20gc2hlIGZvdW5kIG9uIGEgcmFpbHdheSB0cmFjay4gUXVpdGUgc29vbgpzaGUgaGFkIGFkb3B0ZWQgc2l4dGVlbiBjaGlsZHJlbi4gPC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5TbyBTaW5kaHV0YWkgc3RhcnRlZCB0YWtpbmcgY2FyZSBvZiBjaGlsZHJlbgppbiByZXR1cm4gZm9yIHNvbWUgZm9vZC4gTG9va2luZyBhZnRlciB0aGVzZSBraWRzIHNvb24gYmVjYW1lIHRoZSBtaXNzaW9uIG9mCmhlciBsaWZlLiBTaGUgb3BlbmVkIGhlciBmaXJzdCBhc2hyYW0gYXQgQ2hpa2FsZGhhcmEuIFBlb3BsZSB3aG8gZG9uYXRlZCBtb25leQphc2tlZCBoZXIgZm9yIGEgcmVjZWlwdCBzbyBzaGUgcmVhbGl6ZWQgdGhlIG5lZWQgZm9yIGFuIE5HTy4gPC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmO2JhY2tncm91bmQ6d2hpdGUiPuKAnFNvIHNoZSBmb3JtZWQgJmFtcDsKcmVnaXN0ZXJlZCBoZXIgZmlyc3QgTkdPLCBTYXZpdHJpYmFpIFBodWxlIEdpcmxz4oCZIEhvc3RlbCB1bmRlciB0aGUgRm91bmRhdGlvbiwKVmFudmFzaSBHb3BhbGtydXNobmEgU2hpa3NoYW4gRXZhbSBLcmVlZGEgUHJhc2FyYWsgTWFuZGFsIGluIENoaWthbGRoYXJhIGluCkFtcmF2YXRpLiBUb2RheSwgaGVyIGNoaWxkcmVuIHJ1biBmb3VyIE5HT3MgYW5kIERlZXBhaywgaGVyIGZpcnN0IGFkb3B0ZWQgc29uCndobyByZWZ1c2VkIHRvIGxlYXZlIGhlciBvbiBncm93aW5nIHVwLCBoYXMgbmFtZWQgdGhlIHNlY29uZCBvbmUsIE1hbXRhIEJhbApCaGF3YW4sIGFmdGVyIGhlciBkYXVnaHRlciwgTWFtdGEuIFNpbmRodXRhaSBoYXMgYWxzbyBmb3JtZWQgYSBjb3cgc2hlbHRlciwKR29waWthIEdhaSBSYWtzaGFuIEtlbmRyYSB0byBzYXZlIG9sZCBjb3dzIHRoYXQgYXJlIGJlaW5nIHNlbnQgdG8gdGhlIHNsYXVnaHRlcgpob3VzZXMuIFNoZSBicmluZ3MgdGhlbSB0byB0aGUgc2hlbHRlciBhbmQgY2FyZXMgZm9yIHRoZW0uPC9zcGFuPuKAnSA8Yj4xPC9iPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5UaGlzIHdheSBTaW5kaHUgYmVjYW1lIFNpbmRodXRhaSBvciBNYWFpCm9yIG1vdGhlciBvZiBvcnBoYW5zLjwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZiI+TWFueSBvZiBoZXIgYWRvcHRlZCBjaGlsZHJlbiBhcmUgbm93IGhpZ2hseQpxdWFsaWZpZWQgZm9yIGUuZy4gZG9jdG9ycyBhbmQgbGF3eWVycy4gU29tZSBhZG9wdGVkIGNoaWxkcmVuIGhhdmUgc3RhcnRlZApvcnBoYW5hZ2VzIG9mIHRoZWlyIG93bi4gPC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5XaGVuIFNpbmR1dGFp4oCZcyBodXNiYW5kIHJldHVybmVkIGFuZAphc2tlZCBmb3IgZm9yZ2l2ZW5lc3Mgc2hlIHdhcyBncmFjaW91cyBlbm91Z2ggdG8gZm9yZ2V0IGFuZCBmb3JnaXZlLjwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PGI+Jm5ic3A7PC9iPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBjbGFzcz0icHVycGxlVGV4dCI+U2luZGh1dGFpIC0gQSBsaXZpbmcKZXhhbXBsZSBvZiBodW1hbml0eSBhbmQmbmJzcDtsb3ZlPC9zcGFuPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz4mbmJzcDs8L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6VGltZXMgTmV3IFJvbWFuLHNlcmlmIj5TaW5kaHV0YWnigJlzIGxpZmUgc3RvcnkgaXMgb25lIG9mCmluY3JlZGlibGUgZ3JpdCBhbmQgd2lsbHBvd2VyLiBTaGUgc2hvd2VkIGhvdyBhZHZlcnNpdHkgYnJpbmdzIG91dCB0aGUgYmVzdCBpbgp1cyBhbmQgZGVkaWNhdGVkIGhlciBsaWZlIHRvIGFkb3B0aW5nICZhbXA7IG51cnR1cmluZyBvcnBoYW5zLiBGdXJ0aGVyLCBzaGUKY29uc3RydWN0ZWQgbW9yZSB0aGFuIHNpeCBvcnBoYW5hZ2VzIGluIE1haGFyYXNodHJhIHdoZXJlIG9ycGhhbmVkIGNoaWxkcmVuIGFyZQpnaXZlbiBmb29kLCBzaGVsdGVyLCBhbmQgZWR1Y2F0aW9uLiBIZXIgb3JnYW5pemF0aW9uIGFsc28gZ2F2ZSBzaGVsdGVyIHRvCm51bWVyb3VzIHdvbWVuLCB3aG8gYXJlIGRlc3RpdHV0ZSBhbmQgYWJhbmRvbmVkLiA8L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPlJ1bm5pbmcgdGhlc2Ugc2hlbHRlciBob21lcyBpcyBub3QgYW4KZWFzeSB0YXNrOyBzaGUgd29ya3MgaGFyZCB0byByYWlzZSBmdW5kcyBmb3IgaGVyIG9ycGhhbmFnZXMuIEluc3RlYWQgb2YgdGFraW5nCmZpbmFuY2lhbCBoZWxwIGZyb20gYW55b25lLCBzaGUgZ2F2ZSBwb3dlcmZ1bCBhbmQgaW5zcGlyaW5nIHNwZWVjaGVzIGluIHRoZQpmb3JtIG9mIHNoYXJpbmcgaGVyIGxpZmXigJlzIHN0b3J5LiBBdCB0aGUgZW5kIG9mIGhlciBzcGVlY2hlcywg4oCcc2hlIHNwcmVhZHMgdGhlCmxvb3NlIGVuZCBvZiBoZXIgc2FyaSBhbmQgYXNrcyBmb3IgYWxtcyB0byBmZWVkIGFuZCBlZHVjYXRlIGhlciBjaGlsZHJlbi7igJ0gU2hlCmFwcGVhbHMgdG8gcGVvcGxlIHRvIGhlbHAgdGhlIHVuZGVycHJpdmlsZWdlZCBhbmQgbmVnbGVjdGVkIHNlY3Rpb25zIG9mIHRoZQpzb2NpZXR5LiA8L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPkluIHlldCBhbm90aGVyIG91dHN0YW5kaW5nIHNwZWVjaCBzaGUgc2FpZAp0aGF0IHNoZSB3YW50ZWQgaGVyIHN0b3J5IHRvIGJlIHNoYXJlZCB3aWRlbHkgc28gdGhhdCBvdGhlcnMgYXJlIG1vdGl2YXRlZCB0bwpvdmVyY29tZSB0aGUgZGlmZmljdWx0aWVzIG9mIGxpZmUuIEhlciBmYW1lIGhhcyBuZXZlciBhZmZlY3RlZCBoZXIgcGVyc29uYS4KU2luZGh1dGFp4oCZcyBoYXBwaW5lc3MgbGllcyBpbiBiZWluZyB3aXRoIGhlciBjaGlsZHJlbiwgZnVsZmlsbGluZyB0aGVpciBkcmVhbXMKYW5kIHNldHRsaW5nIHRoZW0gZG93biBpbiBsaWZlLjwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZiI+SW4gc3BpdGUgb2YgYSBzZXJpZXMgb2Ygc3RydWdnbGVzIHRoYXQKc2hlIGZhY2VkIGluIGZ1bGZpbGxpbmcgaGVyIG1pc3Npb24sIFNhcGthbCBoYXMgYWRvcHRlZCBvdmVyIDEsMTAwIG9ycGhhbgpjaGlsZHJlbi4gUHJlc2VudGx5LCBzaGUgaGFzIGEgZ3JhbmQgZmFtaWx5IG9mIDIwNyBzb25zLWluLWxhdywgMzYKZGF1Z2h0ZXJzLWluLWxhdywgYW5kIG1vcmUgdGhhbiAxMDUwIGdyYW5kY2hpbGRyZW4uIFRoZSBiZXN0IHRoaW5nIGlzIHRoYXQgbWFueQpvZiB0aGVtIGFyZSBzZXJ2aW5nIHNvY2lldHkgaW4gZGlmZmVyZW50IHdheXMuIFNvbWUgb2YgdGhlbSBoYXZlIGJlY29tZSBsYXd5ZXJzLApkb2N0b3JzIHdoaWxlIG90aGVycyBzdGFydGVkIHRoZWlyIG93biBzaGVsdGVyIGhvbWVzLjwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+PGI+Jm5ic3A7PC9iPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBjbGFzcz0icHVycGxlVGV4dCI+QXdhcmRzIGFuZCByZWNvZ25pdGlvbjwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZiI+U2luZGh1dGFp4oCZcyBleHRlbnNpdmUgc29jaWFsIHdvcmsgaGFzCmJlZW4gcmVjb2duaXplZCB0aHJvdWdoIG92ZXIgNzUwIGF3YXJkcy4gU2hlIHJlY2VpdmVkIHRoZSBwcmVzdGlnaW91cyBuYXRpb25hbAphd2FyZCBmb3IgPGk+SWNvbmljIE1vdGhlcjwvaT4gYW5kIE1vdGhlcgpUZXJlc2EgQXdhcmRzIGZvciBTb2NpYWwgSnVzdGljZSBpbiAyMDEzLiBTYXBrYWwgd2FzIGNvbmZlcnJlZCBhIERvY3RvcmF0ZSBpbiBMaXRlcmF0dXJlCmJ5IHRoZSBEWSBQYXRpbCBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neSBhbmQgUmVzZWFyY2gsIFB1bmUgaW4gMjAxNi48L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPlNoZSBhbHNvIGdvdCBhbiBhd2FyZCBrbm93biBhcyDigJhUaGUgTWluZApvZiBTdGVlbOKAmSBpbiAyMDEwLiBUcnVlIHRvIHRoZSBhd2FyZOKAmXMgbmFtZSwgU2luZHV0YWkgaGFzIGEgbWluZCBvZiBwdXJlIHN0ZWVsLgpJbiBvcmRlciB0byBhY2tub3dsZWRnZSBoZXIgcmVtYXJrYWJsZSBjb250cmlidXRpb24gdG8gc29jaWV0eSBzaGUgd2FzIGdpdmVuIHRoZQpwcmVzdGlnaW91cyBBaGlseWFiYWkgSG9sa2FyIGF3YXJkIGJ5IHRoZSBNYWhhcmFzaHRyYSBnb3Zlcm5tZW50IGluIDIwMDIuIFNhcGthbAphbHNvIHJlY2VpdmVkIHRoZSBBaG1hZGl5eWEmbmJzcDtQZWFjZSBQcml6ZSBhdCB0aGUgTmF0aW9uYWwgUGVhY2UKU3ltcG9zaXVtJm5ic3A7aGVsZCBhdCBMb25kb24gaW4gMjAxNC48L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPlJlY2VudGx5LCBvbiBJbnRlcm5hdGlvbmFsIFdvbWVuJiMzOTtzIERheSAyMDE4LCBQcmVzaWRlbnQgUmFtIE5hdGggS292aW5kIGhvbm91cmVkIHdvbWVuIGFjaGlldmVycyB3aXRoJm5ic3A7PGk+TmFyaSBTaGFrdGkgUHVyYXNrYXI8L2k+LiBTaW5kaHV0YWkgd2FzIG9uZQpvZiB0aGUgdGhpcnR5IG5pbmUgd29tZW4gYWNoaWV2ZXJzIHdobyByZWNlaXZlZCB0aGlzIHByZXN0aWdpb3VzIGF3YXJkLiA8L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPlRoZSBNYXJhdGhpIG1vdmllIDxpPk1lZSBTaW5kaHV0YWkgU2Fwa2FsPC9pPiB3YXMgYmFzZWQgb24gaGVyIGxpZmUuIFRoZSBmaWxtIHdhcyBzZWxlY3RlZApmb3IgdGhlIDU0dGggTG9uZG9uIEZpbG0gRmVzdGl2YWwuIEZpbG0gbWFrZXIgQW5hbnRoIE1haGFkZXZhbiBzYWlkLCA8c3BhbiBzdHlsZT0iYmFja2dyb3VuZDp3aGl0ZSI+4oCcU2hlIGhhcyBjaGFuZ2VkIG15IGxpZmUuIFRvZGF5IHNoZSBpcyBtYWFpIHRvIG1lIGFuZApJIGFtIGhlciBiYWxhLiBJdCBpcyBpcm9uaWNhbCB0aGF0IGFmdGVyIG1ha2luZyB0ZW4gSGluZGkgZmlsbXMsIHRoYXQgb25lCk1hcmF0aGkgZmlsbSB5b3UgbWFrZSBnZXRzIHlvdSBmb3VyIG5hdGlvbmFsIGF3YXJkcy4gU29tZXdoZXJlIG91ciBsaXZlcyB3ZXJlCmRlc3RpbmVkIHRvIG1lZXTigJ0uPC9zcGFuPiA8Yj4xPC9iPjwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZiI+SW4gNDIgeWVhcnMgc2hlIGhhcyByYWlzZWQgYWJvdXQgMSwyMDAKY2hpbGRyZW4uIEhlciBpbnNwaXJpbmcgam91cm5leSBzaG93cyB0aGF0IGZvciBhIGNvbW1pdHRlZCBpbmRpdmlkdWFsIG5vdGhpbmcKaXMgaW1wb3NzaWJsZS4gU2luZGh1dGFpIGlzIGFuIGVwaXRvbWUgb2YgSHVtYW5pdHkuIEZyb20gYmVpbmcgYSBkZXByaXZlZCB3aWZlCnRvIGJlZ2dpbmcgb24gdGhlIHN0cmVldHMsIHNoZSBoYXMgbm93IGJlY29tZSBhIOKAmE1vdGhlciBvZiBvcnBoYW5zIGFuZApoZWxwbGVzc+KAmSBjaGlsZHJlbi4gRXZlbiBhdCA3MCBzaGUgaGFzIHRoZSBzYW1lIGRyaXZlIHRvIGRvIHNvbWV0aGluZyBnb29kIGZvciBzb2NpZXR5Ljwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZiI+PGEgaHJlZj0iaHR0cHM6Ly93d3cuZXNhbXNrcml0aS5jb20vYXV0aG9yL1Jha3NoYS1QYWhhcmlhLS5hc3B4Ij5UbyByZWFkIGFsbAphcnRpY2xlcyBieSB0aGUgQXV0aG9yPC9hPjwvc3Bhbj48L3A+PHAgc3R5bGU9J21hcmdpbi1ib3R0b206MGNtO21hcmdpbi1ib3R0b206LjAwMDFwdDt0ZXh0LWFsaWduOiZsdDtici8mZ3Q7anVzdGlmeSc+Jm5ic3A7PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OlRpbWVzIE5ldyBSb21hbixzZXJpZiI+PGEgaHJlZj0iaHR0cDovL3NpbmRodXRhaXNhcGFrYWwub3JnLyI+VG8KdmlzaXQgU0lOREhVVEFJ4oCZcyBzaXRlPC9hPiA8L3NwYW4+PC9wPjxwIHN0eWxlPSdtYXJnaW4tYm90dG9tOjBjbTttYXJnaW4tYm90dG9tOi4wMDAxcHQ7dGV4dC1hbGlnbjombHQ7YnIvJmd0O2p1c3RpZnknPiZuYnNwOzwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48Yj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPlJlZmVyZW5jZXM8L3NwYW4+PC9iPjwvcD48cCBzdHlsZT0nbWFyZ2luLWJvdHRvbTowY207bWFyZ2luLWJvdHRvbTouMDAwMXB0O3RleHQtYWxpZ246Jmx0O2JyLyZndDtqdXN0aWZ5Jz48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTpUaW1lcyBOZXcgUm9tYW4sc2VyaWYiPjEgPGEgaHJlZj0iaHR0cDovL3d3dy5mcmVlcHJlc3Nqb3VybmFsLmluL2ZlYXR1cmVkLWJsb2cvd29tZW5zLWRheS0yMDE3LW1vdGhlci1vZi1vcnBoYW5zLXNpbmRodXRhaS1zYXBrYWwvMTAzMTAwMiI+RnJlZQpQcmVzcyBKb3VybmFsIGFydGljbGU8L2E+ICZuYnNwOzwvc3Bhbj48L3A+ZBgBBQ5jdGwwMCRDYXB0Y2hhMQ8FJDVlMGVkZmY5LTk5ODYtNGIxMy04MjJjLTlhODM3ZWMwYjJhMmS8Y1AqkNaE0Z7zX9XUs4aS9M1YDA==" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=Bwo2vCf2KNbf3tgRh9lxyzDrCaq2RXnCZQraqg53K9Vt5OGrL9XRPSxyv-bQCijAhhKJYFllE2Fp1z-4PycmZBFuoDg1&amp;t=638563469773552689" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=3VpJaz2OPWV3FyJ2jFymdZjkpbFNTCOnjQ0mteLKeFfmVZXGoMaW4z3IgFOnABanO89hKApcbYjEKoEd_SnMT3NKWHpJ-rv6wcuxGU96rdFM6gqyotf58PnW1eCUL7ESNZpkGul0kDMMYwj0gs1XITq_lIDjJztjwsK0fxfbuSVE1wua0&amp;t=ffffffffc820c398" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
//]]>
</script>

<script src="/ScriptResource.axd?d=nNEoFRBdHqr7Wrv9kpZ3GRmojEfK8fcpbXqpZmTnFMnBFHgnvoFOmhkraQDVuITjWgPxmyte5O0mt1OP271fFOrMKCfF6y5yJc44toe9vbV8oc6KkHNpomE8Pqs0zljfhmPvVwieza6xJU5KffsJ6iN8SjieiAAde1Df8nxd1Sfv-vkV56UhniSpEO5bx54zr6Fhjw2&amp;t=ffffffffc820c398" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=wrwR9IO8JzPN8-yc_9iYhpoD3IfzO-ZF-MwxLXW7r1E27u1_VgmqcZsgPumH5EXLjjN2Pkw-CaDM3k0XEBlQMah-HPS8YF5YMrhKdXRbAdlwlHwHMFaiwtcfVQ8n6cWhU5sMSs6SzeoZD1qfC5R1c6ZknNc1&amp;t=ffffffffe2c53388" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=rH6ZGfAEFrkkF8xomMLNbGaUPJqsqO6qK7lkzYukg95a9GMIg-2OmA2R801Kq85w6Y01g6w5o5RYQqfs_GlEGwalQPE_IoYQcXjtWynRf5aazmKUBm7vWLswwYZYhFUwjzfRA2FsZjvUMOKgLBoMvnZUBPk1&amp;t=ffffffffe2c53388" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=ZAgGYovk5ofAKciIY7HmqYTsbDB2JsIG54K7tEbeH_CHs_8b_g2nY8JLwPLopo5lKDki3bClMsUI6n2-a9Ltt3WByu7HpTrptjgOKCwDQ-ePtCV2iqO1u_XTYCO934UyPYMUUnR8uwBTRmsIWYNYqtmU10M1&amp;t=ffffffffe2c53388" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=QFUQ1AgDMr2Lwjh7cKyXTdmHl1K4tW3uG80CdO2_6kd4iNGT0OhXsHeYmcK7ihhpP0d63d5gacgXBLLkH4grO6SAmbxLjT2RCqi11qr0zYu1Nhq5cSxkn2LKuFIf58CfSHynam4_VeHmDc_AQ3gXomgfDBtHh4YJsM-DLGRUcdkbwK440&amp;t=ffffffffe2c53388" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=ZTaybjlupjFYpG6xppw2kCuBn-K5tUHUYCt9zSQuJgUD1uFYohtFntzLLk0h4UeUikUqb6fJNx1D-gtSVgGwihl6OLEnUAijIToCaBmCqxEdv2lPDtqoIKeOKwyA9joazUtSI6i5D-GeIPr4JQ6rKjO57YWtdRbLEp1BsMDRh_1P7n4b0&amp;t=ffffffffe2c53388" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=vxYKXYmSAJzX02FRPhrlHHwzJKPUwn84yBxFGUC0W-rEaViZYAjyFsFHUqcrMCL4qMow1hnl8ePekr4PlsUnxshofNDKW1gomk05udpvk8ei0gIm4w6t_xM2dpsCkUUXtca9uFsI-n3p0xl2i-0cve9kHIg558jkChA-JcRzuwutqQOP0&amp;t=ffffffffe2c53388" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=usN3b67l2eW9PSttX6nMubzxAldeAmWKZ28t8bkUlzMQD876AK0ScnnpKC-YZ63-OFSdS01g1y0LeZlZGhRtwd0uj7J1t3dldj8DbDBdn_vLGDQKWaarWbixS3q1XioNobZSLf_1blhYYK5vt2AldpjunOU-GdO6FQUsH4781KPf4qiL0&amp;t=ffffffffe2c53388" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="3FF1BC9C" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAn1X4U6bBHqfZwFJh4plsCMTmdK13i0fUfm5Oarmxwtnlo/zl7a0VoKxfig3ubEhEt7ERoJs4++PolXwqU6ImHYxKXi3F4NpNPz1cQnI/sUyRH+aQwhZehTZc1fBAS4ghbpH9z3JbhWkpgxh4PcddQ9pn4AqZkyoqBv9CuJvVd4zzABe9lPpTjX96HhSQWUODDGkihnh1QB/1QEl4YEnBRbF9sP9g==" />
</div>
        <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', ['tctl00$UpdatePanelSubscribe','UpdatePanelSubscribe'], [], [], 90, 'ctl00');
//]]>
</script>


        <input type="hidden" name="ctl00$hdnValue" id="hdnValue" />
        <header class="">
		<div class="container-fluid">
			<nav class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
            <div class="visible-xs searchSiteBtn" onclick="searchSiteIndex();">
              <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
						<a class="navbar-brand" href="/default.aspx">
							<img src="/images/eSamskriti-culture-spirituality-travel.png" class="img-responsive" title="eSamskriti culture spirituality travel" alt="eSamskriti-culture-spirituality-travel">
						</a>
					</div>

					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="headerSocial headerSocialDesktop social navbar-right">
							<li><a href="https://plus.google.com/116197632981133219340" class="link google-plus" target="_blank">
								<i class="fa fa-google-plus" aria-hidden="true" title="Google+"></i>
							</a>
						</li>

						<li><a href="https://www.facebook.com/eSamskriti" class="link facebook" target="_blank"><i class="fa fa-facebook" aria-hidden="true" title="Facebook"></i></a></li>
						<li><a href="https://twitter.com/eSamskritiindia" class="link twitter" target="_blank">
							<i class="fa fa-twitter" aria-hidden="true" title="Twitter"></i>
						</a>
					</li>
					<li><a href="https://www.youtube.com/channel/UCHnWwG92M-iTHCYh1nY7QPQ" class="link youtube" target="_blank">
							<i class="fa fa-youtube-play" aria-hidden="true"></i>
						</a>
					</li>

          <li><a href="https://www.instagram.com/esamskriti/" class="link instagram" target="_blank">
              <i class="fa fa-instagram" aria-hidden="true"></i>
            </a>
          </li>

					
					<li><a href="/ebook.aspx">eBook</a></li>
					<li><a href="#" data-toggle="modal" data-target="#subscribeModal">Subscribe</a></li>
              <li class="donateBtn"><a href="https://www.esamskriti.com/sa/Support-India/CONTRIBUTE-to-eSamskriti-1.aspx">Donate</a></li>
					<li>
						<div class="navbar-form" role="search" onclick="searchSiteIndex();">
							<div class="input-group add-on">
                                <div class="form-control" name="srch-term" id="srch-term">Search Site Index</div>
								<div class="input-group-btn">
									<div class="btn" type="submit"><i class="glyphicon glyphicon-search"></i></div>
								</div>
							</div>
						</div>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown " >
			          <a href="/s/CULTURE.aspx"> CULTURE</a>
                       <i class="fa fa-caret-down"   aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
			          <div class="dropdown-menu">
			               	<div class="row menuUnderline"><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Traditional-Textiles-India.aspx">Traditional Textiles India</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Indian-Art.aspx">Indian Art</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Indian-Culture.aspx">Indian Culture</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Festivals.aspx">Festivals</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/India-Travel-ad-Yatras.aspx">India Travel & Yatras</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Ceremonies.aspx">Ceremonies</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Indian-Dance-forms.aspx">Indian Dance forms</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Music.aspx">Music</a></li></ul></div><!--customDropDownInner--></div></div><!--row-->
				          
				        </div>
			        </li>
			        <li class="dropdown ">
			          <a href="/s/SPIRITUALITY.aspx">SPIRITUALITY</a>
                      <i class="fa fa-caret-down"   aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>

			          	<div class="dropdown-menu customDropDown">
			          	   	<div class="row menuUnderline"><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Bhagavad-Gita.aspx">Bhagavad Gita</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Upanishads-Commentary.aspx">Upanishads Commentary</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Philosophy.aspx">Philosophy</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Tantra.aspx">Tantra</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Buddha-Vakhya.aspx">Buddha Vakhya</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Vedanta.aspx">Vedanta</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Jaina-Darsana.aspx">Jaina Darsana</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Education.aspx">Education</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Science-ad-Indian-Wisdom.aspx">Science & Indian Wisdom</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Mantras-ad-Jap.aspx">Mantras & Jap</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Brihadaranyaka-Upanishad.aspx">Brihadaranyaka Upanishad</a></li></ul></div><!--customDropDownInner--></div></div><!--row-->

				        </div>
			        </li>
					<li class="dropdown ">
			          <a href="/s/YOGA.aspx">  YOGA</a>
                      <i class="fa fa-caret-down"   aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
			          <div class="dropdown-menu">
			           	<div class="row menuUnderline"><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Darsana.aspx">Darsana</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Meditation.aspx">Meditation</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Therapy.aspx">Therapy</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Asanas-ad-Pranayama.aspx">Asanas & Pranayama</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Texts.aspx">Texts</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Research.aspx">Research</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Worldwide.aspx">Worldwide</a></li></ul></div><!--customDropDownInner--></div></div><!--row-->
				 
				        </div>
			        </li>
					<li class="dropdown ">
			          <a href="/s/HISTORY.aspx"> HISTORY</a>
                      <i class="fa fa-caret-down"   aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
			          <div class="dropdown-menu">
			           	<div class="row menuUnderline"><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Indian-History.aspx">Indian History</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Great-Indian-Leaders.aspx">Great Indian Leaders</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Indian-Influence-Abroad.aspx">Indian Influence Abroad</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/History-of-Indian-Languages.aspx">History of Indian Languages</a></li></ul></div><!--customDropDownInner--></div></div><!--row-->
				         
				        </div>
			        </li>
					<li class="dropdown ">
			          <a href="/s/NATIONAL AFFAIRS.aspx"> NATIONAL AFFAIRS</a>
                      <i class="fa fa-caret-down"   aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
			          <div class="dropdown-menu">
			           	<div class="row menuUnderline"><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Ideas-ad-Policy.aspx">Ideas & Policy</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/For-the-followers-of-Dharma.aspx">For the followers of Dharma</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Current-Affairs.aspx">Current Affairs</a></li></ul></div><!--customDropDownInner--></div><div class="col-md-6 col-sm-6 customDropDownMenu">	<div class="customDropDownInner"><ul class="customDropDown"><li><a href="/article/Foreign-Affairs.aspx">Foreign Affairs</a></li></ul></div><!--customDropDownInner--></div></div><!--row-->
				         
				        </div>
			        </li>
					<li class=""><a href="/photogallery.aspx">GALLERY</a></li>
					<li class="dropdown ">
			          <a href="#"> SPECIAL SECTIONS</a>
                      <i class="fa fa-caret-down"   aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" aria-hidden="true"></i>
			         	          <div class="dropdown-menu dropdown-menu-right">
				          	<div class="row menuUnderline">
				          		<div class="col-md-6 col-sm-6 customDropDownMenu">
				          			<div class="customDropDownInner">
					          			<ul class="customDropDown">
					          				<li><a href="/p/Ayurveda.aspx">Ayurveda</a></li>
					          			</ul>
				          			</div>
				          		</div>
				          		<div class="col-md-6 col-sm-6 customDropDownMenu">
				          			<div class="customDropDownInner">
					          			<ul class="customDropDown">
					          			<li><a href="/books.aspx">Books</a></li>	
					          			</ul>
				          			</div>
				          		</div>
				          		<div class="col-md-6 col-sm-6 customDropDownMenu">
				          			<div class="customDropDownInner">
					          			<ul class="customDropDown">
					          				<li><a href="/videos.aspx">Videos</a></li>
					          			</ul>
				          			</div>
				          		</div>
				          		<div class="col-md-6 col-sm-6 customDropDownMenu">
				          			<div class="customDropDownInner">
					          			<ul class="customDropDown">
					          				<li><a href="/p/Interpreting-Vivekananda.aspx">Interpreting Vivekananda</a></li>
					          			</ul>
				          			</div>
				          		</div>
				          		<div class="col-md-6 col-sm-6 customDropDownMenu">
				          			<div class="customDropDownInner">
					          			<ul class="customDropDown">
					          				<li><a href="/p/good-work-india.aspx">Good Work India</a></li>
					          			</ul>
				          			</div>
				          		</div>
				          		<div class="col-md-6 col-sm-6 customDropDownMenu">
				          			<div class="customDropDownInner">
					          			<ul class="customDropDown">
					          				<li><a href="/p/support-india.aspx">Support India</a></li>
					          			</ul>
				          			</div>
				          		</div>
				          		<div class="col-md-6 col-sm-6 customDropDownMenu">
				          			<div class="customDropDownInner">
					          			<ul class="customDropDown">
					          				<li><a href="/p/Life.aspx">Life</a></li>
					          			</ul>
				          			</div>
				          		</div>
				          			<div class="col-md-6 col-sm-6 customDropDownMenu">
				          			<div class="customDropDownInner">
					          			<ul class="customDropDown">
					          				<li><a href="/p/Traditional-Paintings.aspx">Traditional Paintings</a></li>
					          			</ul>
				          			</div>
				          		</div>
				          	</div>
				          	
				        </div>
			        </li>

				</ul>
            <ul class="headerSocial  social visible-xs">
              <li><a href="https://plus.google.com/116197632981133219340" class="link google-plus" target="_blank">
                <i class="fa fa-google-plus" aria-hidden="true" title="Google+"></i>
                            </a>
                        </li>
                        <li><a href="https://www.facebook.com/eSamskriti" class="link facebook" target="_blank"><i class="fa fa-facebook" aria-hidden="true" title="Facebook"></i></a></li>
                        <li><a href="https://twitter.com/eSamskritiindia" class="link twitter" target="_blank">
                            <i class="fa fa-twitter" aria-hidden="true" title="Twitter"></i>
                            </a>
                        </li>
                        <li><a href="https://www.youtube.com/channel/UCHnWwG92M-iTHCYh1nY7QPQ" class="link youtube" target="_blank">
                            <i class="fa fa-youtube-play" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li><a href="https://www.instagram.com/esamskriti/" class="link instagram" target="_blank">
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                          </a>
                        </li>
                    <li><a href="https://www.esamskriti.com/esamskriti.aspx">Donate</a></li>    
                    <li><a href="/ebook.aspx">eBook</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#subscribeModal">Subscribe</a></li>
                </ul>
			</div>
		</div>
		</nav>
		</div>
	</header>
        <div class="container-fluid" id="headerSocialMobile">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="headerSocial  social">
                            <li><a href="https://plus.google.com/116197632981133219340" class="link google-plus" target="_blank"><i class="fa fa-google-plus"
                                aria-hidden="true" title="Google+"></i></a></li>
                            <li><a href="https://www.facebook.com/eSamskriti" class="link facebook" target="_blank"><i class="fa fa-facebook" aria-hidden="true"
                                title="Facebook"></i></a></li>
                            <li><a href="https://twitter.com/eSamskritiindia" class="link twitter" target="_blank"><i class="fa fa-twitter" aria-hidden="true"
                                title="Twitter"></i></a></li>
                            <li><a href="https://www.youtube.com/channel/UCHnWwG92M-iTHCYh1nY7QPQ" class="link youtube" target="_blank"><i class="fa fa-youtube-play"
                                aria-hidden="true"></i></a></li>
                            <li><a href="/ebook.aspx">eBook</a></li>
                            <li><a href="#" data-toggle="modal" data-target="#subscribeModal">Subscribe</a></li>
                            <li>
                                <div class="navbar-form" role="search" data-toggle="modal" data-target="#search-site-index">
                                    <div class="input-group add-on">
                                        <button class="form-control" name="srch-term" id="srch-term">
                                            Search Site Index</button>
                                        <div class="input-group-btn">
                                            <button class="btn btn-default" type="submit">
                                                <i class="glyphicon glyphicon-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
  <div class="container-fluid articleDetailHeadingArea" id="specialsectionsHeadingArea">
  </div>
  <div class="articlePageMainOuterClass">
    <div class="container-fluid" id="breadCrumArea">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="subCatgoryBreadCrum">
              <ul>
                <li><a href="http://www.esamskriti.com">Home</a></li>
                <li><a href="http://www.esamskriti.com/s/SPECIAL-SECTIONS.aspx">SPECIAL SECTIONS</a></li>
                <li><a href="http://www.esamskriti.com/article/Good-Work-India.aspx">Good Work India</a></li>
                <li>The story of Sindhutai Sapkal - A mother to orphaned children</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <span id="ContentPlaceHolder1_lblMsg"></span>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid" id="specialsectionsHeading">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="articleHeadingAndMailSection">
              <div class="articleMainHeading">
                <h1>The story of Sindhutai Sapkal - A mother to orphaned children</h1>
              </div>
              <div class="articleWritenByArea">
                <ul>
                  <li>By
                    Raksha Paharia </li>
                  <li><i class="fa fa-calendar" title="calender" aria-hidden="true"></i><span>
                    September 2018</span></li>
                  <li><i class='fa fa-envelope-o' title='mail' aria-hidden='true'></i><a href='mailto:raksha.phr@googlemail.com'>raksha.phr@googlemail.com</a></li>
                  
                  <li><i class='fa fa-eye' aria-hidden='true'></i><span class='articleViewCount'>52596 <span>views</span></span></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid detailSocialCommonArea" id="articleDetailSocialShareArea">
      <div class="container">
        <div class="row ">
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="galleryDetailsSocialArea">
              <!--<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-593a3379d79b1a9d"></script>-->
              <div class="addthis_toolbox">
                <div class="custom_images">
                  <a class="addthis_button_facebook" href="https://www.facebook.com/eSamskriti" target="_blank">
                    <img src="/images/facebook.png" border="0" alt="Share to Facebook" loading="lazy"/></a>
                  <a class="addthis_button_twitter" href="https://twitter.com/eSamskritiindia" target="_blank">
                    <img src="/images/twitter.png" border="0" alt="Share to Twitter" loading="lazy"/></a>
                  <a class="addthis_button_google_plusone_share" href="https://plus.google.com/116197632981133219340">
                    <img src="/images/google-plus.png" border="0" alt="Share to Google Plus" loading="lazy"/></a>
                  <a class="addthis_button_favorites" href="#" target="_blank">
                    <img src="/images/bookmark.png" border="0" alt="Add to Favourites" loading="lazy"/></a>
  
                </div>

              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="articlePrintAndBoldArea">
              <ul>
                <li>
                  <span title="Smaller font size" class="disabled regularFontStyle">A</span>
                  <span title="Larger font size" class="boldFontStyle">A</span>
                </li>
                <li><a href="javascript:printpage();">
                  <i class="fa fa-print" title="print" aria-hidden="true"></i>
                  <span>Print</span></a>
                </li>
                <li>
                  <span>Page</span>
                  <div class="btn-group">
                    <button type="button" class="btn pageNumberDropDownBtn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fa fa-caret-down" aria-hidden="true"></i>
                    </button>
                    <ul class="dropdown-menu pageNumberDropdown">
                       <li><a href='http://www.esamskriti.com/e/Special-Sections/Good-Work-India/The-story-of-Sindhutai-Sapkal-~-A-mother-to-orphaned-children-1.aspx'>1</a></li>
                    </ul>
                  </div>
                  <span class="pageStarts">
                    01</span>
                  <span class="of">of</span>
                  <span class="totalPages">
                    01</span>
                  <span class="nextAndPrevButton">
                    
                    
                  </span>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="articleDetailChooseArea">
              <div class="chooseAlubumAndThemeArea">
                <ul>
                  <li>
                    <h6>Choose :</h6>
                  </li>
                  <li>
                    <div class="dropdown">
                      <button class="dropdown-toggle" type="button" data-toggle="dropdown">
                        Article
										  		<i class="fa fa-caret-down" aria-hidden="true"></i>
                      </button>
                      <ul class="dropdown-menu articleDetailChooseDropdown">

                         <li><a href='/sa/Good-Work-India/Story-of-a-Finance-Professional-who-started-a-SCHOOL-for-Differently-Abled-Children-near-Mumbai-1.aspx'>Story of a Finance Professional who started a SCHOOL for Differently Abled Children near Mumbai</a></li> <li><a href='/sa/Good-Work-India/Ekal-colon-s-One-Teacher-Revolution--1.aspx'>Ekal`s One Teacher Revolution </a></li> <li><a href='/sa/Good-Work-India/Saalumarada-Thimmakka-is-the-Daughter-of-Nature-1.aspx'>Saalumarada Thimmakka is the Daughter of Nature</a></li> <li><a href='/sa/Good-Work-India/Creating-leaders-and-followers-of-tomorrow-1.aspx'>Creating leaders and followers of tomorrow</a></li> <li><a href='/sa/Good-Work-India/The-story-of-Sindhutai-Sapkal-~-A-mother-to-orphaned-children-1.aspx'>The story of Sindhutai Sapkal - A mother to orphaned children</a></li> <li><a href='/sa/Good-Work-India/CROWD-FUNDING-eSamskriti-1.aspx'>CROWD FUNDING eSamskriti</a></li> <li><a href='/sa/Good-Work-India/Natural-Farming-~-Reviving-a-sustainable-practice-for-a-healthy-future-1.aspx'>Natural Farming - Reviving a sustainable practice for a healthy future</a></li> <li><a href='/sa/Good-Work-India/Transformation-of-Wasteland-into-Greenbelt-in-Jodhpur-1.aspx'>Transformation of Wasteland into Greenbelt in Jodhpur</a></li>
                      </ul>
                    </div>
                  </li>
                  <li>
                    <div class="dropdown">
                      <button class="dropdown-toggle" type="button" data-toggle="dropdown">
                        Sub-sections
										  		<i class="fa fa-caret-down" aria-hidden="true"></i>
                      </button>
                      <ul class="dropdown-menu articleDetailChooseDropdown">

                        <li><a href="/specialsection/Ayurveda.aspx">Ayurveda</a></li><li><a href="/specialsection/Good-Work-India.aspx">Good Work India</a></li><li><a href="/specialsection/Interpreting-Vivekananda.aspx">Interpreting Vivekananda</a></li><li><a href="/specialsection/Life.aspx">Life</a></li><li><a href="/specialsection/Support-India.aspx">Support India</a></li>
                      </ul>
                    </div>
                  </li>
                  <li>
                    <div class="dropdown">
                      <button class="dropdown-toggle" type="button" data-toggle="dropdown">
                        Author
										  		<i class="fa fa-caret-down" aria-hidden="true"></i>
                      </button>
                      <ul class="dropdown-menu articleDetailChooseDropdown">

                         <li><a href='/author/Atul-Sathe.aspx'>Atul Sathe</a></li> <li><a href='/author/Raksha-Paharia-.aspx'>Raksha Paharia </a></li> <li><a href='/author/Sanjeev-Nayyar.aspx'>Sanjeev Nayyar</a></li> <li><a href='/author/Varun-Arya.aspx'>Varun Arya</a></li> <li><a href='/author/Vijay-Maroo.aspx'>Vijay Maroo</a></li>
                      </ul>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid" id="articleContentArea">
      <div class="container">
        <div class="row">
          <div class="col-md-9 col-sm-8 articleDetailLeftSection">
            <div class="articleActualContent">
              <img oncontextmenu='return false;' src='http://www.esamskriti.com/essays/docfile/58_4820.jpg'  class=' img-responsive articleImgCenter' alt='' />
              <div class="articleDetailParaArea">
                <ul style="list-style-type:disc"><li><span class="snapshotPoint">Sindhutai was married at ten, abandoned by her husband at twenty, became mother at the same age and had nowhere to go. She begged for a living. The Divine however, had different plans for her. She adopted one child and gradually it became a movement. Without any government support and by sharing her life’s story through talks she opened orphanages and brought up over 1,200 children. It only goes to show that life is what you make out of it.</span></li></ul><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Childhood is a blissful phase of life.
Parents love and pamper their children and make them the centre of their world.
However, the same childhood can be horrifying when a child has no parents.
There is no greater sorrow than being an orphan or leading a life without
shelter. Having said that, the Divine sends people to Mother Earth to make a
difference. Sindhutai is one such person; by becoming a mother to orphans Sindhutai
became God’s gift to thousands of orphaned children. &nbsp;</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span class="purpleText">Who is Sindhutai Sapkal?</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">She is a renowned and a devoted social worker
who focuses on prioritizing the lives of orphaned children. Her decision to
look after orphaned children was triggered by her own life experiences. During
her childhood Sindhutai went through phases where she missed having someone by
her side. In one of her interviews she said that it was at such times that she
realized what it meant to be abandoned. Having suffered thus, she made it her
life’s mission to stand by needy and homeless children. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Her greatness and kind nature is
reflected in one of her speeches. She said, ‘I am with everyone who has no
other people to look after them’.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><b>&nbsp;</b></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span class="purpleText">Early life and struggles</span><span style="font-size:12.0pt;font-family:Times New Roman,serif;color:#7030A0">&nbsp;</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Sindhutai was born on 14<sup>th</sup>
November 1948 in a cattle grazing family in Maharashtra’s Wardha district. Her
father was keen to educate her but mother was not. At the age of ten she was
married to a man twenty years her senior. Post marriage she faced a difficult
life but she did not lose hope. In her new home she fought against the
exploitation of local women, who collected cow dung, by the forests department
and landlords. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">This only made things more difficult for
her. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">At the young age of twenty, when nine-
months pregnant, she was beaten badly and left to die by her husband. She gave
birth to a baby girl Mamta in that semi-conscious state and struggled to stay
alive. Sindhutai took to begging on the streets and railway platforms to survive.
Because she feared being picked up by men at night she often spent the night at
cemeteries. Such was her condition that people called her a ghost since she was
seen at night in the cemeteries. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif;background:white">“In this constant
tussle to survive, she found herself in Chikaldara, situated in the Amravati
district of Maharashtra. Here, due to a tiger preservation project, 84 tribal
villages were evacuated. Amidst the confusion, a project officer impounded 132
cows of Adivasi villagers and one of the cows died. Sindhutai decided to fight
for a proper rehabilitation of the helpless tribal villagers. Her efforts were
acknowledged by the Minister of Forests and he made appropriate arrangements
for alternative relocation.</span>”</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">It was during these trying times that
she realized how difficult it would be for abandoned children and or orphans
and decided to do something for them. &nbsp;Her
first adopted child was Deepak, whom she found on a railway track. Quite soon
she had adopted sixteen children. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">So Sindhutai started taking care of children
in return for some food. Looking after these kids soon became the mission of
her life. She opened her first ashram at Chikaldhara. People who donated money
asked her for a receipt so she realized the need for an NGO. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif;background:white">“So she formed &amp;
registered her first NGO, Savitribai Phule Girls’ Hostel under the Foundation,
Vanvasi Gopalkrushna Shikshan Evam Kreeda Prasarak Mandal in Chikaldhara in
Amravati. Today, her children run four NGOs and Deepak, her first adopted son
who refused to leave her on growing up, has named the second one, Mamta Bal
Bhawan, after her daughter, Mamta. Sindhutai has also formed a cow shelter,
Gopika Gai Rakshan Kendra to save old cows that are being sent to the slaughter
houses. She brings them to the shelter and cares for them.</span>” <b>1</b></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">This way Sindhu became Sindhutai or Maai
or mother of orphans.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Many of her adopted children are now highly
qualified for e.g. doctors and lawyers. Some adopted children have started
orphanages of their own. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">When Sindutai’s husband returned and
asked for forgiveness she was gracious enough to forget and forgive.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><b>&nbsp;</b></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span class="purpleText">Sindhutai - A living
example of humanity and&nbsp;love</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Sindhutai’s life story is one of
incredible grit and willpower. She showed how adversity brings out the best in
us and dedicated her life to adopting &amp; nurturing orphans. Further, she
constructed more than six orphanages in Maharashtra where orphaned children are
given food, shelter, and education. Her organization also gave shelter to
numerous women, who are destitute and abandoned. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Running these shelter homes is not an
easy task; she works hard to raise funds for her orphanages. Instead of taking
financial help from anyone, she gave powerful and inspiring speeches in the
form of sharing her life’s story. At the end of her speeches, “she spreads the
loose end of her sari and asks for alms to feed and educate her children.” She
appeals to people to help the underprivileged and neglected sections of the
society. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">In yet another outstanding speech she said
that she wanted her story to be shared widely so that others are motivated to
overcome the difficulties of life. Her fame has never affected her persona.
Sindhutai’s happiness lies in being with her children, fulfilling their dreams
and settling them down in life.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">In spite of a series of struggles that
she faced in fulfilling her mission, Sapkal has adopted over 1,100 orphan
children. Presently, she has a grand family of 207 sons-in-law, 36
daughters-in-law, and more than 1050 grandchildren. The best thing is that many
of them are serving society in different ways. Some of them have become lawyers,
doctors while others started their own shelter homes.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><b>&nbsp;</b></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span class="purpleText">Awards and recognition</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Sindhutai’s extensive social work has
been recognized through over 750 awards. She received the prestigious national
award for <i>Iconic Mother</i> and Mother
Teresa Awards for Social Justice in 2013. Sapkal was conferred a Doctorate in Literature
by the DY Patil Institute of Technology and Research, Pune in 2016.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">She also got an award known as ‘The Mind
of Steel’ in 2010. True to the award’s name, Sindutai has a mind of pure steel.
In order to acknowledge her remarkable contribution to society she was given the
prestigious Ahilyabai Holkar award by the Maharashtra government in 2002. Sapkal
also received the Ahmadiyya&nbsp;Peace Prize at the National Peace
Symposium&nbsp;held at London in 2014.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Recently, on International Women&#39;s Day 2018, President Ram Nath Kovind honoured women achievers with&nbsp;<i>Nari Shakti Puraskar</i>. Sindhutai was one
of the thirty nine women achievers who received this prestigious award. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">The Marathi movie <i>Mee Sindhutai Sapkal</i> was based on her life. The film was selected
for the 54th London Film Festival. Film maker Ananth Mahadevan said, <span style="background:white">“She has changed my life. Today she is maai to me and
I am her bala. It is ironical that after making ten Hindi films, that one
Marathi film you make gets you four national awards. Somewhere our lives were
destined to meet”.</span> <b>1</b></span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">In 42 years she has raised about 1,200
children. Her inspiring journey shows that for a committed individual nothing
is impossible. Sindhutai is an epitome of Humanity. From being a deprived wife
to begging on the streets, she has now become a ‘Mother of orphans and
helpless’ children. Even at 70 she has the same drive to do something good for society.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif"><a href="https://www.esamskriti.com/author/Raksha-Paharia-.aspx">To read all
articles by the Author</a></span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif"><a href="http://sindhutaisapakal.org/">To
visit SINDHUTAI’s site</a> </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><b><span style="font-size:12.0pt;font-family:Times New Roman,serif">References</span></b></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">1 <a href="http://www.freepressjournal.in/featured-blog/womens-day-2017-mother-of-orphans-sindhutai-sapkal/1031002">Free
Press Journal article</a> &nbsp;</span></p>
                <div class="articleNextAndPrevButton">
                  <p>
                    
                    
                  </p>
                </div>
              </div>
            </div>
             <a href="javascript:void(0);" class="readMorebtn btn">Read More ...</a>
            <hr class="horizonatal-line">
            <div class="articleTagArea"><div class="media"><div class="media-left"><h6><i class="fa fa-tag" aria-hidden="true"></i><span>Tagged :</span></h6></div><div class="media-body"><div class="articleTagLink"><ul>   <li><a href='/tags/Sindhutai-Sapkal.aspx'>Sindhutai Sapkal</a> </li>   <li><a href='/tags/Dharma.aspx'> Dharma</a> </li>   <li><a href='/tags/Good-News-India.aspx'> Good News India</a> </li>   <li><a href='/tags/Optimist-India.aspx'> Optimist India</a> </li>   <li><a href='/tags/Orphans-India.aspx'> Orphans India</a> </li>   <li><a href='/tags/.aspx'> </a> </li></ul></div></div></div></div>
            <div class="latestFromEsamskritiForMobile">
              <div class="articleSectionRightHeading">
                <h3>Latest from eSamskriti</h3>
              </div>
              <ul class="latestArticleSliderList"><li> <a href='/e/History/Indian-History/How-British-soldiers-in-Military-Cantonments-contributed-to-spread-of-Venereal-Diseases-in-India--1.aspx'><h4>How British soldiers in Military Cantonments contributed to spread of Venereal Diseases in India </h4></a></li><li> <a href='/e/National-Affairs/Ideas-ad-Policy/Impact-of-Quick-Service-Delivery-on-Physical-and-Mental-Health--1.aspx'><h4>Impact of Quick Service Delivery on Physical and Mental Health </h4></a></li><li> <a href='/e/Culture/Indian-Culture/Hindi-binds-People-of-Arunachal-Pradesh-like-Fevicol--1.aspx'><h4>Hindi binds People of Arunachal Pradesh like Fevicol </h4></a></li><li> <a href='/e/Spirituality/Philosophy/Five-Pillars-of-Spiritual-Growth-1.aspx'><h4>Five Pillars of Spiritual Growth</h4></a></li><li> <a href='/e/Culture/Indian-Culture/Dalai-Lama-Birthday-Celebrations-2025--1.aspx'><h4>Dalai Lama Birthday Celebrations 2025 </h4></a></li><li class="shareWorthyPhotoClass"> <a href='/a/Uttar-Pradesh/Wall-Paintings-of-Kashi.aspx'><h4>Wall Paintings of Kashi</h4></a></li><li class="shareWorthyPhotoClass"> <a href='/a/Uttar-Pradesh/Dev-Deepavali-Varanasi.aspx'><h4>Dev Deepavali Varanasi</h4></a></li><li class="shareWorthyPhotoClass"> <a href='/a/Uttarakhand/Corbett-National-Park-Beyond-Tigers.aspx'><h4>Corbett National Park Beyond Tigers</h4></a></li><li class="shareWorthyPhotoClass"> <a href='/a/Uttarakhand/Tigers-of-Corbett-National-Park.aspx'><h4>Tigers of Corbett National Park</h4></a></li><li class="shareWorthyPhotoClass"> <a href='/a/Rajasthan/GANGAUR-Festival-Jaipur.aspx'><h4>GANGAUR Festival Jaipur</h4></a></li><li class="shareWorthyPhotoClass"> <a href='/v/Milkyway-Timelapse-At-Tabo,-Spiti-Valley/23.aspx'><h4>Milkyway Timelapse at Tabo, Spiti Valley</h4></a></li></ul>
            </div>

          </div>

          <div class="col-md-3 col-sm-4">
            <div class="row">
              <div class="col-md-12 col-sm-12">
                <div class="articlePageRightSectionOuter">
                  <div class="galleryDetailAdSection">
                    	<div class="gallleryDetailRightAd"><a href="http://www.esamskriti.com/a/Maharashtra/Kailasa-Temple-Ellora.aspx"><img oncontextmenu='return false;' src="http://www.esamskriti.com/photograph/47_16824.jpg" class="img-responsive" title="Kailasa Temple Ellora" alt=""><span style='text-align: center;display: block;color: #000;font-weight: 600;padding: 5px 10px;width: 100%;font-family: 'Lato', sans-serif;'>Kailasa Temple Ellora</span></a></div><!-- SubGalleryRightAd -->
                    <div class="gallleryDetailRightAd" style="display: none">
                      <a href="#">
                        <img src="http://www.esamskriti.com/images/add-images/linkedin-ad-1-esamskriti.jpg" class="img-responsive" title="linkedin" alt="" loading="lazy"></a>
                    </div>
                    	<div class="gallleryDetailRightAd"><a href="http://www.esamskriti.com/a/Uttar-Pradesh/Vrindavan-on-Janmashtami-.aspx"><img oncontextmenu='return false;' src="http://www.esamskriti.com/photograph/v_5.jpg" class="img-responsive" title="Vrindavan on Janmashtami " alt=""><span style='text-align: center;display: block;color: #000;font-weight: 600;padding: 5px 10px;width: 100%;font-family: 'Lato', sans-serif;'>Vrindavan on Janmashtami </span></a></div><!-- SubGalleryRightAd -->
                    <div class="gallleryDetailRightAd" style="display: block">
                      <a href="https://www.esamskriti.com/sa/Life/Transforming-Lives-through-Positive-Energy-Management-1.aspx" target="_blank">
                        <img src="https://www.esamskriti.com/images/add-images/transforming-lives.jpg" class="img-responsive" title="transforming lives" alt="" loading="lazy"/></a>
                    </div>
                    <div class="crossCulturalTrainingLink">
                      <a href="http://www.suryaconsulting.net/cross-cultural-training.html" target="_blank">
                        <div class="crossCulturalOuter">
                          <div class="crossCulturalInner">
                            <h4>Cross Cultural Training India</h4>
                          </div>
                        </div>
                      </a>
                    </div>
                    	<div class="gallleryDetailRightAd"><a href="http://www.esamskriti.com/a/Gujarat/Gir-National-Park.aspx"><img oncontextmenu='return false;' src="http://www.esamskriti.com/photograph/gir-7.jpg" class="img-responsive" title="Gir National Park" alt=""><span style='text-align: center;display: block;color: #000;font-weight: 600;padding: 5px 10px;width: 100%;font-family: 'Lato', sans-serif;'>Gir National Park</span></a></div><!-- SubGalleryRightAd -->
                    <div class="gallleryDetailRightAd" style="display: none">
                      <a href="#">
                        <img src="http://www.esamskriti.com/images/add-images/money-issue-ad-esamskriti.jpg" class="img-responsive" title="money issue" alt="" loading="lazy"></a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-12 col-sm-12 articleDetailRightSection">
                <div class="articlePageRightSectionOuter">
                  <div class="latestFromEsamskritiForDesktop">
                    <div class="articleSectionRightHeading">
                      <h3>Latest from eSamskriti</h3>
                    </div>

                    <ul class="latestArticleSliderList"><li> <a href='/e/History/Indian-History/How-British-soldiers-in-Military-Cantonments-contributed-to-spread-of-Venereal-Diseases-in-India--1.aspx'><h4>How British soldiers in Military Cantonments contributed to spread of Venereal Diseases in India </h4></a></li><li> <a href='/e/National-Affairs/Ideas-ad-Policy/Impact-of-Quick-Service-Delivery-on-Physical-and-Mental-Health--1.aspx'><h4>Impact of Quick Service Delivery on Physical and Mental Health </h4></a></li><li> <a href='/e/Culture/Indian-Culture/Hindi-binds-People-of-Arunachal-Pradesh-like-Fevicol--1.aspx'><h4>Hindi binds People of Arunachal Pradesh like Fevicol </h4></a></li><li> <a href='/e/Spirituality/Philosophy/Five-Pillars-of-Spiritual-Growth-1.aspx'><h4>Five Pillars of Spiritual Growth</h4></a></li><li> <a href='/e/Culture/Indian-Culture/Dalai-Lama-Birthday-Celebrations-2025--1.aspx'><h4>Dalai Lama Birthday Celebrations 2025 </h4></a></li><li class="shareWorthyPhotoClass"> <a href='/a/Uttar-Pradesh/Wall-Paintings-of-Kashi.aspx'><h4>Wall Paintings of Kashi</h4></a></li><li class="shareWorthyPhotoClass"> <a href='/a/Uttar-Pradesh/Dev-Deepavali-Varanasi.aspx'><h4>Dev Deepavali Varanasi</h4></a></li><li class="shareWorthyPhotoClass"> <a href='/a/Uttarakhand/Corbett-National-Park-Beyond-Tigers.aspx'><h4>Corbett National Park Beyond Tigers</h4></a></li><li class="shareWorthyPhotoClass"> <a href='/a/Uttarakhand/Tigers-of-Corbett-National-Park.aspx'><h4>Tigers of Corbett National Park</h4></a></li><li class="shareWorthyPhotoClass"> <a href='/a/Rajasthan/GANGAUR-Festival-Jaipur.aspx'><h4>GANGAUR Festival Jaipur</h4></a></li><li class="shareWorthyPhotoClass"> <a href='/v/Milkyway-Timelapse-At-Tabo,-Spiti-Valley/23.aspx'><h4>Milkyway Timelapse at Tabo, Spiti Valley</h4></a></li></ul>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </div>
  <div class="container-fluid" id="articleDetailRelatedLinks">
    <div class="container">
      <div class='row'><div class='col-md-12'><div class='articlePageRelatedLinksHeading'><h3>Related Links</h3></div></div></div><div class='row'><div class='col-md-12 articleDetailRelatedOuter'><div class='articleDetailRelatedLinksBox'><a href='http://www.esamskriti.com/e/History/Indian-History/Congress-strategy-is-divide-Hindus-baaay-Caste-and-make-Sanatanis-Defensive--1.aspx'><div class='relatedLinksOuterBox'><div class='relatedLinksBg' style='background: url(http://www.esamskriti.com/essays/docfile/13_7117.jpg);'><div class='relatedLinksInnerBoxArea'><div class='relatedLinksInnerBoxInner'><div class='relatedLinksContentOuter'><div class='relatedLinksContentInner'><h6>Congress strategy is divide Hindus by Caste and make Sanatan ...</h6></div></div></div></div></div></div></a></div><div class='articleDetailRelatedLinksBox'><a href='http://www.esamskriti.com/e/Spirituality/Philosophy/Samanya-Dharma-and-Spirituality-1.aspx'><div class='relatedLinksOuterBox'><div class='relatedLinksBg' style='background: url(http://www.esamskriti.com/essays/docfile/1330.jpg);'><div class='relatedLinksInnerBoxArea'><div class='relatedLinksInnerBoxInner'><div class='relatedLinksContentOuter'><div class='relatedLinksContentInner'><h6>Samanya Dharma and Spirituality</h6></div></div></div></div></div></div></a></div><div class='articleDetailRelatedLinksBox'><a href='http://www.esamskriti.com/e/Culture/Indian-Culture/Coexistence-of-Hindu,-Buddhist-and-Jain-monuments-and-pilgrimages--1.aspx'><div class='relatedLinksOuterBox'><div class='relatedLinksBg' style='background: url(http://www.esamskriti.com/essays/docfile/15_3802.jpg);'><div class='relatedLinksInnerBoxArea'><div class='relatedLinksInnerBoxInner'><div class='relatedLinksContentOuter'><div class='relatedLinksContentInner'><h6>Coexistence of Hindu, Buddhist and Jain monuments and pilgri ...</h6></div></div></div></div></div></div></a></div><div class='articleDetailRelatedLinksBox'><a href='http://www.esamskriti.com/e/Spirituality/Philosophy/Unity-between-Sanatan-and-Sikh-Dharma-1.aspx'><div class='relatedLinksOuterBox'><div class='relatedLinksBg' style='background: url(http://www.esamskriti.com/essays/docfile/1300.jpg);'><div class='relatedLinksInnerBoxArea'><div class='relatedLinksInnerBoxInner'><div class='relatedLinksContentOuter'><div class='relatedLinksContentInner'><h6>Unity between Sanatan and Sikh Dharma</h6></div></div></div></div></div></div></a></div><div class='articleDetailRelatedLinksBox'><a href='http://www.esamskriti.com/e/Spirituality/Education/What-is-the-difference-between-a-Profession-and-a-Vocation-1.aspx'><div class='relatedLinksOuterBox'><div class='relatedLinksBg' style='background: url(http://www.esamskriti.com/essays/docfile/6_8348.jpg);'><div class='relatedLinksInnerBoxArea'><div class='relatedLinksInnerBoxInner'><div class='relatedLinksContentOuter'><div class='relatedLinksContentInner'><h6>What is the difference between a Profession and a Vocation</h6></div></div></div></div></div></div></a></div><div class='articleDetailRelatedLinksBox'><a href='http://www.esamskriti.com/e/Culture/Indian-Culture/Stories-of-Bharat-15~Do-not-lie-by-WhoisWise-by-Mother-Heart-by-HurrytoDie-1.aspx'><div class='relatedLinksOuterBox'><div class='relatedLinksBg' style='background: url(http://www.esamskriti.com/essays/docfile/15_5487.jpg);'><div class='relatedLinksInnerBoxArea'><div class='relatedLinksInnerBoxInner'><div class='relatedLinksContentOuter'><div class='relatedLinksContentInner'><h6>Stories of Bharat 15-Do not lie/WhoisWise/Mother Heart/Hurry ...</h6></div></div></div></div></div></div></a></div></div></div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="row commentSectionInArticlePage">
        <div class="col-md-12 ads-area">
          <div id="disqus_thread"></div>
          <script>
            (function () { 
              var d = document, s = d.createElement('script');
              s.src = 'https://http-www-esamskriti-com-1.disqus.com/embed.js';
              s.setAttribute('data-timestamp', +new Date());
              (d.head || d.body).appendChild(s);
            })();
          </script>
          <script id="dsq-count-scr" src="//http-www-esamskriti-com-1.disqus.com/count.js" async></script>
        </div>
      </div>
    </div>
  </div>
  <div id="printDesignSection" style="display: none;">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="printHeaderArea">
            <img src="http://www.esamskriti.com/images/eSamskriti-culture-spirituality-travel.png" alt="" loading="lazy">
          </div>
          <div class="printAuthorHeading">
            <h1>The story of Sindhutai Sapkal - A mother to orphaned children</h1>
            <ul>
              <li>By   
                            Raksha Paharia </li>
              <li><i class="fa fa-calendar" title="calender" aria-hidden="true"></i>
                September 2018</li>
              <li><i class='fa fa-envelope-o' title='mail' aria-hidden='true'></i><a href='mailto:raksha.phr@googlemail.com'>raksha.phr@googlemail.com</a></li>
            </ul>
          </div>
          <div class="articleActualContent">
            <ul style="list-style-type:disc"><li><span class="snapshotPoint">Sindhutai was married at ten, abandoned by her husband at twenty, became mother at the same age and had nowhere to go. She begged for a living. The Divine however, had different plans for her. She adopted one child and gradually it became a movement. Without any government support and by sharing her life’s story through talks she opened orphanages and brought up over 1,200 children. It only goes to show that life is what you make out of it.</span></li></ul><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Childhood is a blissful phase of life.
Parents love and pamper their children and make them the centre of their world.
However, the same childhood can be horrifying when a child has no parents.
There is no greater sorrow than being an orphan or leading a life without
shelter. Having said that, the Divine sends people to Mother Earth to make a
difference. Sindhutai is one such person; by becoming a mother to orphans Sindhutai
became God’s gift to thousands of orphaned children. &nbsp;</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span class="purpleText">Who is Sindhutai Sapkal?</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">She is a renowned and a devoted social worker
who focuses on prioritizing the lives of orphaned children. Her decision to
look after orphaned children was triggered by her own life experiences. During
her childhood Sindhutai went through phases where she missed having someone by
her side. In one of her interviews she said that it was at such times that she
realized what it meant to be abandoned. Having suffered thus, she made it her
life’s mission to stand by needy and homeless children. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Her greatness and kind nature is
reflected in one of her speeches. She said, ‘I am with everyone who has no
other people to look after them’.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><b>&nbsp;</b></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span class="purpleText">Early life and struggles</span><span style="font-size:12.0pt;font-family:Times New Roman,serif;color:#7030A0">&nbsp;</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Sindhutai was born on 14<sup>th</sup>
November 1948 in a cattle grazing family in Maharashtra’s Wardha district. Her
father was keen to educate her but mother was not. At the age of ten she was
married to a man twenty years her senior. Post marriage she faced a difficult
life but she did not lose hope. In her new home she fought against the
exploitation of local women, who collected cow dung, by the forests department
and landlords. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">This only made things more difficult for
her. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">At the young age of twenty, when nine-
months pregnant, she was beaten badly and left to die by her husband. She gave
birth to a baby girl Mamta in that semi-conscious state and struggled to stay
alive. Sindhutai took to begging on the streets and railway platforms to survive.
Because she feared being picked up by men at night she often spent the night at
cemeteries. Such was her condition that people called her a ghost since she was
seen at night in the cemeteries. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif;background:white">“In this constant
tussle to survive, she found herself in Chikaldara, situated in the Amravati
district of Maharashtra. Here, due to a tiger preservation project, 84 tribal
villages were evacuated. Amidst the confusion, a project officer impounded 132
cows of Adivasi villagers and one of the cows died. Sindhutai decided to fight
for a proper rehabilitation of the helpless tribal villagers. Her efforts were
acknowledged by the Minister of Forests and he made appropriate arrangements
for alternative relocation.</span>”</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">It was during these trying times that
she realized how difficult it would be for abandoned children and or orphans
and decided to do something for them. &nbsp;Her
first adopted child was Deepak, whom she found on a railway track. Quite soon
she had adopted sixteen children. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">So Sindhutai started taking care of children
in return for some food. Looking after these kids soon became the mission of
her life. She opened her first ashram at Chikaldhara. People who donated money
asked her for a receipt so she realized the need for an NGO. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif;background:white">“So she formed &amp;
registered her first NGO, Savitribai Phule Girls’ Hostel under the Foundation,
Vanvasi Gopalkrushna Shikshan Evam Kreeda Prasarak Mandal in Chikaldhara in
Amravati. Today, her children run four NGOs and Deepak, her first adopted son
who refused to leave her on growing up, has named the second one, Mamta Bal
Bhawan, after her daughter, Mamta. Sindhutai has also formed a cow shelter,
Gopika Gai Rakshan Kendra to save old cows that are being sent to the slaughter
houses. She brings them to the shelter and cares for them.</span>” <b>1</b></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">This way Sindhu became Sindhutai or Maai
or mother of orphans.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Many of her adopted children are now highly
qualified for e.g. doctors and lawyers. Some adopted children have started
orphanages of their own. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">When Sindutai’s husband returned and
asked for forgiveness she was gracious enough to forget and forgive.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><b>&nbsp;</b></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span class="purpleText">Sindhutai - A living
example of humanity and&nbsp;love</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Sindhutai’s life story is one of
incredible grit and willpower. She showed how adversity brings out the best in
us and dedicated her life to adopting &amp; nurturing orphans. Further, she
constructed more than six orphanages in Maharashtra where orphaned children are
given food, shelter, and education. Her organization also gave shelter to
numerous women, who are destitute and abandoned. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Running these shelter homes is not an
easy task; she works hard to raise funds for her orphanages. Instead of taking
financial help from anyone, she gave powerful and inspiring speeches in the
form of sharing her life’s story. At the end of her speeches, “she spreads the
loose end of her sari and asks for alms to feed and educate her children.” She
appeals to people to help the underprivileged and neglected sections of the
society. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">In yet another outstanding speech she said
that she wanted her story to be shared widely so that others are motivated to
overcome the difficulties of life. Her fame has never affected her persona.
Sindhutai’s happiness lies in being with her children, fulfilling their dreams
and settling them down in life.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">In spite of a series of struggles that
she faced in fulfilling her mission, Sapkal has adopted over 1,100 orphan
children. Presently, she has a grand family of 207 sons-in-law, 36
daughters-in-law, and more than 1050 grandchildren. The best thing is that many
of them are serving society in different ways. Some of them have become lawyers,
doctors while others started their own shelter homes.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><b>&nbsp;</b></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span class="purpleText">Awards and recognition</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Sindhutai’s extensive social work has
been recognized through over 750 awards. She received the prestigious national
award for <i>Iconic Mother</i> and Mother
Teresa Awards for Social Justice in 2013. Sapkal was conferred a Doctorate in Literature
by the DY Patil Institute of Technology and Research, Pune in 2016.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">She also got an award known as ‘The Mind
of Steel’ in 2010. True to the award’s name, Sindutai has a mind of pure steel.
In order to acknowledge her remarkable contribution to society she was given the
prestigious Ahilyabai Holkar award by the Maharashtra government in 2002. Sapkal
also received the Ahmadiyya&nbsp;Peace Prize at the National Peace
Symposium&nbsp;held at London in 2014.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">Recently, on International Women&#39;s Day 2018, President Ram Nath Kovind honoured women achievers with&nbsp;<i>Nari Shakti Puraskar</i>. Sindhutai was one
of the thirty nine women achievers who received this prestigious award. </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">The Marathi movie <i>Mee Sindhutai Sapkal</i> was based on her life. The film was selected
for the 54th London Film Festival. Film maker Ananth Mahadevan said, <span style="background:white">“She has changed my life. Today she is maai to me and
I am her bala. It is ironical that after making ten Hindi films, that one
Marathi film you make gets you four national awards. Somewhere our lives were
destined to meet”.</span> <b>1</b></span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">In 42 years she has raised about 1,200
children. Her inspiring journey shows that for a committed individual nothing
is impossible. Sindhutai is an epitome of Humanity. From being a deprived wife
to begging on the streets, she has now become a ‘Mother of orphans and
helpless’ children. Even at 70 she has the same drive to do something good for society.</span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif"><a href="https://www.esamskriti.com/author/Raksha-Paharia-.aspx">To read all
articles by the Author</a></span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif"><a href="http://sindhutaisapakal.org/">To
visit SINDHUTAI’s site</a> </span></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'>&nbsp;</p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><b><span style="font-size:12.0pt;font-family:Times New Roman,serif">References</span></b></p><p style='margin-bottom:0cm;margin-bottom:.0001pt;text-align:&lt;br/&gt;justify'><span style="font-size:12.0pt;font-family:Times New Roman,serif">1 <a href="http://www.freepressjournal.in/featured-blog/womens-day-2017-mother-of-orphans-sindhutai-sapkal/1031002">Free
Press Journal article</a> &nbsp;</span></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script language="javascript" type="text/javascript">
    function printpage() {

      var mywindow = window.open('', '', 'left=0,top=0,width=700,height=500,toolbar=0,scrollbars=0,status =0');
      mywindow.document.write('<html><head><title>eSamskriti</title>');
      mywindow.document.write('</head><body>');
      mywindow.document.write(document.getElementById("printDesignSection").innerHTML);
      mywindow.document.write('</body></html>');

      mywindow.document.close();
      mywindow.focus();
      setTimeout(function () {
        mywindow.print();
      }, 500);
      return false;
    }
  </script>


        <div class="container-fluid" id="esankritiAdArea">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script> 
                        <ins class="adsbygoogle"
                            style="display: block"
                            data-ad-format="autorelaxed"
                            data-ad-client="ca-pub-7242037194407011"
                            data-ad-slot="3959254835"></ins>
                        <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid" id="subFooter">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 col-sm-4 subFooterOuter">
                        <div class="subFooterPart">
                            <h4>About eSamskriti</h4>
                            <ul>
                                <li><a href="/why-and-how.aspx">Why and How</a></li>
                                <li><a href="/sanjeev-message.aspx">Sanjeev's Message</a></li>
                                <li><a href="/our-logo.aspx">About Logo</a></li>
                                <li><a href="/expressing-gratitude.aspx">Expressing Gratitude</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-4 subFooterOuter subFooterOuter">
                        <div class="subFooterPart">
                            <h4>Useful Links</h4>
                            <ul>
                                <li><a href="/plagiarism-policy.aspx">Plagiarism Policy</a></li>
                                <li><a href="/pictures-policy.aspx">Pictures Policy</a></li>
                                <li><a href="/terms-of-use.aspx">Terms of Use</a></li>
                                <li><a href="/buy-pictures.aspx">Buy pictures</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix visible-xs">
                    </div>
                    <div class="col-md-2 col-sm-4 subFooterOuter">
                        <div class="subFooterPart">
                            <h4>To Contribute</h4>
                            <ul>
                                <li><a href="/articles.aspx">Articles</a></li>
                                <li><a href="/photographs.aspx">Photographs</a></li>
                                <li><a href="/sa/Support-India/Contribute-to-Indian-Army-Welfare-Fund-1.aspx">Indian Army Welfare
                                Fund</a></li>
                                <li><a href="/esamskriti.aspx">eSamskriti</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix visible-sm">
                    </div>
                    <div class="col-md-2 col-sm-4 subFooterOuter ">
                        <div class="subFooterPart">
                            <h4>Articles</h4>
                            <ul>
                                <li><a href="/s/culture.aspx">Culture</a></li>
                                <li><a href="/s/spirituality.aspx">Spirituality</a></li>
                                <li><a href="/s/yoga.aspx">Yoga</a></li>
                                <li><a href="/s/history.aspx">History </a></li>
                                <li><a href="/s/NATIONAL%20AFFAIRS.aspx">National Affairs</a></li>
                                <li><a href="/p/ayurveda.aspx">Special Sections</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix visible-xs">
                    </div>
                    <div class="col-md-2 col-sm-4 subFooterOuter">
                        <div class="subFooterPart">
                            <h4>Gallery</h4>
                            <ul>
                                <li><a href="/photogallery.aspx">By State</a></li>
                                <li><a href="/photogallery.aspx">By Theme</a></li>
                                <li><a href="/photogallery.aspx?outside=Y">Outside India</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-4 subFooterOuter footerLastColumn">
                        <div class="subFooterPart">
                            <h4>Stay Connected</h4>
                            <ul class="headerSocial social">
                                <li><a href="https://plus.google.com/116197632981133219340" class="link google-plus" target="_blank"><i class="fa fa-google-plus"
                                    aria-hidden="true"></i></a></li>
                                <li><a href="https://www.facebook.com/eSamskriti" class="link facebook" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="https://twitter.com/eSamskritiindia" class="link twitter" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="https://www.youtube.com/channel/UCHnWwG92M-iTHCYh1nY7QPQ" class="link youtube" target="_blank"><i class="fa fa-youtube-play"
                                    aria-hidden="true"></i></a></li>
                                <li>
                                    <a href="https://www.instagram.com/esamskriti/" class="link instagram" target="_blank">
                                        <i class="fa fa-instagram" aria-hidden="true"></i>
                                    </a>
                                </li>
                            </ul>
                            <p>
                                mail to
                            </p>
                            <p>
                                <a class="mailToLink" href="mailto:esamskriti108@gmail.com?Subject=Hello" target="_top">esamskriti108@gmail.com</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer>
		<div class="container-fluid" id="footerArea">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="footerInner">
							<p>Copyright &copy;  2025  eSamskriti</p>
                        </div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="footerInner">
							<p>[Best viewed in IE 10+, Firefox 20+, Chrome , Safari5+, Opera12+] </p>
						</div>
					</div>
                    <div class="col-md-4 col-sm-6">
				<div class="footerInner text-right">
                    <h5 class="m-0">:::|<a target="_blank" title="Website design development, Search Engine Optimization, Internet marketing, Web hosting, company in pune India, Web-Flash based designers &amp; consultants in Pune " href="https://www.dimakhconsultants.com/"> powered by dimakh consultants  </a>|:::</h5>
				</div>
</div>
				</div>
			</div>
		</div>     
      <a id='backTop'></a>
	</footer>
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 searchSiteIndexArea">
                        <div class="modal fade" id="search-site-index" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                            <div class="modal-dialog modal-md" role="document">
                                <div class="modal-content">
                                    <div id="Panel1" onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;lnkSearch&#39;)">
	
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="gridSystemModalLabel">Please type your specific search or go through our recommended links</h4>
                                            <div class="input-group add-on">
                                                <input name="ctl00$txtSiteSearch" type="text" id="txtSiteSearch" class="form-control" placeholder="Type Name of Article Category, Article Title, Article Author, State, Country, Photo Album, Theme, Book Title, Book Author to see what you want....." />
                                                <div class="input-group-btn">
                                                    <a id="lnkSearch" class="btn btn-default" href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$lnkSearch&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, true))"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                </div>

                                            </div>
                                            <div>
                                                <div id="pnlAjax1" style="height:150px;overflow-y:scroll;">
		
                                                
	</div>
                                                
                                            </div>
                                        </div>
                                    
</div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-3 col-sm-3">
                                                <div class="searchSiteResult">
                                                    <ul>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=bhagavad">Bhagawad Gita</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=temples">Temples of India</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=education">Education India</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=Janmashtami">Janmasthami & Krishna</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=Durga%20Puja,%20Dussehra%20and%20Diwali">Durga Puja, Dussehra & Diwali</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-3">
                                                <div class="searchSiteResult">
                                                    <ul>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=vivekananda">Swami Vivekananda</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=Upanishads">Commentary on Upanishads</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=yoga">Yoga Asanas and Therapy</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=ambedkar">Dr Babasaheb Ambedkar</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=indian-women">Indian Women</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-3">
                                                <div class="searchSiteResult">
                                                    <ul>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=karma">Karma and Reincarnation</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=ganesha">Ganesha & Ganesh Chaturthi</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=caste">Caste</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=kashmir">Kashmir</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=shivratri">Shivaratri and Shiva</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-3">
                                                <div class="searchSiteResult">
                                                    <ul>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=ahimsa">Ahimsa</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=dharma">Dharma</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=meditation">Meditation</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=Who-is-a-Minority">Who is a Minority</a></li>
                                                        <li><a href="https://www.esamskriti.com/indexsearch.aspx?search=India-Japan-Ties">India Japan Ties</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="subscribeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Interested in our Newsletter?</h4>
                    </div>
                    <div class="modal-body">
                        <div class="subscribeModalContent validateContainer">
                            <div id="UpdatePanelSubscribe">
	
                                    <div id="pnlSubscribe" onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;btnSubscribe&#39;)">
		
                                        
                                        <div class="form-group">
                                            <label for="subscriberName">
                                                Name</label>
                                            <div class="validateField">
                                                <input name="ctl00$txtSubscriberName" type="text" id="txtSubscriberName" class="form-control validateRequired validateAlphaonly" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="emailId">
                                                Email Address</label>
                                            <div class="validateField">
                                                <input name="ctl00$txtSubscriberEmailId" type="text" id="txtSubscriberEmailId" class="form-control validateRequired validateEmail" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="emailId">
                                                Security Code</label>
                                            <div class="validateField">
                                                <div style="float: left">
                                                    <div style='background-color:White;color:#2e5e79;width:50%;'><img src="CaptchaImage.axd?guid=5e0edff9-9986-4b13-822c-9a837ec0b2a2" border='0' width=180 height=31></div>
                                                </div>
                                                <input name="ctl00$txtSecurityCode" type="text" maxlength="5" id="txtSecurityCode" class="form-control validateRequired" style="width: 48%;" />
                                            </div>
                                        </div>
                                        <input type="submit" name="ctl00$btnSubscribe" value="Subscribe" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$btnSubscribe&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="btnSubscribe" class="checkValidationBtn  btn btn-default form-control" />
                                    
	</div>
                                
</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="marriageModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-md" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="H1">Please enter password to view this album.</h4>
                    </div>
                    <div class="modal-body">
                        <div class="subscribeModalContent">

                            <div class="form-group">
                                <input name="ctl00$password" type="password" id="password" class="form-control" required="" />
                            </div>
                            <input type="submit" class="btn btn-default form-control" value="Submit" onclick="return validatePassword();" />

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <a href="#" class="subscribeFixedBtn" data-toggle="modal" data-target="#subscribeModal">Receive Site Updates</a>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

        <script src="/js/jquery.backTop.js"></script>

        <script src="/js/bootstrap.min.js"></script>

        <script src="/js/all-script.js"></script>

        <script src="/js/wow.min.js"></script>

        <script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>

        <script src="/filterizr/jquery.filterizr.js"></script>

        <script src="/js/controls.js"></script>


        <script src="/js/gallery.js"></script>

        <script src="/js/sub-gallery.js"></script>

        <script src="/js/custom.js"></script>


        <script src="/js/validation/jquery.validate.min.js"></script>

        <script src="/js/validation/additional-methods.min.js"></script>

        <script src="/js/validation/checkvalidation.js"></script>


        

        <script>
            stickySocialForArticleDetail();


        </script>

        
        <script>    menuRemoveUnderLine();</script>


        <script>
            function validatePassword() {
                if ($('#password').val() == '') {
                    return false;
                }
                else {
                    console.log(window.location.href);
                    window.location = window.location.href + "?password=" + $('#password').val();
                }
                return true;
            }
        </script>
        
  <script language="javascript" type="text/javascript">
      removeTagsFunction();

      $(document).ready(function () {
          $(".readMorebtn").click(function () {
              $(".articleActualContent").toggleClass("height-auto");
              $(".readMorebtn").text(($(".readMorebtn").text() == "Read More ...") ? "Read Less" : "Read More ...").fadeIn();
          });
      });

      (function($){
          setInterval(() => {
              $.each($('iframe'), (arr,x) => {
                  let src = $(x).attr('src');
                  if (src && src.match(/(ads-iframe)|(disqusads)/gi)) {
                      $(x).remove();
                  }
              });
          }, 300);
      })(jQuery);
  </script>


        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-167860-3', 'auto');
            ga('send', 'pageview');

        </script>
        <script language="javascript" type="text/javascript">
            function CodeBehindDDlJs(e) {
                if (window.event) {
                    evt_code = event.keyCode;
                }
                else if (e.which) {
                    evt_code = e.which;
                }
                if (evt_code == 13) {
                    document.getElementById('btnsearch').click();
                    return false;
                }
            }

                (function($){
                    setInterval(() => {
                        $.each($('iframe'), (arr, x) => {
                            let src = $(x).attr('src');
                            if (src && src.match(/(ads-iframe)|(disqusads)/gi)) {
                                $(x).remove();
                            }
                        });
                    }, 300);
                 })(jQuery);
        </script>

        

<script type="text/javascript">
//<![CDATA[
Sys.Application.add_init(function() {
    $create(AjaxControlToolkit.AutoCompleteBehavior, {"completionInterval":10,"completionListCssClass":"completionList","completionListElementID":"pnlAjax1","completionListItemCssClass":"listItem","completionSetCount":1,"delimiterCharacters":"","highlightedItemCssClass":"itemHighlighted","id":"AutoCompleteEx1","minimumPrefixLength":2,"serviceMethod":"GetRecords1","servicePath":"/sitesearch.asmx","useContextKey":true}, {"itemSelected":OnRecordSelected1,"populated":OnRecordPopulated1}, null, $get("txtSiteSearch"));
});
//]]>
</script>
</form>
</body>
</html>

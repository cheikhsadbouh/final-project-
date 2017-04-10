
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<!--
*
* Copyright (C) 2016, bitmovin GmbH, All Rights Reserved
*
* Created on: 2015-07-25 11:35:04
* Author:     bitmovin GmbH <dash-player@bitmovin.com>
*
* This source code and its use and distribution, is subject to the terms
* and conditions of the applicable license agreement.
*
-->
<html lang="en">
<head>
  <title>bitdash SDK</title>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="http://fonts.googleapis.com/css?family=Dosis" rel="stylesheet" type="text/css"/>
  <!-- bitdash player -->
  <script type="text/javascript" src="https://bitmovin-a.akamaihd.net/bitmovin-player/stable/7/bitmovinplayer.js"></script>

  <style>
.bmpui-ui-watermark {
  display: none;
}
    figure {
      margin: 0;
      padding: 0;
    }
    .container {
      font-family: "Dosis";
      color:       white;
      text-align:  center;
    }
    .container a {
      color: white;
    }
    .container h1 {
      font:          54px/66px "Dosis";
      margin-bottom: 22px;
      line-height:   66px;
    }
    .container h2 {
      font-weight:   normal;
      margin-bottom: 36px;
      line-height:   26px;
    }
    .player-wrapper {
      width:        50%;
      margin-right: auto;
      margin-left:  auto;
      box-shadow:   0 0 30px rgba(0,0,0,0.7);
    }
    #webserver-warning {
      margin:           50px;
      padding:          20px;
      background-color: rgba(255,0,0,0.5);
      display:          none;
    }
  </style>
</head>
<body background="http://bitmovin-a.akamaihd.net/webpages/bitmovin/images/background.jpg">
<div class="container">
  <h1>HTML5 Adaptive Streaming Player for MPEG-DASH & HLS</h1>
  <h2>Your videos play everywhere with low startup delay, no buffering and in highest quality.</h2>
  <div id="webserver-warning">
    <div class="ca-content">
      <h1>Unsupported Protocol</h1>
      <h2>This file has been loaded using the unsupported "file" protocol. Please use a <a href="http://wiki.selfhtml.org/wiki/Webserver/lokal" target="_blank">web server</a> and open this page using http or https.</h2>
    </div>
  </div>
  <div class="content">
    <div class="player-wrapper">
      <div id="player"></div>
    </div>
    <div class="description">
      <p>For more information about the bitmovin player, please have a look at our online <a href="//bitmovin.com/support" target="_blank">Developer Section</a>.</p>
    </div>
  </div>

</div>
<script type="text/javascript">
  if (location.protocol === "file:") {
    document.getElementById("webserver-warning").style.display = "block";
  }

  var conf = {
    key:       "91941868-f5a0-4c8d-ad12-b270b60ce8dd",
    source: {
      dash:        "<c:url value='/resources/formations/formation-math/nombre-complexe/video1/511344.mpd' />",
      hls:         " <c:url value='/resources/formations/formation-math/nombre-complexe/video1/511344.m3u8' />",
      poster:      "<c:url value='/resources/formations/formation-math/nombre-complexe/' />"
     
    }
  };
  var player = bitmovin.player("player");

  player.setup(conf).then(function(value) {
    // Success
    console.log("Successfully created bitmovin player instance");
  }, function(reason) {
    // Error!
    console.log("Error while creating bitmovin player instance");
  });
</script>
</body>
</html>


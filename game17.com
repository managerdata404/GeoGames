<!DOCTYPE html>
<html>
  <head>
    <title>Geology AR/VR Experience</title>
    <script src="https://aframe.io/releases/1.4.0/aframe.min.js"></script>
    <script src="https://cdn.rawgit.com/jeromeetienne/ar.js/1.7.2/aframe/build/aframe-ar.min.js"></script>
  </head>
  <body style="margin: 0; overflow: hidden;">
    <!-- A-Frame Scene -->
    <a-scene embedded arjs vr-mode-ui="enabled: true">

      <!-- Geological Layers -->
      <!-- Layer 1 (Red) -->
      <a-box position="0 0.5 -3" depth="3" height="0.5" width="3" color="#FF5733"></a-box>
      <!-- Layer 2 (Orange) -->
      <a-box position="0 1 -3" depth="3" height="0.5" width="3" color="#FFC300"></a-box>
      <!-- Layer 3 (Yellow) -->
      <a-box position="0 1.5 -3" depth="3" height="0.5" width="3" color="#FFD700"></a-box>
      <!-- Layer 4 (Green) -->
      <a-box position="0 2 -3" depth="3" height="0.5" width="3" color="#28B463"></a-box>
      <!-- Layer 5 (Blue) -->
      <a-box position="0 2.5 -3" depth="3" height="0.5" width="3" color="#1F618D"></a-box>

      <!-- Rock Features -->
      <!-- Fault Line -->
      <a-cylinder position="0 1.25 -2.5" radius="0.05" height="3" color="#000000"></a-cylinder>

      <!-- Camera and Controls -->
      <a-entity camera position="0 1.6 0">
        <a-light type="point" intensity="1" position="2 4 4"></a-light>
      </a-entity>

      <!-- AR Marker -->
      <a-marker-camera preset="hiro"></a-marker-camera>
    </a-scene>
  </body>
</html>
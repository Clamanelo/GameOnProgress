{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "Die",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_32686ABD","path":"rooms/Die/Die.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_1","depth":0,"effectEnabled":true,"effectType":"_filter_heathaze","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.01",},
        {"name":"g_Distort2Speed","type":0,"value":"0.025",},
        {"name":"g_Distort1Scale","type":0,"value":"13.3",},
        {"name":"g_Distort1Scale","type":0,"value":"1.3",},
        {"name":"g_Distort2Scale","type":0,"value":"33.3",},
        {"name":"g_Distort2Scale","type":0,"value":"3.3",},
        {"name":"g_Distort1Amount","type":0,"value":"1",},
        {"name":"g_Distort2Amount","type":0,"value":"2",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"0.5",},
        {"name":"g_CamOffsetScale","type":0,"value":"1",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_heathaze_noise_sprite",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"HudLayer","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"ButtonQuitLayer","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_32686ABD","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_ButtonBox","path":"objects/obj_ButtonBox/obj_ButtonBox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":800.0,"y":544.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_7","depth":300,"effectEnabled":true,"effectType":"_filter_zoom_blur","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_ZoomBlurCenter","type":0,"value":"0.5",},
        {"name":"g_ZoomBlurCenter","type":0,"value":"0.5",},
        {"name":"g_ZoomBlurIntensity","type":0,"value":"0.475",},
        {"name":"g_ZoomBlurFocusRadius","type":0,"value":"832",},
        {"name":"g_ZoomBlurTexture","type":2,"value":"_filter_zoom_blur_noise",},
      ],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_6","depth":400,"effectEnabled":true,"effectType":"_filter_contrast","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_ContrastIntensity","type":0,"value":"2",},
        {"name":"g_ContrastBrightness","type":0,"value":"1.25",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_4","depth":500,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_HueShift","type":0,"value":"0.475",},
        {"name":"g_HueSaturation","type":0,"value":"5",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_5","depth":600,"effectEnabled":true,"effectType":"_filter_edgedetect","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Threshold","type":0,"value":"0",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_3","depth":700,"effectEnabled":true,"effectType":"_filter_posterise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_ColourLevels","type":0,"value":"13",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_2","depth":800,"effectEnabled":true,"effectType":"_filter_fractal_noise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_FractalNoiseScale","type":0,"value":"103",},
        {"name":"g_FractalNoisePersistence","type":0,"value":"0.475",},
        {"name":"g_FractalNoiseOffset","type":0,"value":"0",},
        {"name":"g_FractalNoiseOffset","type":0,"value":"0",},
        {"name":"g_FractalNoiseSpeed","type":0,"value":"0.4",},
        {"name":"g_FractalNoiseTintColour","type":1,"value":"#FFFFFFFF",},
        {"name":"g_FractalNoiseTexture","type":2,"value":"_filter_fractal_noise_texture",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Backgrounds_1","animationFPS":15.0,"animationSpeedType":0,"colour":4278191103,"depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":false,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190335,"depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 800,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1600,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":800,"hspeed":-1,"hview":800,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1600,"wview":1600,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": true,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}
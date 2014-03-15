enchant()

window.onload = ->
  game = new Core 320, 320
  game.rootScene.backgroundColor = "gray"
  game.preload "chara1.png", "map2.png", "clear.png"
  scene = game.rootScene
  game.onload = ->
    console.log 'onload'
    scene.ontouchend = -> game.end 0, 0, game.assets['clear.png']
  game.start()

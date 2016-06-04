# 1   5
# 2 4 6
# 3   7

class HaiiroIcon
  constructor: (svgId, @defaults) ->
    @rects = document.getElementById(svgId).childNodes
    @paintWithDefault()

  fillPallet = (pallet) ->
    filled = []
    while filled.length < 7
      filled = filled.concat pallet
    return filled[0..6]

  paintWithDefault: ->
    @paint @defaults

  paintTarget: (num, color) ->
    @rects[num].setAttribute('fill', color)

  paint: (pallet) ->
    colors = fillPallet.call @, pallet
    if colors.length == 7
      @rects[num].setAttribute('fill', colors[num]) for num in [0..6]

  randomPaint = (count) ->
    if count == 0 && @finishLogic()
      @paint @randomColors
      @finishCallback()
      return
    else if count == 0
      count += 100

    setTimeout =>
      @paintTarget Math.floor(Math.random() * 7), @randomColors[Math.floor(Math.random() * 7)]
      randomPaint.call @, count - 1
    , 15

  randomPaintStart: (pallet, @finishLogic, @finishCallback) ->
    @randomColors = fillPallet.call @, pallet
    randomPaint.call @, 100

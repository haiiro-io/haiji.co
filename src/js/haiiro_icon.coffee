class HaiiroIcon
  constructor: (svgId, @defaults) ->
    @rects = document.getElementById(svgId).childNodes
    @paintWithDefault()

  fillPallet = (pallet) ->
    filled = []
    while filled.length < 7
      filled = filled.concat pallet
    return filled[0..6]

  paint: (pallet) ->
    colors = fillPallet.call @, pallet
    if colors.length == 7
      @rects[num].setAttribute('fill', colors[num]) for num in [0..6]

  paintWithDefault: ->
    @paint @defaults

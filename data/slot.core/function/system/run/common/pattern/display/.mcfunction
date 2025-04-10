#> slot.core:system/run/common/pattern/display/
# ルーレット開始
# @within function slot.core:system/run/**

# 各スロットの乱数生成(1 ~ SlotItem.length - 1)
    $execute store result storage core: System.Slot.Pattern.1 int 1.0 run random value 1..$(PatternLength)
    $execute store result storage core: System.Slot.Pattern.2 int 1.0 run random value 1..$(PatternLength)
    $execute store result storage core: System.Slot.Pattern.3 int 1.0 run random value 1..$(PatternLength)

# ハンドラを取得
    data modify storage core: System.Slot.Pattern.LinkedHander set from storage core: System.LinkedHander

# 対応したアイテムを取得して表示
    function slot.core:system/run/common/pattern/display/1.get_item_id with storage core: System.Slot.Pattern

# 使用データ削除
    data remove storage core: System.Slot.Pattern

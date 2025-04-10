#> slot.core:generate/util/merge_click_event
# クリックイベントをpropertyにマージする
# @within function slot.core:generate/util/set_sigh

# 文字列を解体して取得
    data modify storage core: Merge.String set string storage property: Slot.FrontText[0] 0 -1

# 結合する文字列を指定
    data modify storage core: Merge.Temp set value ', "clickEvent":{"action":"run_command","value":"/function slot.main:listener/sigh_click"}}'

# 結合して格納
    function slot.core:generate/util/merge_string/merge with storage core: Merge

# ストレージ削除
    data remove storage core: Merge

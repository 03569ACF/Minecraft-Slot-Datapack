#> slot.core:system/handler_exist_check
# リンクしたハンドラが存在する?
# @within function slot.core:system/clicked

# チェック
    $execute if entity @e[nbt={Tags:["SlotHandler",$(LinkedHander)]}] run return 1

# エラー処理
    tellraw @s [{"storage": "global:","nbt": "prefix.ERROR"},{"text": "スロットハンドラが存在しません。この不具合が発生した場合は開発者へお知らせください。"}]
    return -1

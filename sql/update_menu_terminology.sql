-- 更新菜单表中的术语
-- 将"旧物信息管理"改为"废旧物品信息管理"
-- 将"旧物分类"改为"废旧物品分类"
-- 将"旧物信息"改为"废旧物品信息"
-- 将"旧物类型"改为"废旧物品类型"

UPDATE `menu` SET `menujson` = REPLACE(`menujson`, '"旧物信息管理"', '"废旧物品信息管理"');
UPDATE `menu` SET `menujson` = REPLACE(`menujson`, '"旧物分类"', '"废旧物品分类"');
UPDATE `menu` SET `menujson` = REPLACE(`menujson`, '"旧物信息"', '"废旧物品信息"');
UPDATE `menu` SET `menujson` = REPLACE(`menujson`, '"旧物类型"', '"废旧物品类型"');

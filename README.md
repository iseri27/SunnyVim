# SunnyVim

Corona 的个人 vim 配置, 使用 vim-plug 管理插件.

## 随机主题

创建 `custom` 文件夹, 在该文件夹下创建一个 `.vim` 文件, 如 `color.vim`, 并写入以下内容:

```vim
call color#RandomDark()
```

如果启用 transparent 插件, 则不要使用 everforest 主题, 部分背景显示怪异, 不会透明.

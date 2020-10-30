# bufutils.vim
bufutils.vim provide utilities to Open/Close/Refresh/Move/Resize/Zoom buffers faster


## Installation:

### Vundle
* Add Plugin `smitajit/bufutils.vim` to your `.vimrc` file and call `:PluginInstall`
### pathogen
* git clone https://github.com/smitajit/bufutils.vim ~/.vim/bundle/bufutils.vim

## Commands
| Command                         | Description                                                                  |
| ---                             | ---                                                                          |
| `:BCloseAll`                    | Close all buffers                                                            |
| `:BClosePreviews`               | Close preview buffers, help buffers, localtion buffers                       |
| `:BCloseLeft`                   | Close all buffers, left of the current buffer                                |
| `:BCloseRight`                  | Close all buffers, right of the current buffer                               |
| `:BCloseOther`                  | Close all buffers, except the current buffer                                 |
| `:BCloseThis`                   | Close the current buffer                                                     |
| `:BCloseOther`                  | Close all buffers, except the current buffer                                 |
|                                                                                                                |
| `:BOpen {file_names}`           | Open new buffers with the files argument                                     |
| `:BOpenSVertical {file_names}`  | Open new buffers in vertical split with the files argument                   |   
| `:BOpenSHorizontal {file_names}`| Open new buffers in horizonal split with the files argument                  |
|                                                                                                                |
| `:BMoveToLeft`                  | Move the current buffer to the left of window                                |
| `:BMoveToRight`                 | Move the current buffer to the right of window                               |
| `:BMoveToTop`                   | Move the current buffer to the top of window                                 |
| `:BMoveToBottom`                | Move the current buffer to the bottom of window                              |
|                                                                                                                |
| `:BResizeIncreaseHeight {size}` | Increase the height of the current buffer by value {size}. Default size is 5 |
| `:BResizeDecreaseHeight {size}` | Decrease the height of the current buffer by value {size}. Default size is 5 |
| `:BResizeIncreaseWidth {size}`  | Increase the width of the current buffer by value {size}. Default size is 5  |
| `:BResizeDecreaseWidth {size}`  | Decrease the width of the current buffer by value {size}. Default size is 5  |
| `:BResizeFullHeight`            | Increase the heigh of the current buffer to maximum                          |
| `:BResizeFullWidth`             | Increase the width of the current buffer to maximum                          |
| `:BResizeFullWidth`             | Increase the width of the current buffer to maximum                          |
| `:BResizeReset`                 | Restets the size of all buffers                                              |
| `:BResizeToggleZoom`            | Toggle zoom in and zoom out of the current buffer                            |
|                                                                                                                |
| `:BRefresh`                     | Refresh the current buffer                                                   |



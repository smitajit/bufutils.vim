# bufutils.vim
`bufutils.vim` provide utilities to Open, Close, Refresh, Move, Resize, Zoom buffers easily


## Installation:
Using your favorite [plugin manager](https://github.com/mhinz/vim-galore#managing-plugins), e.g. [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'smitajit/bufutils.vim'
```

## Commands
| Command                         | Description                                                                  |
| ---                             | ---                                                                          |
| `:BCloseAll`                    | Close all buffers                                                            |
| `:BClosePreviews`               | Close preview buffers, help buffers, location buffers                        |
| `:BCloseLeft`                   | Close all buffers left of the current buffer                                 |
| `:BCloseRight`                  | Close all buffers right of the current buffer                                |
| `:BCloseOther`                  | Close all buffers except the current buffer                                  |
| `:BCloseThis`                   | Close the current buffer                                                     |
| `:BCloseOther`                  | Close all buffers, except the current buffer                                 |
| `:BCloseRetainPrevious`         | Close current buffer but bring back the previous buffer                      |
| `:BHide`                        | Hide the current buffer                                                      |
| `:BOpen {file_names}`           | Open new buffers with the files argument                                     |
| `:BOpenSVertical {file_names}`  | Open new buffers in vertical split with the files argument                   |
| `:BOpenSHorizontal {file_names}`| Open new buffers in horizontal split with the files argument                 |                                                 
| `:BMoveToLeft`                  | Move the current buffer to the left of window                                |
| `:BMoveToRight`                 | Move the current buffer to the right of window                               |
| `:BMoveToTop`                   | Move the current buffer to the top of window                                 |
| `:BMoveToBottom`                | Move the current buffer to the bottom of window                              |
| `:BResizeIncreaseHeight {size}` | Increase the height of the current buffer by value {size}. Default size is 5 |
| `:BResizeDecreaseHeight {size}` | Decrease the height of the current buffer by value {size}. Default size is 5 |
| `:BResizeIncreaseWidth {size}`  | Increase the width of the current buffer by value {size}. Default size is 5  |
| `:BResizeDecreaseWidth {size}`  | Decrease the width of the current buffer by value {size}. Default size is 5  |
| `:BResizeFullHeight`            | Toggles between maximum and normal height of the buffer                      |
| `:BResizeFullWidth`             | Toggles between maximum and normal width of the buffer                       |
| `:BResizeZoom`                  | Toggle zoom in and zoom out of the current buffer                            |
| `:BResizeReset`                 | Resets the size of all buffers                                               |
| `:BRefresh`                     | Refresh the current buffer                                                   |

## Options

`g:bufutils#resize#default#width`
*	Type |Number|.
* Value to increase or decrease width of the buffer
*	Default value is 5

`g:bufutils#resize#default#height`
* Type |Number|.
* Value to increase or decrease height of the buffer
* Default value is 5

`g:bufutils#resize#auto#reset`
* Type |Number|.
*  Enable or disable auto resize reset on window change. Default is 1 (enabled)
*  0 - Disable
*  1 - Enable

`g:bufutils#open#use_fzf`
*	Type |Number|.
* Enable or disable fzf for opening buffer. Valid for BOpen, BOpenSVertical, BOpenSHorizontal
*	Default value is 0
*  0 - Disable fzf
*  1 - Enable fzf

`g:g:bufutils#fzf#with_preview`
*	Type |Number|.
* Enable or disable preview when running in fzf mode
*	Default value is 0
*  0 - Disable preview
*  1 - Enable preview

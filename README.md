# bufutils.vim
bufutils.vim provide utilities to Close buffers faster


## Installation:

### Vundle
* Add Plugin 'smitajit/bufutils.vim' to your .vimrc file and call :PluginInstall
### pathogen
* git clone https://github.com/smitajit/bufutils.vim ~/.vim/bundle/bufutil.vim

#### Basic Usage

* :BCloseAll 		 -- will close all buffers
* :BClosePreviews	 -- will close preview buffers , help buffers , localtion buffers and if nerd tree is Opened it will call NERDTreeToggle
* :BCloseLeft		 -- will close all buffers to the left of the current buffer
* :BCloseRight		 -- will close all buffers to the right of the current buffer
* :BCloseOther		 -- will close all buffers except the current buffer
* :BCloseThis	       	 -- will close this buffer
* :BOpen       	       	 -- Will open a file. The argument to this is the filepath
* :BOpenSVertical	 -- Will open a file in vertical split. The argument to this is the filepath
* :BOpenSHorizontal	 -- Will opena a file in horizontal split. The argument to this is the filepath
* :BRefresh 		 -- Will refresh the current buffer
#### vimrc key mapping
* Add the below key mapping to your .vimrc for better bufutils use:
	```vim
	map qq :BClosePreviews<cr>
	map qa :BCloseAll<cr>
	map ql :BCloseLeft<cr>
	map qr :BCloseRight<cr>
	map qo :BCloseOther<cr>
	map qt :BCloseThis<cr>
	```

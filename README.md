#bufutis.vim
bufutils.vim provide utilities to Close buffers faster


##Installation:

###Vundle
* Add Plugin 'smitajit/utility.vim' to your .vimrc file and call :PluginInstall
 
####Basic Usage
* :BCloseAll -- will close all buffers
* :BClosePreviews -- will close preview buffers , help buffers , localtion buffers and if nerd tree is Opened it will call NERDTreeToggle
* :BCloseLeft -- will close all buffers to the left of the current buffer
* :BCloseRight -- will close all buffers to the right of the current buffer
* :BCloseOther -- will close all buffers except the current buffer

####vimrc key mapping
* Add the below key mapping to your .vimrc for better bufutils use:
	```vim
	map qq :BClosePreviews<cr>
	map qa :BCloseAll<cr>
	map ql :BCloseLeft<cr>
	map qr :BCloseRight<cr>
	map qo :BCloseOther<cr>
	```

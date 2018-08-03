###JavaUnit.vim
自己对juni进行了个性化定制 1.将自己的classpath指向到该项目下的lib包和bin包,就能够进行正常的测试 2.针对原先对有外部jar包,不能测试的情况(具有情况不是很清楚,毕竟我对vimscript也不是很熟,我的情况是在测试连接数据库的情况 下,无法找到驱动包,故在autoload目录下的javaUnit.vim中修改了源代码,加入了lib包的classpath引入,从而能够测试 3.加入了对项目的编译功能,当然目前还需要手动更改目录和按照引用顺序进行编译,在javaUnit.vim中加入了编译用到的函数,在plug文件夹中 的vim文件新定义了调用方法,并且通过与测试方法相同的显示界面,虽然并没有什么信息,但这样不会导致整个界面混乱 4.后续想配合vim-Rooter插件,不需要更改路径进行编译,通过switch,智能按照引用顺序进行编译

目前插件已经可以编译和运行在一个插件上了,还是挺方便的,感谢原作者

[![Join the chat at https://gitter.im/wsdjeg/JavaUnit.vim](https://badges.gitter.im/wsdjeg/JavaUnit.vim.svg)](https://gitter.im/wsdjeg/JavaUnit.vim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status](https://travis-ci.org/wsdjeg/JavaUnit.vim.svg?branch=master)](https://travis-ci.org/wsdjeg/JavaUnit.vim)

#### requirement

1. jdk

2. [artur-shaik/javacomplete2](https://github.com/artur-shaik/vim-javacomplete2)

3. [scrooloose/syntastic](https://github.com/scrooloose/syntastic)

> also you can use my fork which provide gradle support, [wsdjeg/syntastic](https://github.com/wsdjeg/syntastic)

4. [Shougo/unite.vim](https://github.com/Shougo/unite.vim)

> if you do not intstall this plugin,JavaUnit will show result in its own buffer instead of unite.

5. [tagbar](https://github.com/majutsushi/tagbar)


#### install

- [neobundle.vim](https://github.com/Shougo/neobundle.vim)

```vim
NeoBundle 'wsdjeg/JavaUnit.vim'
```

- [Vundle.vim](https://github.com/VundleVim/Vundle.vim)

```vim
Plugin 'wsdjeg/JavaUnit.vim'
```

#### Command

JavaUnitExec

test the current methond(no need put the cursor on the methodName)
![2015-11-16 23-40-05](https://cloud.githubusercontent.com/assets/13142418/11186276/e153459c-8cbb-11e5-9724-9589066176d0.png)

JavaUnitExec [args ...]

test specification method

example JavaUnitExec testMethod1 testMethod2 testMethod3 ...
![2015-11-16 23-40-25](https://cloud.githubusercontent.com/assets/13142418/11186274/e1520d9e-8cbb-11e5-90e1-17e6cfbc5a09.png)

JavaUnitTestMain

run the main methon of current class

also you can use `JavaUnitTestAll`,then will run all the testMethod in the current file
![2015-11-16 23-40-43](https://cloud.githubusercontent.com/assets/13142418/11186273/e132f580-8cbb-11e5-94d3-81dfda614abf.png)

support for maven project

JavaUnitTestMaven test current file

![JavaUnitMavenTest](https://cloud.githubusercontent.com/assets/13142418/11186066/ef8f70aa-8cba-11e5-9869-13f39a782ad7.png)

JavaUnitTestMavenAll test this project

![JavaUnitMavenTestAll](https://cloud.githubusercontent.com/assets/13142418/11186033/baf6f64c-8cba-11e5-989c-cd3dacb038b3.png)

#### Mappings

`q` close the JavaUnit buffer.

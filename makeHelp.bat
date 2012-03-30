man2html < flex++.1 > tmp
sed -e "s/\\\-/-/g" -e "s/Content-type: text\/html//g" < tmp > tmp2
sed -e "s/ .COMMANDS. / COMMANDS /g" < tmp2 > tmp
sed -e "s/\\\fB\([^\]*\)\\\fP/<b>\1<\/b>/g" < tmp  > tmp2
sed -e "s/\\\fI\([^\]*\)\\\fP/<i>\1<\/i>/g" < tmp2 > flex++.man.html

man2html < flex.1 > tmp
sed -e "s/\\\-/-/g" -e "s/Content-type: text\/html//g" < tmp > tmp2
sed -e "s/ .COMMANDS. / COMMANDS /g" < tmp2 > tmp
sed -e "s/\\\fB\([^\]*\)\\\fP/<b>\1<\/b>/g" < tmp  > tmp2
sed -e "s/\\\fI\([^\]*\)\\\fP/<i>\1<\/i>/g" < tmp2 > flex.man.html

man2html < flexdoc.1 > tmp
sed -e "s/\\\-/-/g" -e "s/Content-type: text\/html//g" < tmp > tmp2
sed -e "s/ .COMMANDS. / COMMANDS /g" < tmp2 > tmp
sed -e "s/\\\fB\([^\]*\)\\\fP/<b>\1<\/b>/g" < tmp  > tmp2
sed -e "s/\\\fI\([^\]*\)\\\fP/<i>\1<\/i>/g" < tmp2 > flexdoc.man.html

del tmp
del tmp2

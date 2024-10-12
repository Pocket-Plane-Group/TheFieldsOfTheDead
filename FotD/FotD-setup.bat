@echo off
cd override
tisunpack -s -f -o ar2500.tis ar2500.tiz
tisunpack -s -f -o ar2501.tis ar2501.tiz
tisunpack -s -f -o ar1010.tis ar1010.tiz
del ar2500.tiz
del ar2501.tiz
del ar1010.tiz
del tisunpack.exe
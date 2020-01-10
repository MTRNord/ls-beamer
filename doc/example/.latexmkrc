$pdflualatex = 'lualatex -interaction=nonstopmode -synctex=1 %O %S;';
set_tex_cmds( '-synctex=1 %O %S' );
$pdf_mode = 1;
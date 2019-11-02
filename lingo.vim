" Vim syntax file
" Language:	LINGO
" Maintainer:	Huang Yuxi <huangyuxi99@gmail.com>
" Last change:	2019 Nov 2

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" LINGO is case-insensitive
syntax case ignore

" LINGO functions include @
setlocal iskeyword=@-@,a-z,A-Z,48-57,_

syntax match	lingoOperator	'\(+\|-\|=\|<=\|>=\|\*\|/\|\^\|:\|\.\.\|(\|)\)'
syntax match	lingoOperator	'\(#NOT#\|#EQ#\|#NE#\|#GT#\|#GE#\|#LT#\|#LE#\|#AND#\|#OR#\)'
syntax match	lingoInteger	'\<\d\+\>'

"syn match	lingoIdentifier '[a-zA-Z][a-zA-z_0-9]*'

syntax keyword	lingoFunction	@ABS @ACOS @ACOSH @ASIN @ASINH @ATAN @ATAN2 @ATANH @COS @COSH @EXP @FLOOR @INT @INTEGRAL @LGM @LMTD @LOG @LOG10 @LOGB @MO
syntax keyword	lingoFunction	@FPA @FPL
syntax keyword	lingoFunction	@NORMINV @NORMSINV @PBN @PCX @PEB @PEL @PFD @PFS @PHG @PPL @PPS @PSL @PSN @PTD @QRAND @RAND
syntax keyword	lingoFunction	@BIN @BND @CARD @FREE @GIN @PRIORITY @SEMIC @SOS1 @SOS2 @SOS3 @POSD @ALLDIFF
syntax keyword	lingoFunction	@IN @INDEX @INSERT @SIZE @WRAP
syntax keyword	lingoFunction	@FOR @MAX @MIN @PROD @SUM
syntax keyword	lingoFunction	@FILE @ODBC @OLE @POINTER @TEXT
syntax keyword	lingoFunction	@PBETACDF @PBETAINV @PBETAPDF @PCACYCDF @PCACYINV @PCACYPDF @PCHISCDF @PCHISINV @PCHISPDF @PEXPOCDF @PEXPOINV @PEXPOPDF @PFDSTCDF @PFDSTINV @PFDSTPDF @PGAMMCDF @PGAMMINV @PGAMMPDF @PGMBLCDF @PGMBLINV @PGMBLPDF @PLAPLCDF @PLAPLINV @PLAPLPDF @PLGSTCDF @PLGSTINV @PLGSTPDF @PLOGNCDF @PLOGNINV @PLOGNPDF @PNORMCDF @PNORMINV @PNORMPDF @PPRTOCDF @PPRTOINV @PPRTOPDF @PSMSTCDF @PSMSTINV @PSMSTPDF @PSTUTCDF @PSTUTINV @PSTUTPDF @PTRIACDF @PTRIAINV @PTRIAPDF @PUNIFCDF @PUNIFINV @PUNIFPDF @PWEIBCDF @PWEIBINV @PWEIBPDF @PBTBNCDF @PBTBNINV @PBTBNPDF @PBINOCDF @PBINOINV @PBINOPDF @PGEOMCDF @PGEOMINV @PGEOMPDF @PHYPGCDF @PHYPGINV @PHYPGPDF @PLOGRCDF @PLOGRINV @PLOGRPDF @PNEGBCDF @PNEGBINV @PNEGBPDF @PPOISCDF @PPOISINV @PPOISPDF
syntax keyword	lingoFunction	@DUAL @FORMAT @ITERS @NAME @OBJBND @RANGED @RANGEU @STATUS @STRLEN @TABLE @WRITE @WRITEFOR
syntax keyword	lingoFunction	@TIME @YMD2STM @STM2YMD @STM2YR @STM2MON @STM2DAY @STM2HR @STM2MIN @STM2SEC @STMNOW @STM2DWK
syntax keyword	lingoFunction	@CHOLESKY @DETERMINANT @EIGEN @INVERSE @REGRESS @TRANSPOSE @QRFACTOR
syntax keyword	lingoFunction	@BLOCKROW @IF @WARN @USER

syntax keyword	lingoStatement	model end sets endsets data enddata init endinit calc endcalc submodel endsubmodel PROCEDURE ENDPROCEDURE
" syntax keyword	lingoStatement	com cat help mem
" syntax keyword	lingoStatement	model take rmps frmps
" syntax keyword	lingoStatement	look genl gen paus hide stats picture
" syntax keyword	lingoStatement	div rvrt save smps
" syntax keyword	lingoStatement	go solu nonz range exp oleexp odbcexp
" syntax keyword	lingoStatement	del ext alt
" syntax keyword	lingoStatement	quit
" syntax keyword	lingoStatement	page iptol ters verb bip width set freeze
" syntax keyword	lingoStatement	time newpw
" syntax keyword	lingoStatement	max min

syntax region	lingoComment	start="^\s*!" end=";\s*$"

syntax region	lingoString	start=/\v"/ end=/\v"/
syntax region	lingoString	start=/\v'/ end=/\v'/

syntax keyword lingoProgram	@DEBUG @SOLVE @NEXTKBEST
syntax keyword lingoProgram	@CHARTBAR @CHARTBUBBLE @CHARTCONTOUR @CHARTCURVE @CHARTGANTT @CHARTHISTO @CHARTLINE @CHARTNETARC @CHARTNETNODE @CHARTPIE @CHARTRADAR @CHARTSCATTER @CHARTSPACETIME @CHARTSHBAR @CHARTSVBAR @CHARTSURFACE @CHARTTORNADO
syntax keyword lingoProgram	@IFC @ELSE @FOR @WHILE @BREAK @STOP
syntax keyword lingoProgram	@READLN @READRM
syntax keyword lingoProgram	@GEN @GENDUAL @PIC @RELEASE @SMPI @SMPS @STATS
syntax keyword lingoProgram	@SOLU @WRITE @PAUSE @DIVERT
syntax keyword lingoProgram	@SET @APISET
syntax keyword lingoProgram	@R @RCMD
syntax keyword lingoProgram	@SPLOADSCENE @SPMAX @SPMEAN @SPMIN @SPNUMSCENE @SPPRBSCENE @SPSTDDEV
syntax keyword lingoProgram	@RANK @SORT 

highlight link lingoComment Comment
highlight link lingoIdentifier Identifier
highlight link lingoStatement Statement
highlight link lingoFunction Function
highlight link lingoInteger Number
highlight link lingoOperator Operator
highlight link lingoString String
highlight link lingoProgram PreProc

let b:current_syntax = "lingo"

" vim: ts=8: noexpandtab

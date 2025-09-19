;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Update: old sheetLdep() & sheetWdep() are mergered as ResCallback()
;; m: Mutipler also included to automatic caculate the resistance value & effective dimensions(for LVS)
procedure( ResCallback()
	prog( ()
		sheet10u=136.6K
		sheet20u=126.5K
		sheet50u=135.2K
		sheet100u=103.1K
		tmp_l = evalstring(cdfgData->RL->value)
		tmp_w = evalstring(cdfgData->RW->value)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;L check;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		if((tmp_l && (typep(tmp_l)!='flonum))
		then 
			artError("Length value must be a floating point number. set to default.")
			cdfgData->RL->value = cdfgData->RL->defValue
			return(nil)
		)
		if((tmp_l < 10u)
		then
			artError("Length value is less than minimum(10u). Set to default.")
			cdfgData->RL->value = cdfgData->RL->defValue
			tmp_l = evalstring(cdfgData->RL->defValue)
		)
		if((tmp_l > 100u )
		then
			artError("Length value is larger than maximum(100u). Set to maximum.")
			cdfgData->RL->value = "100u"
			tmp_l = 100u
		)
		
		if((tmp_l < 20u)
		then
			cdfgData->SheetRes->value = sprintf(s "%g" (sheet10u+(tmp_l-10u)/10u*(sheet20u-sheet10u)))
			;;cdfgData->r->value = sprintf(s "%g" tmp_l/tmp_w*(sheet10u+(tmp_l-10u)/10u*(sheet20u-sheet10u)))		
			;;return(nil)		
		)
		if(((tmp_l >= 20u) && (tmp_l <50u))
		then
			cdfgData->SheetRes->value = sprintf(s "%g" (sheet20u+(tmp_l-20u)/30u*(sheet50u-sheet20u)))	
			;;cdfgData->r->value = sprintf(s "%g" tmp_l/tmp_w*(sheet20u+(tmp_l-20u)/30u*(sheet50u-sheet20u)))	
			;;return(nil)		
		)
		if(tmp_l >= 50u
		then
			cdfgData->SheetRes->value = sprintf(s "%g" (sheet50u+(tmp_l-50u)/50u*(sheet100u-sheet50u)))		
			;;return(nil)		
		)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;W check;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		if((tmp_w && (typep(tmp_w)!='flonum))
		then 
			artError("Width value must be a floating point number. set to default.")
			cdfgData->RW->value = "4u"
			return(nil)
		)
		if((tmp_w < 4u)
		then
			artError("Width value is less than minimum(4u). Set to default.")
			cdfgData->RW->value = "4u"
			tmp_w=4u
			;;return(nil)
		)
		if((tmp_w > 200u )
		then
			artError("Width value is larger than maximum(200u). Set to maximum.")
			cdfgData->RW->value = "200u"
			tmp_w=200u
			;;return(nil)
		)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;Finger Check;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		fingers=evalstring(cdfgData->m->value)
		if((fingers && (typep(finger)!='fixnum))
		then 
			artError("Finger must be a integer number. set to default.")
			cdfgData->m->value = "1"
			;;return(nil)
		)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;Cal Res & Effective Dimension;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		sheet=evalstring(cdfgData->SheetRes->value)		
		fingers=evalstring(cdfgData->m->value)
	        cdfgData->r->value = sprintf(s "%g" tmp_l/tmp_w*sheet/fingers)	
		cdfgData->Leff->value = sprintf(s "%g" tmp_l)
		cdfgData->Weff->value = sprintf(s "%g" tmp_w*fingers)	
		return(nil)	
	)
)

procedure( sheetCWdep()
	prog( ()
		tmp = evalstring(cdfgData->CW->value)
		if((tmp && (typep(tmp)!='flonum))
		then 
			artError("Width value must be a floating point number. set to default.")
			cdfgData->CW->value = "4u"
			return(nil)
		)
		if((tmp < evalstring(cdfgData->CW->defValue))
		then
			artError("Width value is less than minimum(4u). Set to default.")
			cdfgData->CW->value = "4u"
			return(nil)
		)
		if((tmp > 10u )
		then
			artError("Width value is larger than maximum(200u). Set to maximum.")
			cdfgData->CW->value = "10u"
			return(nil)
		)
	)
)

procedure( CapCallback()
	prog( ()
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;Finger Check;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		fingers=evalstring(cdfgData->m->value)
		if((fingers && (typep(fingers)!='fixnum))
		then 
			artError("Finger must be a integer number. set to default.")
			cdfgData->m->value = "1"
			;;return(nil)
		)
		tempc=evalstring(cdfgData->cnorm->value)
		tempctotal=evalstring(cdfgData->c->value)/fingers
		tmp = sqrt(tempctotal/tempc)*1u
		cdfgData->W->value = sprintf(s "%g" tmp)
		cdfgData->L->value = sprintf(s "%g" tmp)
		if((tmp && (typep(tmp)!='flonum))
		then 
			artError("Width/Length value must be a floating point number. set to default.")
			cdfgData->W->value = "45u"
			cdfgData->L->value = "45u"
			return(nil)
		)
		if((tmp < 45u)
		then
			artError("Width/Length value is less than minimum(45u). Set to default.")
			cdfgData->W->value = "45u"
			cdfgData->L->value = "45u"
		)
		if((tmp > 1415u )
		then
			artError("Width/Length value is larger than maximum(1415u). Set to maximum.")
			cdfgData->W->value = "1415u"
			cdfgData->L->value = "1415u"
		)
		tempw=evalstring(cdfgData->W->value)
		templ=evalstring(cdfgData->L->value)
		cdfgData->cperim->value = sprintf(s "%g" (2*(tempw+templ)))
		cdfgData->carea->value = sprintf(s "%g" (tempw*templ))
		cdfgData->c->value = sprintf(s "%g" (tempw*templ/1p*tempc))		
		return(nil)	
		
	)
)

procedure( CapWLlim()
	prog( ()
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;W check;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		tmp = evalstring(cdfgData->W->value)
		if((tmp && (typep(tmp)!='flonum))
		then 
			artError("Width value must be a floating point number. set to default.")
			cdfgData->W->value = "45u"
			;;return(nil)
		)
		if((tmp < 45u)
		then
			artError("Width value is less than minimum(45u). Set to default.")
			cdfgData->W->value = "45u"
		)
		if((tmp > 1415u )
		then
			artError("Width value is larger than maximum(1415u). Set to maximum.")
			cdfgData->W->value = "1415u"
		)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;L check;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		tmp = evalstring(cdfgData->L->value)
		if((tmp && (typep(tmp)!='flonum))
		then 
			artError("Length value must be a floating point number. set to default.")
			cdfgData->L->value = cdfgData->L->defValue
			;;return(nil)
		)
		if((tmp < 45u)
		then
			artError("Length value is less than minimum(45u). Set to default.")
			cdfgData->L->value = cdfgData->L->defValue
		)
		if((tmp > 1415u )
		then
			artError("Length value is larger than maximum(1415u). Set to maximum.")
			cdfgData->L->value = "1415u"
		)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;Finger Check;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		fingers=evalstring(cdfgData->m->value)
		if((fingers && (typep(fingers)!='fixnum))
		then 
			artError("Finger must be a integer number. set to default.")
			cdfgData->m->value = "1"
			;;return(nil)
		)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;c & effective dimension cal;;;;;;;;;;
		tempw=evalstring(cdfgData->W->value)
		templ=evalstring(cdfgData->L->value)
		tempc=evalstring(cdfgData->cnorm->value)
		fingers=evalstring(cdfgData->m->value)
		cdfgData->cperim->value = sprintf(s "%g" (2*(tempw+templ)*fingers))
		cdfgData->carea->value = sprintf(s "%g" (tempw*templ*fingers))
		cdfgData->c->value = sprintf(s "%g" (tempw*templ*fingers/1p*tempc))		
		return(nil)	
		
	)
)
procedure( Mo_CallBack()
	prog( ()
		con=cdfgData->connectGates->value
		fingers=evalstring(cdfgData->fingers->value)
		tempw=evalstring(cdfgData->wpf->value)
		templ=evalstring(cdfgData->lpf->value)
 		if((con=="Alternate")
		then
			cdfgData->W->value = sprintf(s "%g" (tempw*fingers))
                                                                                cdfgData->L->value = sprintf(s "%g" templ)
		else
			cdfgData->W->value = sprintf(s "%g" tempw)
			cdfgData->L->value = sprintf(s "%g" templ)
		)
		if((con=="Top"||con=="Bottom")
		then
			cdfgData->X->value =strcat("X" cdfgData->fingers->value)
		else
			cdfgData->X->value ="X1"
		)
		return(nil)		
	)
)



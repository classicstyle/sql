select xmltype(gw.c_req).extract('//bank_code/text()').getStringVal() bc,
			xmltype(gw.c_req).extract('//account_id/text()').getStringVal() acc,
			xmltype(gw.c_res).extract('//pay_id/text()').getStringVal() pay,
			to_char(gw.c_date_create, 'DD/MM/YYYY') dt
	     from 	z#table gw
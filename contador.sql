SELECT tm.coMvno, count(tm.nuMsisdn) as CONTADOR, tm.coPlano, tbm.noMvno FROM tb_msisdn tm
LEFT JOIN tb_msisdn_status tms
ON (tm.coMsisdnStatus = tms.coMsisdnStatus)
LEFT JOIN tb_mvno tbm
ON (tm.coMvno = tbm.coMvno)
WHERE noMsisdnStatus = ( 'PORTOUT'
)
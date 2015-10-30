SELECT dbo.fn_GetDayOfWeekMonIs0(DATEADD(SECOND,-21600,calls_cstm.date_logged_c)) as 'Date' FROM calls LEFT JOIN calls_cstm ON calls.id = calls_cstm.id_c LEFT JOIN users users0 ON calls.assigned_user_id = users0.id LEFT JOIN contacts contacts2 ON calls.contact_id = contacts2.id WHERE calls.deleted = 0 AND ((dbo.fn_GetDayOfWeekMonIs0(DATEADD(SECOND,0,calls_cstm.date_logged_c)) IN ('4')) AND DATENAME(YEAR,DATEADD(SECOND,0,calls_cstm.date_logged_c)) = '2013' AND (DATEPART(MONTH,DATEADD(SECOND,0,calls_cstm.date_logged_c)) IN ('10'))) GROUP BY dbo.fn_GetDayOfWeekMonIs0(DATEADD(SECOND,-21600,calls_cstm.date_logged_c)) ORDER BY dbo.fn_GetDayOfWeekMonIs0(DATEADD(SECOND,-21600,calls_cstm.date_logged_c)) ASC
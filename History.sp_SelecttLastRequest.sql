/********************************************************************
  Fecha		|	Nombres Apellidos | Comentarios
 ********************************************************************
  2021-08-25    Monica  Marrugo		Creación
 ********************************************************************/

CREATE PROCEDURE [History].[sp_SelecttLastRequest]
AS
BEGIN
 DECLARE @ErrorMessage NVARCHAR(4000);  
 DECLARE @ErrorSeverity INT;  
 DECLARE @ErrorState INT; 
 DECLARE @IdEvaluacion INT; 

 BEGIN TRY

SELECT TOP 3 [IDRequest]
      ,[IDCity]
      ,[IDCountry]
      ,[CityName]
      ,[CountryName]
      ,[UrlApi]
  FROM [History].[LastRequest]
  ORDER BY IDRequest DESC

END TRY
	BEGIN CATCH
	SELECT
	    @ErrorMessage = ERROR_MESSAGE(),  
        @ErrorSeverity = ERROR_SEVERITY(),  
        @ErrorState = ERROR_STATE();   

	 RAISERROR (
				@ErrorMessage,  
				@ErrorSeverity,   
				@ErrorState  
               );  
	END CATCH


END



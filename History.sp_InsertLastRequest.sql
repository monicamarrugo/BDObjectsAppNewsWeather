/********************************************************************
  Fecha		|	Nombres Apellidos | Comentarios
 ********************************************************************
  2021-08-25    Monica  Marrugo		Creación
 ********************************************************************/

CREATE PROCEDURE [History].[sp_InsertLastRequest]
	@iVch_IDCity NVARCHAR(10),
	@iVch_IDCountry NVARCHAR(10),
	@iVch_CityName NVARCHAR(50),
	@iVch_CountryName NVARCHAR(50),
	@iVch_UrlApi NVARCHAR(MAX)
AS
BEGIN
 DECLARE @ErrorMessage NVARCHAR(4000);  
 DECLARE @ErrorSeverity INT;  
 DECLARE @ErrorState INT; 
 DECLARE @IdEvaluacion INT; 

 BEGIN TRY


		   INSERT INTO [History].[LastRequest]
			   ([IDCity]
			   ,[IDCountry]
			   ,[CityName]
			   ,[CountryName]
			   ,[UrlApi])
			VALUES
			   (@iVch_IDCity
			   ,@iVch_IDCountry
			   ,@iVch_CityName
			   ,@iVch_CountryName
			   ,@iVch_UrlApi)
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
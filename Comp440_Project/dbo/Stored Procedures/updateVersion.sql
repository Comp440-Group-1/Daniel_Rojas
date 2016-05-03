CREATE PROCEDURE [dbo].[updateVersion]
/*
 Procedure that updates the product version. Takes a product title and version id. 
*/
@productTitle varchar(255) = NULL , @version varchar(255) = NULL 

AS

DECLARE @productID int; 

SELECT @productID = id
 FROM [dbo].[product] 
 WHERE title= @productTitle;

	BEGIN
		UPDATE [dbo].[product]
			SET version_id = @version
			WHERE [title] = @productTitle;
	END
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE FUNCTION mostrarmes
(
	@NumR int
)
RETURNS int
AS
BEGIN
	 return MONTH(getdate())

END
GO



select dbo.mostrarmes(1)
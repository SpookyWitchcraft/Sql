USE spookywitchcraft;  
GO  
CREATE PROCEDURE GetTriviaQuestions   

AS   
    SET NOCOUNT ON;  
    select * from [TriviaQuestions]
GO  
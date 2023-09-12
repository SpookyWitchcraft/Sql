USE spookywitchcraft;  
GO  
CREATE PROCEDURE GetTriviaQuestionById   
    @Id int
AS   
    SET NOCOUNT ON;  
    select top 1 * from [TriviaQuestions]
    where [TriviaQuestionId] = @Id
GO  
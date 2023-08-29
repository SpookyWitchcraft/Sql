USE spookywitchcraft;  
GO  
CREATE PROCEDURE InsertTriviaQuestion   
    @Category nvarchar(32),   
    @Question nvarchar(512),
    @Answer nvarchar(512)
AS   
    SET NOCOUNT ON;  
    insert into [TriviaQuestions] (
        [Category],
        [Question],
        [Answer],
        [IsEnabled],
        [CreatedDate],
        [UpdatedDate]
    )
    values (
          @Category
        , @Question
        , @Answer
        , 1
        , GETUTCDATE()
        , GETUTCDATE()
    )
GO  
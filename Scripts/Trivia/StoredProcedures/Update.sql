USE spookywitchcraft;  
GO  
CREATE PROCEDURE UpdateTriviaQuestion   
    @Id int,
    @Category nvarchar(32)=NULL,   
    @Question nvarchar(512)=Null,
    @Answer nvarchar(512)=null,
    @IsEnabled bit=null
AS   
    SET NOCOUNT ON;  
    update [TriviaQuestions] 
    SET
        [Category] = IsNull(@Category, [Category])
        , [Question] = IsNull(@Question, [Question])
        , [Answer] = IsNull(@Answer, [Answer])
        , [IsEnabled] = IsNull(@IsEnabled, [IsEnabled])
        , [UpdatedDate] = GETUTCDATE()
    where [TriviaQuestionId] = @Id
GO  
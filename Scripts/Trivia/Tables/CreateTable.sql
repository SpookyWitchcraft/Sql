CREATE TABLE TriviaQuestions  
([TriviaQuestionId] int NOT NULL IDENTITY(1,1) PRIMARY KEY,  
[Category] varchar(32) NOT NULL,  
[Question] varchar(512) NOT NULL,  
[Answer] varchar(512) NOT NULL,
[IsEnabled] bit NOT NULL,
[CreatedDate] smalldatetime NOT NULL,
[UpdatedDate] smalldatetime NOT NULL
)

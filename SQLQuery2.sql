select COUNT(*)
from Author

select * from Grade

select * from Emotion

Select COUNT (Poem.Id) Poems from Poem

select top 76 Author.Name , Grade.Name , Gender.Name
from Author 
left join Grade on  Grade.id = Author.GradeId
left join Gender on Gender.id = Author.GenderId


select sum(WordCount) 
from Poem 

select top 1 Poem.CharCount , Poem.Title
from Poem 
order by Poem.CharCount


select count(Author.GradeId)
from Author 
left join Grade on Grade.id = Author.GradeId
where GradeId = 3

select count(Author.GradeId)
from Author 
left join Grade on Grade.id = Author.GradeId
where GradeId < 4

select Count(Poem.id) 
from Author
left join Poem on Poem.AuthorId = Author.Id
where Author.GradeId = 4

select Grade.Name, count(Poem.Title)
from Grade 
join Author on Author.GradeId = Grade.Id
join Poem on Poem.AuthorId = Author.Id
group by Grade.Name

select Grade.Name, count(Author.Name)
from Grade 
join Author on Author.GradeId = Grade.Id
group by Grade.Name

Select top 1 max(Poem.WordCount) wordCount, Poem.Title 
from Poem 
Group by Poem.Title 
order by MAX(Poem.WordCount)desc

select top 3 count(*) poemCount,  Author.Name
from Poem
join Author on Author.Id = Poem.AuthorId
Group by Author.Id, Author.Name
order by poemCount desc

Select COUNT(*) as 'sad poems'
from Poem
join PoemEmotion on PoemEmotion.PoemId =Poem.Id
join Emotion on Emotion.Id = PoemEmotion.EmotionId
where Emotion.Id = 3

Select COUNT(*) as 'null poems'
from Poem
left join PoemEmotion on PoemEmotion.PoemId = Poem.Id
where PoemEmotion.Id is null


select distinct top 1 Emotion.Name, COUNT(*) 
from Poem
join PoemEmotion on PoemEmotion.PoemId = Poem.Id
join Emotion on Emotion.Id = PoemEmotion.EmotionId
group by Emotion.Name 

select COUNT(*) JoyPoem, Emotion.Name, Grade 
from Poem 
join PoemEmotion on PoemEmotion.PoemId = Poem.Id
join Emotion on Emotion.Id = PoemEmotion.EmotionId
join Grade on Grade.Id = PoemId 
group by Emotion.Name 



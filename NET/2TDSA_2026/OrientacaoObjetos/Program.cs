// See https://aka.ms/new-console-template for more information

using OrientacaoObjetos;

Console.WriteLine("Bem-vindo ao sistema de reviews");

var newTitle = new Game
{
    Name = "Pokemon Pokopia",
    Plataform = GamePlataform.NintendoSwitch2
};

newTitle.Reviews.Add(new Review() { Rating = 95, Comment = "Great Game!!!", Owner = "IGN" });
newTitle.Reviews.Add(new Review() { Rating = 100, Comment = "Best Pokemon Game Ever!!!", Owner = "GAMINGBible" });
newTitle.Reviews.Add(new Review() { Rating = 90, Comment = "Ok", Owner = "Omelete" });


Console.WriteLine(newTitle);

var newTitle2 = new Movie
{
    Name = "The Batman",
    //Duration = 120
};

Console.WriteLine(newTitle2);
namespace OrientacaoObjetos;

public sealed class Game : Title
{
    public GamePlataform Plataform { get; set; }

    public override string ToString() =>
        $"Game: {Name} - MetaScore: {(MetaScore == null ? "tbd" : MetaScore)} - Reviews: {Reviews.Count} - Plataform: {Plataform}";
}
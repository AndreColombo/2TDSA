namespace OrientacaoObjetos;

public sealed class Movie : Title
{
    public int Duration { get; set; }

    public override string ToString() =>
        $"Movie: {Name} - MetaScore: {(MetaScore == null ? "tbd" : MetaScore)} - Reviews: {Reviews.Count} - Duration: {Duration} min";
}
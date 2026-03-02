// namespace é a organização de classes, interfaces, etc.. de um projeto
// é como se fosse o package do java
namespace OrientacaoObjetos;

public abstract class Title
{
    public required string? Name
    {
        get;
        init => field = string.IsNullOrEmpty(value) ? "Jogo sem nome" : value;
    }

    public List<Review> Reviews { get; } = [];

    protected int? MetaScore => Reviews.Count == 0 ? null : (int)Reviews.Average(r => r.Rating);

    public override string ToString() =>
        $"Title: {Name} - MetaScore: {(MetaScore == null ? "tbd" : MetaScore)} - Reviews: {Reviews.Count}";
}
namespace OrientacaoObjetos;

public class Review
{
    public int Rating { get; set; }
    public string? Owner { get; set; }
    public string? Comment { get; set; }
    public DateTime Date { get; } = DateTime.Now;
}
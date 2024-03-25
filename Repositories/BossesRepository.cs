using System.ComponentModel.Design;

namespace firstdaytest.Repositories;

public class BossesRepository
{

    private readonly IDbConnection _db;
    public BossesRepository(IDbConnection db)
    {
        _db = db;
    }
}

public List<Boss> GetBosses()
{
    string sql = "SELECT * FROM bosses";
    List<Boss> bosses = _db.Query<Boss>(sql).ToList();
    return bosses;
}
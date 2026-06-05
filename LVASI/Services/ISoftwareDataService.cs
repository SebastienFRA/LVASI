using LVASI.Models;

namespace LVASI.Services;

public interface ISoftwareDataService
{
    List<SoftwareCategory> LoadCategories();
}

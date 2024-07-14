using DataTransferObject.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicsLayer.District
{
    public interface IDistrictBL : IGenericRepository<DataTransferObject.Model.District>
    {
        public Task<List<DTODistrictResponse>?> GetDistrictByStateId(byte StateId);
    }
}

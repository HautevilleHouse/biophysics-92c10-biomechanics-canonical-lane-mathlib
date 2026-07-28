import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.Biophysics92c10BiomechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse
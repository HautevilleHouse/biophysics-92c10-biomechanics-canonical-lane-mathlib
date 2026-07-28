import HautevilleHouse.Biophysics92c10BiomechanicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse
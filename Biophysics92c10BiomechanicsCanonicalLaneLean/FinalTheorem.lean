import HautevilleHouse.Biophysics92c10BiomechanicsCanonicalLaneLean.GateLemmas
import HautevilleHouse.Biophysics92c10BiomechanicsCanonicalLaneLean.MuscleContractionModel

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

def ConstrainedBiomechanicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biomechanics_endgame (A : AdmissibleClass) :
    ConstrainedBiomechanicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse
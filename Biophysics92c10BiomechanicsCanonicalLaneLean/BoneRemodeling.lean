import canonicalLaneMathlib.AdmissibleClass
import Biophysics92c10Biomechanics.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10Biomechanics

structure BoneRemodelingPackage where
  boneDensityDynamics : Prop
  mechanicalLoading : Prop
  cellularActivity : Prop
  adaptationLaw : Prop

structure BoneRemodelingEvidence (B : BoneRemodelingPackage) where
  boneDensityDynamicsClosed : B.boneDensityDynamics
  mechanicalLoadingClosed : B.mechanicalLoading
  cellularActivityClosed : B.cellularActivity
  adaptationLawClosed : B.adaptationLaw

def BoneRemodelingClosed (B : BoneRemodelingPackage) : Prop :=
  B.boneDensityDynamics ∧ B.mechanicalLoading ∧ B.cellularActivity ∧ B.adaptationLaw

theorem bone_remodeling_closed_from_evidence (B : BoneRemodelingPackage)
    (E : BoneRemodelingEvidence B) : BoneRemodelingClosed B := by
  exact And.intro E.boneDensityDynamicsClosed
    (And.intro E.mechanicalLoadingClosed
      (And.intro E.cellularActivityClosed E.adaptationLawClosed))

end Biophysics92c10Biomechanics
end HautevilleHouse
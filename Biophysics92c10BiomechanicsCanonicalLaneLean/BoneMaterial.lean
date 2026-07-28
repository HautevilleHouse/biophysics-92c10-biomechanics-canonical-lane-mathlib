import Biophysics92c10BiomechanicsCanonicalLaneLean.TissueConstitutiveModel

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure BoneMaterialPackage {T : TissueConstitutivePackage} where
  corticalBoneProperties : Prop
  trabecularBoneProperties : Prop
  anisotropy : Prop
  remodelingDynamics : Prop

structure BoneMaterialEvidence {T : TissueConstitutivePackage} (B : BoneMaterialPackage T) where
  corticalBonePropertiesClosed : B.corticalBoneProperties
  trabecularBonePropertiesClosed : B.trabecularBoneProperties
  anisotropyClosed : B.anisotropy
  remodelingDynamicsClosed : B.remodelingDynamics

def BoneMaterialClosed {T : TissueConstitutivePackage} (B : BoneMaterialPackage T) : Prop :=
  B.corticalBoneProperties ∧ B.trabecularBoneProperties ∧ B.anisotropy ∧ B.remodelingDynamics

theorem bone_material_closed_from_evidence {T : TissueConstitutivePackage} (B : BoneMaterialPackage T) (E : BoneMaterialEvidence B) : BoneMaterialClosed B := by
  exact And.intro E.corticalBonePropertiesClosed (And.intro E.trabecularBonePropertiesClosed (And.intro E.anisotropyClosed E.remodelingDynamicsClosed))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse
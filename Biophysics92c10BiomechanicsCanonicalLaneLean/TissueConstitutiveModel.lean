import Biophysics92c10BiomechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure TissueConstitutivePackage where
  materialSymmetry : Prop
  strainEnergyFunction : Type u
  stressStrainRelation : Prop
  hyperelasticity : Prop
  viscoelasticity : Prop

structure TissueConstitutiveEvidence (T : TissueConstitutivePackage) where
  materialSymmetryClosed : T.materialSymmetry
  stressStrainRelationClosed : T.stressStrainRelation
  hyperelasticityClosed : T.hyperelasticity
  viscoelasticityClosed : T.viscoelasticity

def TissueConstitutiveClosed (T : TissueConstitutivePackage) : Prop :=
  T.materialSymmetry ∧ T.stressStrainRelation ∧ T.hyperelasticity ∧ T.viscoelasticity

theorem tissue_constitutive_closed_from_evidence (T : TissueConstitutivePackage) (E : TissueConstitutiveEvidence T) : TissueConstitutiveClosed T := by
  exact And.intro E.materialSymmetryClosed (And.intro E.stressStrainRelationClosed (And.intro E.hyperelasticityClosed E.viscoelasticityClosed))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure ConstitutiveModelPackage where
  strainEnergyDensity : Type
  stressStrainRelation : Prop
  activeContraction : Prop
  viscoelasticity : Prop
  damageModel : Prop

structure ConstitutiveModelEvidence (C : ConstitutiveModelPackage) where
  strainEnergyDensityDefined : Prop
  stressStrainRelationClosed : C.stressStrainRelation
  activeContractionClosed : C.activeContraction
  viscoelasticityClosed : C.viscoelasticity
  damageModelClosed : C.damageModel

def ConstitutiveModelClosed (C : ConstitutiveModelPackage) : Prop :=
  C.stressStrainRelation ∧ C.activeContraction ∧
  C.viscoelasticity ∧ C.damageModel

theorem constitutive_model_closed_from_evidence (C : ConstitutiveModelPackage)
    (E : ConstitutiveModelEvidence C) : ConstitutiveModelClosed C := by
  exact And.intro E.stressStrainRelationClosed
    (And.intro E.activeContractionClosed
      (And.intro E.viscoelasticityClosed E.damageModelClosed))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse
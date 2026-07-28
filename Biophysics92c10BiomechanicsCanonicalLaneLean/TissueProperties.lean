import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure TissuePropertiesPackage where
  elasticModulus : Prop
  viscoelasticRelaxation : Prop
  anisotropy : Prop
  failureCriterion : Prop

structure TissuePropertiesEvidence (T : TissuePropertiesPackage) where
  elasticModulusClosed : T.elasticModulus
  viscoelasticRelaxationClosed : T.viscoelasticRelaxation
  anisotropyClosed : T.anisotropy
  failureCriterionClosed : T.failureCriterion

def TissuePropertiesClosed (T : TissuePropertiesPackage) : Prop :=
  T.elasticModulus ∧ T.viscoelasticRelaxation ∧ T.anisotropy ∧ T.failureCriterion

theorem tissue_properties_closed_from_evidence (T : TissuePropertiesPackage)
    (E : TissuePropertiesEvidence T) : TissuePropertiesClosed T := by
  exact And.intro E.elasticModulusClosed
    (And.intro E.viscoelasticRelaxationClosed
      (And.intro E.anisotropyClosed E.failureCriterionClosed))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse
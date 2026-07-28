import Biophysics92c10BiomechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure TissueMechanicsPackage where
  tissueType : Type u
  deformationGradient : Type v
  stressTensor : Type w
  strainTensor : Type x
  hyperelasticPotential : Prop
  viscoelasticRelaxation : Prop
  anisotropyOrientation : Prop
  incompressibility : Prop

structure TissueMechanicsEvidence (P : TissueMechanicsPackage) where
  hyperelasticPotentialClosed : P.hyperelasticPotential
  viscoelasticRelaxationClosed : P.viscoelasticRelaxation
  anisotropyOrientationClosed : P.anisotropyOrientation
  incompressibilityClosed : P.incompressibility

def TissueMechanicsClosed (P : TissueMechanicsPackage) : Prop :=
  P.hyperelasticPotential ∧ P.viscoelasticRelaxation ∧
  P.anisotropyOrientation ∧ P.incompressibility

theorem tissue_mechanics_closed_from_evidence (P : TissueMechanicsPackage)
    (E : TissueMechanicsEvidence P) : TissueMechanicsClosed P := by
  exact And.intro E.hyperelasticPotentialClosed
    (And.intro E.viscoelasticRelaxationClosed
      (And.intro E.anisotropyOrientationClosed E.incompressibilityClosed))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse

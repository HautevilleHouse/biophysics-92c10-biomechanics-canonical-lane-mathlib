import Biophysics92c10BiomechanicsCanonicalLaneLean.FiniteElementSimulation

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure ExperimentalValidationPackage {P : TissueMechanicsPackage}
    {C : ConstitutiveModelPackage P} {S : FiniteElementSimulationPackage C} where
  tissueSpecimenData : Prop
  measurementProtocol : Prop
  modelPredictionComparison : Prop
  statisticalAgreement : Prop
  parameterCalibration : Prop

structure ExperimentalValidationEvidence {P : TissueMechanicsPackage}
    {C : ConstitutiveModelPackage P} {S : FiniteElementSimulationPackage C}
    (V : ExperimentalValidationPackage S) where
  tissueSpecimenDataClosed : V.tissueSpecimenData
  measurementProtocolClosed : V.measurementProtocol
  modelPredictionComparisonClosed : V.modelPredictionComparison
  statisticalAgreementClosed : V.statisticalAgreement
  parameterCalibrationClosed : V.parameterCalibration

def ExperimentalValidationClosed {P : TissueMechanicsPackage}
    {C : ConstitutiveModelPackage P} {S : FiniteElementSimulationPackage C}
    (V : ExperimentalValidationPackage S) : Prop :=
  V.tissueSpecimenData ∧ V.measurementProtocol ∧ V.modelPredictionComparison ∧
  V.statisticalAgreement ∧ V.parameterCalibration

theorem experimental_validation_closed_from_evidence
    {P : TissueMechanicsPackage} {C : ConstitutiveModelPackage P}
    {S : FiniteElementSimulationPackage C} (V : ExperimentalValidationPackage S)
    (E : ExperimentalValidationEvidence V) : ExperimentalValidationClosed V := by
  exact And.intro E.tissueSpecimenDataClosed
    (And.intro E.measurementProtocolClosed
      (And.intro E.modelPredictionComparisonClosed
        (And.intro E.statisticalAgreementClosed E.parameterCalibrationClosed)))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse

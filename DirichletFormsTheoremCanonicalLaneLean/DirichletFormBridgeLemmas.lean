import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirichletFormsTheoremCanonicalLaneLean.DirichletFormLayer

namespace HautevilleHouse
namespace DirichletFormsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | { object := _, substrate := _, localWitness := _, bridgeEvidence := _, operatorModelChecked := _, operatorModelWitness := _, spectralPersistenceBridgeChecked := _, spectralPersistenceBridgeWitness := _, sourceBoundaryLedgerChecked := _, sourceBoundaryLedgerWitness := _, classicalRemainderCarried := _, sourceKeyChecked := _, theoremObjectChecked := _ } =>
    DirichletFormClosed primitiveDirichletForm ∧ A.object.sourceKeyChecked ∧ A.object.theoremObjectChecked

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have hform : DirichletFormClosed primitiveDirichletForm := dirichlet_form_primitive_closed
  exact And.intro hform (And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked)

end DirichletFormsTheoremCanonicalLaneLean
end HautevilleHouse
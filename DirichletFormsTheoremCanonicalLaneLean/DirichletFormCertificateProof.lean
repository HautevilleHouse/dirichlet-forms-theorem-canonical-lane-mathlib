import canonicalLaneMathlib.AdmissibleClass
import DirichletFormsTheoremCanonicalLaneLean.ResolventSemigroupBridge
import DirichletFormsTheoremCanonicalLaneLean.DirichletFormFinalTheorem

namespace HautevilleHouse
namespace DirichletFormsTheoremCanonicalLaneLean

structure DirichletFormCertificateProof where
  operatorLayerClosed : DirichletFormOperatorLayerClosed dirichletFormOperatorCertificate
  resolventSemigroupClosed : ResolventSemigroupBridgeClosed resolventSemigroupCertificate
  capacityLayerClosed : CapacityResolventLayerClosed capacityResolventCertificate
  finalTheoremClosed : forall (A : AdmissibleClass), ConstrainedDirichletFormClosure A

def dirichletFormCertificateProof : DirichletFormCertificateProof := {
  operatorLayerClosed := dirichlet_form_operator_layer_closed_checked,
  resolventSemigroupClosed := resolvent_semigroup_bridge_closed_checked,
  capacityLayerClosed := capacity_resolvent_layer_closed_checked,
  finalTheoremClosed := constrained_dirichlet_form_endgame
}

theorem dirichlet_form_certificate_proof_checked :
    DirichletFormCertificateProof := by
  exact dirichletFormCertificateProof

end DirichletFormsTheoremCanonicalLaneLean
end HautevilleHouse
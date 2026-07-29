import DirichletFormsTheoremCanonicalLaneLean.TheoremStatement
import DirichletFormsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DirichletFormsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirichletFormsTheoremCanonicalLaneLean
end HautevilleHouse
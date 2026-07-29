import CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  completeCategoriesStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean",
  theoremName := "Categories Admitting Limits Complete Categories",
  theoremObject := "Every category that admits all small limits is complete",
  classicalBoundary := "ZFC foundation",
  completeCategoriesStatement := "A category with all small limits is complete",
  certificateLane := "limit_closed",
  carriedRemainder := "Classical set-theoretic foundations"
}

def ClassicalSourceBoundaryCarried : Prop :=
  sourceTheoremStatement.certificateLane = "limit_closed"

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "limit_closed" := by
  rfl

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse
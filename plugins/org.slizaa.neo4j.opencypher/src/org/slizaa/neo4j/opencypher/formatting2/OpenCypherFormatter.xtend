/*
 * generated by Xtext 2.10.0
 */
package org.slizaa.neo4j.opencypher.formatting2

import com.google.inject.Inject
import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.IFormattableDocument
import org.slizaa.neo4j.opencypher.openCypher.AllOptions
import org.slizaa.neo4j.opencypher.openCypher.Cypher
import org.slizaa.neo4j.opencypher.openCypher.CypherOption
import org.slizaa.neo4j.opencypher.services.OpenCypherGrammarAccess

class OpenCypherFormatter extends AbstractFormatter2 {

	@Inject extension OpenCypherGrammarAccess

	def dispatch void format(Cypher cypher, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		cypher.queryOptions.format;
		cypher.getStatement.format;
	}

	def dispatch void format(AllOptions allOptions, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (CypherOption cypherOption : allOptions.getCypherOption()) {
			cypherOption.format;
		}
	}
	
	// TODO: implement for CypherOption, RegularQuery, BulkImportQuery, SingleQuery, LoadCSVQuery, Union, CreateIndex, DropUniqueConstraint, DropNodePropertyExistenceConstraint, DropRelationshipPropertyExistenceConstraint, DropIndex, UniqueConstraintSyntax, NodePropertyExistenceConstraintSyntax, RelationshipPropertyExistenceConstraintSyntax, RelationshipPatternSyntax, LoadCSV, Match, Unwind, Merge, MergeAction, Create, SetClause, SetItem, Delete, Remove, RemoveItem, Foreach, With, Return, ReturnItems, ReturnItem, Order, Skip, Limit, SortItem, IndexHint, JoinHint, ScanHint, Start, StartPoint, IdentifiedIndexLookup, IndexQuery, IdLookup, Where, Pattern, PatternPart, ShortestPath, AllShortestPath, PatternElement, NodePattern, PatternElementChain, RelationshipPattern, RelationshipDetail, NodeLabels, ExpressionOr, ExpressionXor, ExpressionAnd, Expression, ExpressionComparison, ExpressionPlusMinus, ExpressionMulDiv, ExpressionPower, Index, RegExpMatching, InCollection, StartsWith, EndsWith, Contains, ExpressionNodeLabelsAndPropertyLookup, CaseExpression, ExpressionList, Filter, All, Any, None, Single, Reduce, ParenthesizedExpression, RelationshipsPattern, FilterExpression, IdInColl, FunctionInvocation, ListComprehension, CaseAlternatives, MapLiteral, MapLiteralEntry

}
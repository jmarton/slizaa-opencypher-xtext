/*
 * generated by Xtext 2.10.0
 */
package org.slizaa.neo4j.opencypher.ui.labeling

import com.google.inject.Inject
import org.eclipse.emf.edit.ui.provider.AdapterFactoryLabelProvider
import org.eclipse.xtext.serializer.ISerializer
import org.eclipse.xtext.ui.label.DefaultEObjectLabelProvider
import org.slizaa.neo4j.opencypher.openCypher.Cypher
import org.slizaa.neo4j.opencypher.openCypher.Match
import org.slizaa.neo4j.opencypher.openCypher.Pattern
import org.slizaa.neo4j.opencypher.openCypher.PatternElement
import org.slizaa.neo4j.opencypher.openCypher.Return
import org.slizaa.neo4j.opencypher.openCypher.Where
import org.slizaa.neo4j.opencypher.openCypher.With

/**
 * Provides labels for EObjects.
 * 
 * See https://www.eclipse.org/Xtext/documentation/304_ide_concepts.html#label-provider
 */
class OpenCypherLabelProvider extends DefaultEObjectLabelProvider {

	@javax.inject.Inject
	private ISerializer _serializer;

	@Inject
	new(AdapterFactoryLabelProvider delegate) {
		super(delegate);
	}

	def text(Cypher cypher) {
		'Cypher'
	}

	def text(Match match) {
		'Match'
	}

	def text(Where match) {
		'Where'
	}

	def text(With match) {
		'With'
	}

	def text(Return match) {
		'Return'
	}

//	def text(Pattern pattern) {
////		_serializer.serialize(pattern).trim;
//	}
//	
//	def text(PatternElement pattern) {
////		_serializer.serialize(pattern).trim;
//	}
}

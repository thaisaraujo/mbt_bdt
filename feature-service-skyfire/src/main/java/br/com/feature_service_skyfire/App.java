package br.com.feature_service_skyfire;

import java.io.IOException;
import java.nio.file.Paths;

import org.mockito.asm.util.ASMifierClassVisitor;

import com.mdsol.skyfire.CucumberTestGenerator;
import com.mdsol.skyfire.TestCoverageCriteria;

import coverage.graph.InvalidGraphException;
import coverage.web.InvalidInputException;

/**
 * Hello world!
 *
 */
public class App {
    public static void main( String[] args ) {
    	
    	//String path = "./use/dataTypes/VendingMachineFSM.uml";
    	String path = "./use/dataTypesExemplos/VendingMachineFSM.uml";
    	
    	System.out.println("Hello, World!"); 
    	    	
    	try {
    		CucumberTestGenerator.generateCucumberScenario(
    				Paths.get(path), 
    				TestCoverageCriteria.NODECOVERAGE, 
    				"CriarProtudoComFeature", 
    				Paths.get("CriarProdutoComFeatureNODE")
    		);
    	} catch (IOException | InvalidInputException | InvalidGraphException e) {
        	System.out.println("Falha\n"); 
    	}
    	
    	try {
    		CucumberTestGenerator.generateCucumberScenario(
    				Paths.get(path), 
    				TestCoverageCriteria.EDGECOVERAGE, 
    				"CriarProtudoComFeature", 
    				Paths.get("CriarProdutoComFeatureEDGE")
    		);
    	} catch (IOException | InvalidInputException | InvalidGraphException e) {
        	System.out.println("Falha\n"); 
    	}
    	
    	try {
    		CucumberTestGenerator.generateCucumberScenario(
    				Paths.get(path), 
    				TestCoverageCriteria.EDGEPAIRCOVERAGE, 
    				"CriarProtudoComFeature", 
    				Paths.get("CriarProdutoComFeatureEDGEPAIR")
    		);
    	} catch (IOException | InvalidInputException | InvalidGraphException e) {
        	System.out.println("Falha\n"); 
    	}
    	
    	try {
    		CucumberTestGenerator.generateCucumberScenario(
    				Paths.get(path), 
    				TestCoverageCriteria.PRIMEPATHCOVERAGE, 
    				"CriarProtudoComFeature", 
    				Paths.get("CriarProdutoComFeaturePRIMEPATH")
    		);
    	} catch (IOException | InvalidInputException | InvalidGraphException e) {
        	System.out.println("Falha\n"); 
    	}
		
//    	try {
//    			CucumberTestGenerator.generateCucumberScenario (
//    					Paths.get (path),
//    					TestCoverageCriteria.NODECOVERAGE,
//    					"Elevator",
//    					Paths.get ("ElevatorNode.feature"));
//    	} catch (IOException e) {
//    		// TODO Auto-generated catch block
//    		e.printStackTrace();
//    	}
//    	
//    	try {
//    			CucumberTestGenerator.generateCucumberScenario (
//    					Paths.get (path),
//    					TestCoverageCriteria.EDGECOVERAGE,
//    					"Elevator",
//    					Paths.get ("ElevatorEdge.feature"));
//    	} catch (IOException e) {
//    		// TODO Auto-generated catch block
//    		e.printStackTrace();
//    	}
//    	
//    	try {
//    			CucumberTestGenerator.generateCucumberScenario (
//    					Paths.get (path),
//    					TestCoverageCriteria.EDGEPAIRCOVERAGE,
//    					"Elevator",
//    					Paths.get ("ElevatorEdgePair.feature"));
//    	} catch (IOException e) {
//    		// TODO Auto-generated catch block
//    		e.printStackTrace();
//    	}
//    	
//    	try {
//    			CucumberTestGenerator.generateCucumberScenario (
//    					Paths.get (path),
//    					TestCoverageCriteria.PRIMEPATHCOVERAGE,
//    					"Elevator",
//    					Paths.get ("ElevatorPrimePath.feature"));
//    	} catch (IOException e) {
//    		// TODO Auto-generated catch block
//    		e.printStackTrace();
//    	}
    }
}

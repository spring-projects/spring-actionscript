/*
 * Copyright 2007-2010 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.springextensions.actionscript.core.mvc {

	import flexunit.framework.TestCase;

	import org.springextensions.actionscript.ioc.factory.support.DefaultListableObjectFactory;

	public class MVCControllerObjectFactoryPostProcessorTest extends TestCase {

		public function MVCControllerObjectFactoryPostProcessorTest(methodName:String = null) {
			super(methodName);
		}

		public function testAddMVControllerInstance():void {
			var factory:DefaultListableObjectFactory = new DefaultListableObjectFactory();
			var factoryProc:MVCControllerObjectFactoryPostProcessor = new MVCControllerObjectFactoryPostProcessor();
			var controller:IController = factoryProc.addMVControllerInstance(factory);
			assertEquals(1, factory.explicitSingletonNames.length);
		}

	}
}
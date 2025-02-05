/*
 * Copyright (c) 2007, Sun Microsystems, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *  * Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the distribution.
 *  * Neither the name of Sun Microsystems, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
 * TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
/*
 * Generated by JavaFX Production Suite NetBeans plugin.
 * WeatherGfxUI.fx
 *
 * Created on Tue Nov 04 12:01:01 PST 2008
 */
package weatherfx;

import java.lang.Object;
import java.lang.System;
import java.lang.RuntimeException;
import javafx.scene.Node;
import javafx.scene.Group;
import javafx.scene.text.Text;
import javafx.fxd.UiStub;

public class WeatherGfxUI extends UiStub {
	
	override public var url = "{__DIR__}WeatherGfx.fxz";

    public var background: Node;
	public var cityText: Text;
	public var currentTempBlock: Node;
	public var currentTempText: Text;
	public var highsTriangle: Node;
    public var loadingScreen: Node;
	public var lowsTriangle: Node;
	public var todayButton: Node;
    public var todayButtonEdge: Node;
	public var todaysHighsText: Text;
	public var todaysLowsText: Text;
	public var tomorrowButton: Node;
    public var tomorrowButtonEdge: Node;
	public var tomorrowHighsText: Text;
	public var tomorrowLowsText: Text;
    public var weatherConditionGroup: Group;
	public var windDirectionBlock: Node;
	public var windText: Text;
	
	override protected function update() {
		lastNodeId = null;
		 try {
            background=getNode("background");
			cityText=getNode("cityText") as Text;
			currentTempBlock=getNode("currentTempBlock");
			currentTempText=getNode("currentTempText") as Text;
			highsTriangle=getNode("highsTriangle");
			lowsTriangle=getNode("lowsTriangle");
            loadingScreen=getNode("loadingScreen");
			todayButton=getNode("todayButton");
            todayButtonEdge=getNode("todayButtonEdge");
			todaysHighsText=getNode("todaysHighsText") as Text;
			todaysLowsText=getNode("todaysLowsText") as Text;
			tomorrowButton=getNode("tomorrowButton");
            tomorrowButtonEdge=getNode("tomorrowButtonEdge");
			tomorrowHighsText=getNode("tomorrowHighsText") as Text;
			tomorrowLowsText=getNode("tomorrowLowsText") as Text;
            weatherConditionGroup=getGroup("weatherConditionGroup");
			windDirectionBlock=getNode("windDirectionBlock");
			windText=getNode("windText") as Text;
		} catch( e:java.lang.Exception) {
			System.err.println("Update of the  attribute '{lastNodeId}' failed with: {e}");
			throw e;
		}
	}
    
}


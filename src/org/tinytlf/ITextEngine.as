/*
 * Copyright (c) 2010 the original author or authors
 *
 * Permission is hereby granted to use, modify, and distribute this file
 * in accordance with the terms of the license agreement accompanying it.
 */
package org.tinytlf
{
    import flash.display.Stage;
    import flash.geom.Point;
    import flash.text.engine.TextBlock;
    
    import org.tinytlf.decor.ITextDecor;
    import org.tinytlf.interaction.ITextInteractor;
    import org.tinytlf.layout.ITextLayout;
    import org.tinytlf.layout.factory.ILayoutModelFactory;
    import org.tinytlf.styles.ITextStyler;
    
    public interface ITextEngine
    {
        function get decor():ITextDecor;
        function set decor(textDecor:ITextDecor):void;
        
        function get interactor():ITextInteractor;
        function set interactor(textInteractor:ITextInteractor):void;
        
        function get layout():ITextLayout;
        function set layout(textlayout:ITextLayout):void;
        
        function set stage(theStage:Stage):void;
        
        function get styler():ITextStyler;
        function set styler(textStyler:ITextStyler):void;
        
        function getBlockPosition(block:TextBlock):int;
        function getBlockSize(block:TextBlock):int;
        
        function get caretIndex():int;
        function set caretIndex(index:int):void;
        
        function get selection():Point;
        /**
        * Draws a selection decoration around text.
        */
        function select(startIndex:Number = NaN, endIndex:Number = NaN):void;
        
        function pointToIndex(point:Point):int;
        
        function prerender(...args):void;
        
        function invalidate():void;
        function invalidateLines():void;
        function invalidateDecorations():void;
        
        function render():void;
        function renderLines():void;
        function renderDecorations():void;
    }
}


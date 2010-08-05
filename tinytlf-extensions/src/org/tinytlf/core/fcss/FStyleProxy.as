/*
 * Copyright (c) 2010 the original author or authors
 *
 * Permission is hereby granted to use, modify, and distribute this file
 * in accordance with the terms of the license agreement accompanying it.
 */
package org.tinytlf.core.fcss
{
    import com.flashartofwar.fcss.stylesheets.FStyleSheet;
    
    import org.tinytlf.core.StyleAwareActor;
    
    public class FStyleProxy extends StyleAwareActor
    {
        public function FStyleProxy(styleObject:Object=null)
        {
            super(styleObject);
        }
        
        public var sheet:FStyleSheet;
        
        override public function set style(value:Object):void
        {
            if(value is FStyleSheet)
            {
                sheet = FStyleSheet(value);
                return;
            }
            
            super.style = value;
        }
        
        override public function getStyle(styleProp:String):*
        {
            if(styleProp in styles)
                return styles[styleProp];
            else if(sheet && styleProp in sheet)
                return sheet.getStyle(styleProp);
        }
    }
}


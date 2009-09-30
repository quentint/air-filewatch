package  {
	import spark.components.Button;
	import spark.primitives.BitmapImage;
	
	public class IconButton extends Button {
		//--------------------------------------------------------------------------
		//
		//    Constructor
		//
		//--------------------------------------------------------------------------
		
		public function IconButton() {
			super();
		}
		
		//--------------------------------------------------------------------------
		//
		//    Properties
		//
		//--------------------------------------------------------------------------
		
		//----------------------------------
		//  icon
		//----------------------------------
		
		/**
		 *  @private
		 *  Internal storage for the icon property.
		 */
		private var _icon:Class;
		[Bindable]
		public function get icon():Class {
			return _icon;
		}
		/**
		 *  @private
		 */
		public function set icon(val:Class):void {
			_icon = val;
			if (iconElement != null) iconElement.source = _icon;
		}
		//
		[SkinPart(required="false")]
		public var iconElement:BitmapImage;
		//
		override protected function partAdded(partName:String, instance:Object):void {
			super.partAdded(partName, instance);
			if (icon !== null && instance == iconElement) iconElement.source = icon;
		}
	}
}
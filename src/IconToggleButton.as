package  {
	import spark.components.ToggleButton;
	import spark.primitives.BitmapImage;
	//
	public class IconToggleButton extends ToggleButton {
		private var _icon:Class;
		[Bindable]
		public function get icon():Class {
			return _icon;
		}
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
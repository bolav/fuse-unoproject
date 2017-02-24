using Uno.UX;
using Fuse;
using Fuse.Scripting;
namespace Bolav {

	[UXGlobalModule]
	public class UnoProject : NativeModule 
	{
		static string version_no = @(Project.Version);
		static string title      = @(Project.Title);
		static string publisher  = @(Project.Publisher);

		static readonly UnoProject _instance;
		public UnoProject () {
			if(_instance != null) return;
			Resource.SetGlobalKey(_instance = this, "Bolav/UnoProject");
			AddMember(new NativeProperty<string, string>("version", version_no));
			AddMember(new NativeProperty<string, string>("title",   title));
			AddMember(new NativeProperty<string, string>("publisher", publisher));
		}

	}

}

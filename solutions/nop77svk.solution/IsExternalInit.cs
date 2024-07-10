#pragma warning disable SA1502
// note: This somehow adds support for records to legacy .NET
// ref: https://stackoverflow.com/a/64749403/3706181
#if !NET5_0_OR_GREATER
namespace System.Runtime.CompilerServices
{
    internal static class IsExternalInit { }
}
#endif

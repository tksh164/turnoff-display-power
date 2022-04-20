$HWND_BROADCAST = 0xffff
$WM_SYSCOMMAND = 0x0112
$SC_MONITORPOWER = 0xf170
$DISPLAY_SHUT_OFF = 2
$nativeApi = Add-Type '[DllImport("user32.dll")] public static extern int SendMessage(int hWnd, int hMsg, int wParam, int lParam);' -Name 'NativeApi' -PassThru

$nativeApi::SendMessage($HWND_BROADCAST, $WM_SYSCOMMAND, $SC_MONITORPOWER, $DISPLAY_SHUT_OFF)

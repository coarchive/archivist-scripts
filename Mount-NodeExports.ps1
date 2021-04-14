. .\Receive-NodeExports.ps1
. .\Invoke-YoutubeDL.ps1

function Mount-NodeExports {
   param ([string] $js_file)
   foreach ($config in $(Receive-NodeExports $js_file)) {
      Invoke-YoutubeDL $config
   }
}
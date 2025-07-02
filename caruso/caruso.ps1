Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Text = "Caruso Assistant"
$form.Size = New-Object System.Drawing.Size(450,250)
$form.StartPosition = "CenterScreen"

# PictureBox for the image
$picture = New-Object System.Windows.Forms.PictureBox
$picture.Image = [System.Drawing.Image]::FromFile("C:\Users\M304user\Desktop\rei\cc22\caruso\caruso.png")
$picture.SizeMode = 'StretchImage'
$picture.Size = New-Object System.Drawing.Size(150,150)
$picture.Location = New-Object System.Drawing.Point(10,10)
$form.Controls.Add($picture)

# Label for the message
$label = New-Object System.Windows.Forms.Label
$label.Text = "Welcome Back`nBonjon Delos Santos Belwigan`n`n`n`"close to continue`""
$label.AutoSize = $true
$label.Location = New-Object System.Drawing.Point(170, 60)
$label.Font = New-Object System.Drawing.Font("Arial",12,[System.Drawing.FontStyle]::Bold)
$form.Controls.Add($label)

# Show the form
$form.Topmost = $true
$form.Add_Shown({$form.Activate()})
[void]$form.ShowDialog()
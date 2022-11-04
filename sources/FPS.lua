-- Gui to Lua
-- Version: 3.2

-- Instances:

local FPS = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

--Properties:

FPS.Name = "FPS"
FPS.Parent = game.CoreGui

Frame.Parent = FPS
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(0.200000003, 0, 0.0500000007, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(-0.121261112, 0, 18.8963203, 0)
TextLabel.Size = UDim2.new(0.63621664, 0, 0.632107317, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "FPS: 60"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 36.000
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

-- Scripts:

local function OCGGZ_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local RunService = game:GetService("RunService")
	local LoopCount = 5
	local Count = 0
	local Last = tick()
	local FPS = 0
	 
	RunService.Stepped:connect(function() -- Experiment with Stepped, Heartbeat, or RenderStepped
		FPS = ("FPS: "..1/(tick()-Last))
		Last = tick()
	end)
	
	while wait(1) do
		script.Parent.Text = string.sub(FPS, 1, 8)
	end
	
end
coroutine.wrap(OCGGZ_fake_script)()

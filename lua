-- 로컬 스크립트

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local meleeEvent = ReplicatedStorage:WaitForChild("meleeEvent")  -- meleeEvent 이벤트
local UserInputService = game:GetService("UserInputService")  -- 사용자 입력 서비스

-- F 키를 눌렀을 때 이벤트 발생
local function onFKeyPressed(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.F then
        local damage = 100  -- 데미지 값을 100으로 설정
        meleeEvent:FireServer(damage)  -- 서버로 데미지 값 전송
    end
end

-- F 키 입력 감지
UserInputService.InputBegan:Connect(onFKeyPressed)

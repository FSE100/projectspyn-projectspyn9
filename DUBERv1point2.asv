    %----------------------------------------------------------------
    %THINGS TO DO:
    %Make a new script and calibrate turns(left/right) and move straight
    %
    %Test Car through maze
    %
    %Get a feel for keyboard controls
    %
    %Adjust the part where the car mvoes for a few seconds after a turn(is
    %it too much or not enough?)
    %
    %MAYBE adjust build of touch sensor? I still keep seeing touch sensor
    %struggling to touch wall because the physical sensor keeps moving back
    %cause no support
    
    % ---------------------------------------------------------------

    %KEY:
    
    %KEYBOARD:
    % so the arrow keys do not stop the motors, I use a combination of
    % pressing a key and then pressing "c" to get accurate movement. There
    % isn't much delay so I''m thinking it's best way to move(test it out!)
    
    %A is left Motor, B is right.
    
    %Move straight:
    %
    %
    
    %Move ninety right:
    %
    %
    %Move ninety left:
    %
    %
    
%setting up color,ultraonic sensors   
brick.SetColorMode(3, 2);
distance = brick.UltrasonicDist(4);
%Variables to control that manual control isn't triggered if dropped of
%area reached before pick up
pickedUp = 0;
droppedOff = 0;

global key
while 1
    
    %resetting motor angle
    brick.ResetMotorAngle('AB');
    
    %every loop, sesnors update variables "color","touch" and, 
    %"distance"
    brick.SetColorMode(3, 2);
    color = brick.ColorCode(3);
    distance = brick.UltrasonicDist(4);
    touch = brick.TouchPressed(2);
    
    display(color);
    %display(distance);
   
    %Car reaches a "stop sign"
    %Will suddenly stop, wait 3 seconds and then continue
    if color == 5 %red
      brick.StopMotor('AB','Brake');
      pause(3);
      brick.MoveMotor('AB', -50);
      pause(1);
    end
    
    

    %By default, car will always move forward
    brick.MoveMotor('A',-45);
    brick.MoveMotor('B',-48);
    
    
     
    %Sensor is touched
    if touch
        brick.beep();
        %Stops motors, then turns back for 1 second
        brick.StopMotor('AB', 'Brake');
        brick.MoveMotor('AB', 50);
        pause(1);
        %turns 90 degrees left
        brick.ResetMotorAngle('AB');
        brick.MoveMotorAngleRel('B', -50, 480, 'Brake');
        brick.MoveMotorAngleRel('A', 50, 480, 'Brake');
        pause(1.5);
        brick.StopMotor('AB','Brake');
        %Moves forward 1 unit
        brick.MoveMotor('A',-45);
        brick.MoveMotor('B',-48);
        pause(3);
    end
    
    %Ultraonic detects open area for right turn
    if distance > 50 
        brick.beep();
        %car will move a little bit forward first for 1.2 second
        brick.MoveMotor('A',-46);
        brick.MoveMotor('B',-48);
        pause(1.5);
        %stops and turns nintey degrees right then brakes
        brick.ResetMotorAngle('AB');
        brick.StopMotor('AB', 'Brake');
        brick.MoveMotorAngleRel('A', -50, 480, 'Brake');
        brick.MoveMotorAngleRel('B', 50, 480, 'Brake');
        pause(1.25);
        brick.StopMotor('AB','Brake');
        %moves forward for 3 seconds
        brick.MoveMotor('A',-48);
        brick.MoveMotor('B',-48);
        pause(3);
           
    end
    
    
    %Car reaches pickup area, signified by color blue
    if color == 2 && pickedUp == 0 && droppedOff == 0  
        brick.StopMotor('AB');
        InitKeyboard();
        %Keyboard controls for claw and car
        while 1
            pause(0.1);
            switch key
                case 'uparrow'
                    disp('Up Arrow Pressed!');
                    brick.MoveMotor('B',-40);
                    brick.MoveMotor('A',-50);

                    
                case 'downarrow'
                    disp('Down Arrow Pressed');
                    brick.MoveMotor('B',40);
                    brick.MoveMotor('A',50);

                    
                case 'leftarrow'
                    disp('Left Arrow pressed');
                    brick.MoveMotor('A', 28);
                    brick.MoveMotor('B', -30);
                    
                    
                case 'rightarrow'
                    disp('Right Arrow Pressed!');
                    brick.MoveMotor('A', -30);
                    brick.MoveMotor('B', 28);
                    
                case 'o'
                    disp('Claw opening')
                    brick.MoveMotor('C',30);
                 
                    
                    
                case 'p'
                    disp('Claw closing')
                    brick.MoveMotor('C',-30);
                    
                case 'c'
                    disp('All Moptors Stopped!')
                    brick.StopMotor('ABC');
                    
                case 0
                    disp('No Key Pressed!');
                    
                case 'q'
                    pickedUp=1;
                    break;
                    
            
                    
            end
        end
    end
    
    %Car reaches pickup area and the person is picked up
    if color == 3 && pickedUp == 1 && droppedOff == 0
        brick.StopMotor('AB');
        InitKeyboard();
        %Keyboard controls for claw and car
        while 1
            pause(0.1);
            switch key
                case 'uparrow'
                    disp('Up Arrow Pressed!');
                    brick.MoveMotor('B',-40);
                    brick.MoveMotor('A',-50);

                    
                case 'downarrow'
                    disp('Down Arrow Pressed');
                    brick.MoveMotor('B',40);
                    brick.MoveMotor('A',50);

                    
                case 'leftarrow'
                    disp('Left Arrow pressed');
                    brick.MoveMotor('A', 28);
                    brick.MoveMotor('B', -30);
                    
                    
                case 'rightarrow'
                    disp('Right Arrow Pressed!');
                    brick.MoveMotor('A', -30);
                    brick.MoveMotor('B', 28);
                    
                case 'o'
                    disp('Claw opening')
                    brick.MoveMotor('C',30);
                 
                    
                    
                case 'p'
                    disp('Claw closing')
                    brick.MoveMotor('C',-30);
                    
                case 'c'
                    disp('All Moptors Stopped!')
                    brick.StopMotor('ABC');
                    
                case 0
                    disp('No Key Pressed!');
                    
                case 'q'
                    pickedUp=1;
                    break;
                    
            
            end
        end
    end
    
    
    
end

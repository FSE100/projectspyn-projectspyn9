brick.ResetMotorAngle('AB');        
brick.MoveMotorAngleRel('A', -50, 480, 'Brake');
brick.MoveMotorAngleRel('B', 50, 480, 'Brake');
pause(1.25);
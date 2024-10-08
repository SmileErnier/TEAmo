//Input do Player (nmrl esse fdp fica enchendo o saco para ficar no create, mas não funciona quando eu taco no create, então fds)
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_interact = keyboard_check_pressed(ord("E"));

input_direction = point_direction(0,0,key_right-key_left,key_down-key_up);
input_magnitude = (key_right-key_left != 0) or (key_down-key_up != 0);
input_direction = point_direction(0,0,key_right-key_left,key_down-key_up);
input_magnitude = (key_right-key_left != 0) or (key_down-key_up != 0);

//Calculo de movimentação
h_speed = lengthdir_x(input_magnitude * walk_speed, input_direction);
v_speed = lengthdir_y(input_magnitude * walk_speed, input_direction);

//Colisão e Movimentação
PlayerCol();

//Update dos sprites
var _oldsprite = sprite_index;
if (input_magnitude !=0)
{
	direction = input_direction;
	sprite_index = sprite_run;
}else sprite_index = sprite_idle;
if (_oldsprite != sprite_index) local_frame = 0

PlayerAnimateSprite()
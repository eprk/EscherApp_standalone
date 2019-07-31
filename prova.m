screens=Screen('Screens');
screenNumber=max(screens);

Screen('Preference', 'SkipSyncTests', 1)
[window, rect]=Screen('OpenWindow',screenNumber);
%Note with Textures you need to first make them and then draw them.
IM1=rand(100,100,3)*255;
IM2= randn(100,100,3)*255;
tex(1) = Screen('MakeTexture', window, IM1);
tex(2) = Screen('MakeTexture', window, IM2);
Screen('DrawTextures', window, tex([1 2 1 2]), [], [100 100 400 400; 400 350 550 500; 600 600 800 800; 100 500 200 550]', rand(4,1)*360);
Screen('DrawTexture', window, tex(2), []);

Screen('Flip',window)

%%
Screen('CloseAll');

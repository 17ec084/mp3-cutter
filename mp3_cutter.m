function mp3_cutter(audio,start_h,start_m,start_s,stop_h,stop_m,stop_s,output_name)

[y,Fs]=audioread(audio);
info = audioinfo(audio);
y = y((end/(info.Duration))*(start_h*3600+start_m*60+start_s)+1:(end/(info.Duration))*(stop_h*3600+stop_m*60+stop_s)-1);
%y‚Ìˆê•”‚ðŽæ“¾‚·‚é
audiowrite(output_name,y,Fs);

end


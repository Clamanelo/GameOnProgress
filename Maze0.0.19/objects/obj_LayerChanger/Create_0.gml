var layers = ["EffectHeatHaze","EffectPosterise","EffectDistorce","EffectFractalNoise"];
for(var i=0;i<array_length(layers);i++)
layer_set_visible(layer_get_id(layers[i]),true);
instance_destroy();
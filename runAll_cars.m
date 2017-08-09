function runAll_vot15

    %visualization = true;
    %gpus = 1;
    path = '/dados/dissertacao/test_vot_all-50/';

    seq={
        'dir_car_aa'
        'dir_car_ab'
        'dir_car_ac'
        'dir_car_ad'
        'dir_car_ae'
        'dir_car_af'
        'dir_car_ag'
        'dir_car_ah' 
        'dir_car_ai'
        'dir_car_aj'
        'dir_car_ak'
        'dir_car_al'
        'dir_car_am'
        'dir_car_an'
        'dir_car_ao'
    };

    for s=1:numel(seq)
        disp([path seq{s}]);
        run_tracker([path seq{s}], seq{s});
    end
end

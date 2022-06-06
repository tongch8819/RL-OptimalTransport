# if [ $# != 1 ]; then
    # echo "Usage: $0 [seed] [env:HalfCheetah-v3]"
    # exit 1
# fi
# 
# seed=$1
# env=$2
env=CartPole-v1
# env=HalfCheetah-v3
# env=Hopper-v3
# env=Walker2d-v3
python check_env_existence.py $env
if [ $? -ne 0 ]; then
    echo "Environment: $env not exist. Double check your env name."
    exit 1
fi

for seed in 1 2 3 4 5; do
for algo in wtrpo; do
    exp_name=${algo}_${env}
    log_dir=exp/$exp_name/${exp_name}_s${seed}
    mkdir -p $log_dir
    python $algo.py exp \
    --env $env \
    --seed $seed \
    --exp_name $exp_name \
    > $log_dir/training.log 2>&1 &
    echo "Task PID:" $!
done
done


# python plot.py exp/trpo/trpo_s0/ exp/wtrpo/wtrpo_s0/ -l trpo wtrpo
# python plot.py exp

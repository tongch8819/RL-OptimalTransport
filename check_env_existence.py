import gym
import argparse

def check_existence(env_name):
    try:
        # env = gym.make('CartPole-v1')
        env = gym.make(env_name)
        return 0
    except:
        return 1

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("env_name", type=str)
    args = parser.parse_args()
    
    if not check_existence(args.env_name):
        # print(f"{args.env_name} is ready to start.")
        exit(0)
    else:
        # print("Error")
        exit(1)
    # print(env.observation_space)
    # print(env.observation_space.high)
    # print(env.observation_space.low)
    # print(env.action_space)

if __name__ == "__main__":
    main()

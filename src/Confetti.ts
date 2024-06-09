import { NativeModules } from 'react-native';

interface Options {
  duration: number;
}

async function start(options: Options): Promise<void> {
  const duration = options.duration ?? 2000;
  return await NativeModules.RNConfetti.start({
    duration: duration / 1000,
  });
}

async function stop() {
  NativeModules.RNConfetti.stop();
}

export const Confetti = {
  start,
  stop,
};

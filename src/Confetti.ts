import { NativeModules } from 'react-native';

interface Options {
  duration: number;
}

async function start(options: Options): Promise<void> {
  return await NativeModules.RNConfetti.start(options);
}

async function stop() {
  NativeModules.RNConfetti.stop();
}

export const Confetti = {
  start,
  stop
}
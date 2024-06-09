import { NativeModules } from 'react-native';

interface Options {
  title?: string;
  message?: string;
  duration?: number;
  icon?: 'done' | 'error' | 'spinner' | 'heart';
  haptic?: 'success' | 'warning' | 'error' | 'none';
}

async function show(options: Options): Promise<void> {
  const duration = options.duration ?? 2000;
  return await NativeModules.RNAlert.show({
    title: '',
    message: '',
    haptic: 'none',
    icon: 'done',
    ...options,
    duration: duration / 1000,
  });
}

export async function dismissAll() {
  NativeModules.RNAlert.dismissAll();
}

export const Alert = {
  show,
  dismissAll,
};

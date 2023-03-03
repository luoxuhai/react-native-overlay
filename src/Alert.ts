import { NativeModules } from 'react-native';

interface Options {
  title?: string;
  message?: string;
  duration?: number;
  preset?: 'done' | 'error' | 'spinner';
  haptic?: 'success' | 'warning' | 'error' | 'none';
}

 async function show(options: Options): Promise<void> {
  return await NativeModules.RNAlert.show({
    title: '',
    message: '',
    haptic: 'none',
    ...options,
  });
}

export async function dismissAll() {
  NativeModules.RNAlert.dismissAll();
}

export const Alert = {
  show,
  dismissAll
}
import { NativeModules } from 'react-native';

interface Options {
  title?: string;
  message?: string;
  preset?: 'done' | 'error';
  haptic?: 'success' | 'warning' | 'error' | 'none';
}

async function show(options: Options): Promise<void> {
  return await NativeModules.RNToast.show({
    title: '',
    message: '',
    ...options,
  });
}

export const Toast = {
  show,
};

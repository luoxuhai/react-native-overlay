import { NativeModules } from 'react-native';

interface Options {
  title?: string;
  message?: string;
  icon?: 'done' | 'error';
  haptic?: 'success' | 'warning' | 'error' | 'none';
}

async function show(options: Options): Promise<void> {
  return await NativeModules.RNToast.show({
    title: '',
    message: '',
    icon: 'done',
    haptic: 'none',
    ...options,
  });
}

export const Toast = {
  show,
};

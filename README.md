# react-native-overlay

## Installation

```sh
npm install @react-native-library/overlay
```

## Usage

### Toast

```ts
import { Toast } from '@react-native-library/overlay';

Toast.show({
  title: "Hello";
  message: "World";
  /**
   * 'done' | 'error'
   */
  icon: 'done';
  /**
   * 'success' | 'warning' | 'error' | 'none';
   */
  haptic: 'success';
})
```

### Alert

```ts
import { Alert } from '@react-native-library/overlay';

Alert.show({
  title: "Hello";
  message: "World";
  /**
   * 'done' | 'error' | 'spinner'
   */
  icon: 'done';
  /**
   * 'success' | 'warning' | 'error' | 'none';
   */
  haptic: 'success';
  /**
   * Optional, duration in milliseconds
   */
  duration: 2000;
})

Alert.dismissAll();

```

### Confetti

```ts
import { Confetti } from '@react-native-library/overlay';

Confetti.show({
  /**
   * Optional, duration in milliseconds
   */
  duration: 2000;
})
```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT

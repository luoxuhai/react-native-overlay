# @react-native-library/overlay

## Installation

```sh
npm install @react-native-library/overlay
```

## Usage

### Toast

```ts
import { Toast } from '@react-native-library/overlay';

Toast.show({
  title: "xxx";
  message: "xxx";
  /**
   * 'done' | 'error'
   */
  preset: 'done';
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
  title: "xxx";
  message: "xxx";
  /**
   * 'done' | 'error' | 'spinner'
   */
  preset: 'done';
  /**
   * 'success' | 'warning' | 'error' | 'none';
   */
  haptic: 'success';
  /**
   * Optional, duration in seconds
   */
  duration: 2;
})

Alert.dismissAll();

```

### Confetti

```ts
import { Confetti } from '@react-native-library/overlay';

Confetti.show({
  /**
   * Optional, duration in seconds
   */
  duration: 2;
})
```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT

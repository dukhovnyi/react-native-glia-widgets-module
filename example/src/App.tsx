import * as React from 'react';

import { StyleSheet, View, Text, Button } from 'react-native';
import GliaWidgetsModule from 'react-native-glia-widgets-module';

export default function App() {
  const [result, setResult] = React.useState<number | undefined>();

  React.useEffect(() => {
    GliaWidgetsModule.configure('', '', '', '');
  }, []);

  return (
    <View style={styles.container}>
      <Text>Result: {result}</Text>
      <Button
        title="Start engagement"
        onPress={() => {
          GliaWidgetsModule.startChat();
        }}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});

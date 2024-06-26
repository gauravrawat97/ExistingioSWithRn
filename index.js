import React from "react";
import {
  AppRegistry,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from "react-native";

const RNHighScores = (props) => {
  const { action, platform } = props?.initialProps;
  return (
    <View style={styles.container}>
      <Text style={styles.highScoresTitle}>Welcome to React Native Screen</Text>
      <Text style={styles.highScoresTitle}>
        You pressed {action} on {platform}
      </Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "white",
  },
  highScoresTitle: {
    fontSize: 20,
    textAlign: "center",
    margin: 10,
  },
  scores: {
    textAlign: "center",
    color: "#333333",
    marginBottom: 5,
  },
});

// Module name
AppRegistry.registerComponent("RNHighScores", () => RNHighScores);

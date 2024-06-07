import React from "react";
import {
  AppRegistry,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from "react-native";

const RNHighScores = ({ scores }) => {
  const contents = scores.map((score) => (
    <Text key={score.name}>
      {score.name}:{score.value}
      {"\n"}
    </Text>
  ));
  return (
    <View style={styles.container}>
      <TouchableOpacity>
        <Text>Back To Native</Text>
      </TouchableOpacity>
      <Text style={styles.highScoresTitle}>2048 High Scores!</Text>
      <Text style={styles.scores}>{contents}</Text>
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

package com.example.myapplication;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;

import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;

import android.view.View;

import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

import com.example.myapplication.databinding.ActivityMainBinding;

import android.view.Menu;
import android.view.MenuItem;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button button = findViewById(R.id.btnRn);
       Button button2 = findViewById(R.id.btnRn2);

        button.setOnClickListener(view -> {
            Intent intent = new Intent(MainActivity.this, MyReactActivity.class);

            Bundle intials = new Bundle();

            intials.putString("action", "button one");
            intials.putString("platform", "android");
            intent.putExtra("initialProps",intials);
        startActivity(intent);
        });
        button2.setOnClickListener(view -> {
            Intent intent = new Intent(MainActivity.this, MyReactActivity.class);

            Bundle intials = new Bundle();

            intials.putString("action", "button two");
            intials.putString("platform", "android");
            intent.putExtra("initialProps",intials);
            startActivity(intent);
        });
    }
}
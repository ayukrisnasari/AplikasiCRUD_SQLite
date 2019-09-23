package com.example.n.tugasbesarkelompok;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.bumptech.glide.Glide;

import java.util.ArrayList;

import static android.support.constraint.Constraints.TAG;

public class RecyclerViewAdapterDua extends RecyclerView.Adapter<RecyclerViewAdapterDua.ViewHolder> {

    private final int count;
    private ArrayList<String> mPenyakitName = new ArrayList<>();
    private ArrayList<String> mPenyakitPic = new ArrayList<>();
    private ArrayList<String> mPenyakitDesc = new ArrayList<>();
    private ArrayList<String> mTanamanKhasiat = new ArrayList<>();
    private Context mContext;

    public RecyclerViewAdapterDua(Context mContext, ArrayList<String> mPenyakitName,
                                  ArrayList<String> mPenyakitPic, ArrayList<String> mPenyakitDesc,ArrayList<String> mKhas, int count) {
        this.mPenyakitName = mPenyakitName;
        this.mPenyakitPic = mPenyakitPic;
        this.mPenyakitDesc = mPenyakitDesc;
        this.mTanamanKhasiat = mKhas;
        this.mContext = mContext;
        this.count = count;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.horizontal_item_list,parent,false);
        return new RecyclerViewAdapterDua.ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, final int position) {
        Log.d(TAG, "onBindViewHolder: called : "+ mPenyakitName.get(position));

        Glide.with(mContext)
                .asBitmap()
                .load(mPenyakitPic.get(position))
                .into(holder.image);

        holder.name.setText(mPenyakitName.get(position));

        holder.CardViewparent.setOnClickListener(new View.OnClickListener() {
            @Override
            public vo
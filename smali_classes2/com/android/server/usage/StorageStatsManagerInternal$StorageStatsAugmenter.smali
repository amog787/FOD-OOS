.class public interface abstract Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;
.super Ljava/lang/Object;
.source "StorageStatsManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/StorageStatsManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorageStatsAugmenter"
.end annotation


# virtual methods
.method public abstract augmentStatsForPackage(Landroid/content/pm/PackageStats;Ljava/lang/String;IZ)V
.end method

.method public abstract augmentStatsForUid(Landroid/content/pm/PackageStats;IZ)V
.end method

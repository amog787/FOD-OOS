.class public abstract Lcom/android/server/usage/StorageStatsManagerInternal;
.super Ljava/lang/Object;
.source "StorageStatsManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract registerStorageStatsAugmenter(Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;Ljava/lang/String;)V
.end method

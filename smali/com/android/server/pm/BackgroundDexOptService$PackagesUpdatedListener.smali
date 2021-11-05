.class public interface abstract Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;
.super Ljava/lang/Object;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/BackgroundDexOptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackagesUpdatedListener"
.end annotation


# virtual methods
.method public abstract onPackagesUpdated(Landroid/util/ArraySet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.class public interface abstract Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;
.super Ljava/lang/Object;
.source "AppsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AppsFilter$StateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CurrentStateCallback"
.end annotation


# virtual methods
.method public abstract currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            ")V"
        }
    .end annotation
.end method

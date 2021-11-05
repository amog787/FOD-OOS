.class public interface abstract Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
.super Ljava/lang/Object;
.source "GlobalActionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GlobalActionsListener"
.end annotation


# virtual methods
.method public abstract onGlobalActionsAvailableChanged(Z)V
.end method

.method public abstract onGlobalActionsDismissed()V
.end method

.method public abstract onGlobalActionsShown()V
.end method

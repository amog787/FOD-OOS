.class public interface abstract Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
.super Ljava/lang/Object;
.source "IOemNetdUnsolicitedEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;,
        Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onRegistered()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

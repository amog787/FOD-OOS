.class public interface abstract Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;
.super Ljava/lang/Object;
.source "KeyguardStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateCallback"
.end annotation


# virtual methods
.method public abstract onKeyguardFingerprintChanged(III)V
.end method

.method public abstract onShowingChanged()V
.end method

.method public abstract onTrustedChanged()V
.end method

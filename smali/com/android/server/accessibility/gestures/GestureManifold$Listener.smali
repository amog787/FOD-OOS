.class public interface abstract Lcom/android/server/accessibility/gestures/GestureManifold$Listener;
.super Ljava/lang/Object;
.source "GestureManifold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/GestureManifold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
.end method

.method public abstract onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method

.method public abstract onGestureCancelled(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
.end method

.method public abstract onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
.end method

.method public abstract onGestureStarted()Z
.end method

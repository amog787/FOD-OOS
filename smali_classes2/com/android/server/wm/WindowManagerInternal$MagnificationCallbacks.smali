.class public interface abstract Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MagnificationCallbacks"
.end annotation


# virtual methods
.method public abstract onMagnificationRegionChanged(Landroid/graphics/Region;)V
.end method

.method public abstract onRectangleOnScreenRequested(IIII)V
.end method

.method public abstract onRotationChanged(I)V
.end method

.method public abstract onUserContextChanged()V
.end method

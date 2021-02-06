.class public interface abstract Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
.super Ljava/lang/Object;
.source "AbstractAccessibilityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SystemSupport"
.end annotation


# virtual methods
.method public abstract getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
.end method

.method public abstract getCurrentUserIdLocked()I
.end method

.method public abstract getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;
.end method

.method public abstract getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;
.end method

.method public abstract getMagnificationController()Lcom/android/server/accessibility/MagnificationController;
.end method

.method public abstract getMotionEventInjectorForDisplayLocked(I)Lcom/android/server/accessibility/MotionEventInjector;
.end method

.method public abstract getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
.end method

.method public abstract isAccessibilityButtonShown()Z
.end method

.method public abstract onClientChangeLocked(Z)V
.end method

.method public abstract persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
.end method

.method public abstract setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
.end method

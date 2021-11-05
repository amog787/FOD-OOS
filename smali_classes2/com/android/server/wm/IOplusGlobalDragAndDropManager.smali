.class public interface abstract Lcom/android/server/wm/IOplusGlobalDragAndDropManager;
.super Ljava/lang/Object;
.source "IOplusGlobalDragAndDropManager.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "IOplusGlobalDragAndDropManager"


# virtual methods
.method public IfCancelUnSupportDrop(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public hideZoomWindowIfNeed(FFLcom/android/server/wm/DisplayContent;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 25
    return-void
.end method

.method public ifCurWinSupportDrop(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public setGlobalDragAndDropCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 31
    return-void
.end method

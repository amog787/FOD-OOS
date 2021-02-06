.class Lcom/android/server/wm/TaskSnapshotSurface$Window;
.super Lcom/android/internal/view/BaseIWindow;
.source "TaskSnapshotSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Window"
.end annotation


# instance fields
.field private mOuter:Lcom/android/server/wm/TaskSnapshotSurface;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 520
    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    return-void
.end method


# virtual methods
.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "visibleInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;
    .param p5, "reportDraw"    # Z
    .param p6, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p7, "backDropFrame"    # Landroid/graphics/Rect;
    .param p8, "forceLayout"    # Z
    .param p9, "alwaysConsumeSystemBars"    # Z
    .param p10, "displayId"    # I
    .param p11, "displayCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 534
    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    if-eqz v0, :cond_0

    .line 535
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotSurface;->access$300(Lcom/android/server/wm/TaskSnapshotSurface;)I

    move-result v0

    .line 536
    invoke-virtual {p6}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 541
    invoke-static {}, Lcom/android/server/wm/TaskSnapshotSurface;->access$400()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;-><init>(Lcom/android/server/wm/TaskSnapshotSurface;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    :cond_0
    if-eqz p5, :cond_1

    .line 544
    invoke-static {}, Lcom/android/server/wm/TaskSnapshotSurface;->access$400()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 546
    :cond_1
    return-void
.end method

.method public setOuter(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .locals 0
    .param p1, "outer"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 525
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    .line 526
    return-void
.end method

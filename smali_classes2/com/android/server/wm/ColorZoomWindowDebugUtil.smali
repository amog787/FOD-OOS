.class public Lcom/android/server/wm/ColorZoomWindowDebugUtil;
.super Ljava/lang/Object;
.source "ColorZoomWindowDebugUtil.java"


# static fields
.field public static final KEY_TPCONTROLLER_HANDLETAPOUTSIDETASK:Ljava/lang/String; = "TaskPositioningController: handleTapOutsideTask"

.field public static final KEY_TTPEVENTLISTENER_ONPOINTEREVENT:Ljava/lang/String; = "TaskTapPointerEventListener: onPointerEvent"

.field public static final KEY_ZOOMWINDOWSERVICE_HANDLETAPOUTSIDETASK:Ljava/lang/String; = "ColorZoomWindowManagerService: handleTapOutsideTask"

.field private static final TAG:Ljava/lang/String; = "ColorZoomWindowDebugUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs debugLogUtil(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3c793c6f

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, -0x350f0fbd    # -7895073.5f

    if-eq v0, v1, :cond_2

    const v1, 0x399f5785

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "TaskPositioningController: handleTapOutsideTask"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "ColorZoomWindowManagerService: handleTapOutsideTask"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "TaskTapPointerEventListener: onPointerEvent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key for zoom window dynamic debug: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowDebugUtil"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 46
    :cond_4
    sget-boolean v0, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->DEBUG_LIFE_CYCLE:Z

    if-eqz v0, :cond_7

    .line 47
    invoke-static {p0, p1}, Lcom/android/server/wm/ColorZoomWindowDebugUtil;->logZoomWindowServiceHandleTapOutSideTask(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 40
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->DEBUG_LIFE_CYCLE:Z

    if-eqz v0, :cond_7

    .line 41
    invoke-static {p0, p1}, Lcom/android/server/wm/ColorZoomWindowDebugUtil;->logTPControllerHandleTapOutSideTask(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 34
    :cond_6
    sget-boolean v0, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->DEBUG_LIFE_CYCLE:Z

    if-eqz v0, :cond_7

    .line 35
    invoke-static {p0, p1}, Lcom/android/server/wm/ColorZoomWindowDebugUtil;->logTTPEventListenerOnPointerEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_7
    :goto_2
    return-void
.end method

.method private static varargs logTPControllerHandleTapOutSideTask(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 77
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowDebugUtil;->verityParamsType()V

    .line 79
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 80
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 81
    .local v1, "x":I
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 83
    .local v2, "y":I
    const-string v3, ", y = "

    const-string v4, "ColorZoomWindowDebugUtil"

    if-nez v0, :cond_0

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": task is null, x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void
.end method

.method private static varargs logTTPEventListenerOnPointerEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 59
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowDebugUtil;->verityParamsType()V

    .line 61
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/Region;

    .line 62
    .local v0, "touchExcludeRegion":Landroid/graphics/Region;
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 63
    .local v1, "x":I
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 65
    .local v2, "y":I
    const-string v3, "ColorZoomWindowDebugUtil"

    if-nez v0, :cond_0

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "touchExcludeRegion == null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 69
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    const-string v4, "TouchExcludeRegion is not zoom window excludeRegion"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    return-void
.end method

.method private static varargs logZoomWindowServiceHandleTapOutSideTask(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowDebugUtil;->verityParamsType()V

    .line 93
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    .local v0, "x":I
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 96
    .local v1, "y":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColorZoomWindowDebugUtil"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method private static verityParamsType()V
    .locals 0

    .line 101
    return-void
.end method

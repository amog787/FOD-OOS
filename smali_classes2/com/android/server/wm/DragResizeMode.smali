.class Lcom/android/server/wm/DragResizeMode;
.super Ljava/lang/Object;
.source "DragResizeMode.java"


# static fields
.field static final DRAG_RESIZE_MODE_DOCKED_DIVIDER:I = 0x1

.field static final DRAG_RESIZE_MODE_FREEFORM:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isModeAllowedForStack(Lcom/android/server/wm/ActivityStack;I)Z
    .locals 4
    .param p0, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p1, "mode"    # I

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    .line 45
    return v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    return v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

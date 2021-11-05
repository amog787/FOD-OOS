.class public Lcom/android/server/wm/WindowStateInjector;
.super Ljava/lang/Object;
.source "WindowStateInjector.java"


# static fields
.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    const-class v0, Lcom/android/server/wm/WindowStateInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/WindowStateInjector;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowStateInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lockOrientationWhenShowDialog(Ljava/lang/String;ZLcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "wasVisible"    # Z
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 27
    sget-boolean v0, Lcom/android/server/wm/WindowStateInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 28
    return-void

    .line 31
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "com.oneplus.permissionutil"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 35
    :cond_1
    return-void
.end method

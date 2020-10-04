.class public Lcom/android/server/accessibility/MagnificationController$ControllerContext;
.super Ljava/lang/Object;
.source "MagnificationController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerContext"
.end annotation


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mAnimationDuration:Ljava/lang/Long;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/wm/WindowManagerInternal;Landroid/os/Handler;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "windowManager"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "animationDuration"    # J

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1320
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    .line 1321
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1322
    iput-object p3, p0, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 1323
    iput-object p4, p0, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    .line 1324
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mAnimationDuration:Ljava/lang/Long;

    .line 1325
    return-void
.end method


# virtual methods
.method public getAms()Lcom/android/server/accessibility/AccessibilityManagerService;
    .locals 1

    .line 1340
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object v0
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 1390
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mAnimationDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1356
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMagnificationScale(I)F
    .locals 3
    .param p1, "userId"    # I

    .line 1381
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_scale"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public getWindowManager()Lcom/android/server/wm/WindowManagerInternal;
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method public newValueAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .line 1366
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    return-object v0
.end method

.method public putMagnificationScale(FI)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "userId"    # I

    .line 1373
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_scale"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1375
    return-void
.end method

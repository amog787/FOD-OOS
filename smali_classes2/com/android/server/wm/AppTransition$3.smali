.class Lcom/android/server/wm/AppTransition$3;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;

.field final synthetic val$callback:Landroid/os/IRemoteCallback;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/AppTransition;

    .line 1430
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$3;->this$0:Lcom/android/server/wm/AppTransition;

    iput-object p2, p0, Lcom/android/server/wm/AppTransition$3;->val$callback:Landroid/os/IRemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationEnd$0(Landroid/os/IRemoteCallback;)V
    .locals 0
    .param p0, "x$0"    # Landroid/os/IRemoteCallback;

    .line 1437
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->access$200(Landroid/os/IRemoteCallback;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1436
    iget-object v0, p0, Lcom/android/server/wm/AppTransition$3;->this$0:Lcom/android/server/wm/AppTransition;

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$AppTransition$3$llbNiZO5SMSamZHTNM_5S77eNNU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransition$3$llbNiZO5SMSamZHTNM_5S77eNNU;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition$3;->val$callback:Landroid/os/IRemoteCallback;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1438
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1441
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1432
    return-void
.end method

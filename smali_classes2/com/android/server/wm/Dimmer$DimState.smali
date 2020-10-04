.class Lcom/android/server/wm/Dimmer$DimState;
.super Ljava/lang/Object;
.source "Dimmer.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Dimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DimState"
.end annotation


# instance fields
.field isVisible:Z

.field mAnimateExit:Z

.field mDimLayer:Landroid/view/SurfaceControl;

.field mDimming:Z

.field mDontReset:Z

.field mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field final synthetic this$0:Lcom/android/server/wm/Dimmer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/wm/Dimmer;
    .param p2, "dimLayer"    # Landroid/view/SurfaceControl;

    .line 133
    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    .line 134
    iput-object p2, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    .line 135
    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    .line 136
    new-instance v0, Lcom/android/server/wm/Dimmer$DimAnimatable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/wm/Dimmer$DimAnimatable;-><init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;Lcom/android/server/wm/Dimmer$1;)V

    .line 137
    .local v0, "dimAnimatable":Lcom/android/server/wm/Dimmer$DimAnimatable;
    new-instance v1, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$QYvwJex5H10MFMe0LEzEUs1b2G0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$QYvwJex5H10MFMe0LEzEUs1b2G0;-><init>(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/Dimmer$DimAnimatable;)V

    .line 141
    invoke-static {p1}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Ljava/lang/Runnable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 142
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$Dimmer$DimState(Lcom/android/server/wm/Dimmer$DimAnimatable;)V
    .locals 1
    .param p1, "dimAnimatable"    # Lcom/android/server/wm/Dimmer$DimAnimatable;

    .line 138
    iget-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/android/server/wm/Dimmer$DimAnimatable;->removeSurface()V

    .line 141
    :cond_0
    return-void
.end method

.class Lcom/android/server/wm/Dimmer$DimState;
.super Ljava/lang/Object;
.source "Dimmer.java"


# annotations
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

    .line 135
    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    .line 136
    iput-object p2, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    .line 137
    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    .line 138
    new-instance v0, Lcom/android/server/wm/Dimmer$DimAnimatable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/wm/Dimmer$DimAnimatable;-><init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;Lcom/android/server/wm/Dimmer$1;)V

    .line 139
    .local v0, "dimAnimatable":Lcom/android/server/wm/Dimmer$DimAnimatable;
    new-instance v1, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$wU1YjYaM1_enRLsRLQ25SnC1ECw;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$wU1YjYaM1_enRLsRLQ25SnC1ECw;-><init>(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/Dimmer$DimAnimatable;)V

    .line 143
    invoke-static {p1}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 144
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$Dimmer$DimState(Lcom/android/server/wm/Dimmer$DimAnimatable;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1
    .param p1, "dimAnimatable"    # Lcom/android/server/wm/Dimmer$DimAnimatable;
    .param p2, "type"    # I
    .param p3, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 140
    iget-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/android/server/wm/Dimmer$DimAnimatable;->removeSurface()V

    .line 143
    :cond_0
    return-void
.end method

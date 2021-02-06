.class Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;
.super Lcom/android/server/wm/LocalAnimationAdapter;
.source "FixedRotationAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FixedRotationAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedRotationAnimationAdapter"
.end annotation


# instance fields
.field private final mShow:Z

.field private final mToken:Lcom/android/server/wm/WindowToken;

.field final synthetic this$0:Lcom/android/server/wm/FixedRotationAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FixedRotationAnimationController;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;)V
    .locals 0
    .param p2, "windowAnimationSpec"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p3, "surfaceAnimationRunner"    # Lcom/android/server/wm/SurfaceAnimationRunner;
    .param p4, "show"    # Z
    .param p5, "token"    # Lcom/android/server/wm/WindowToken;

    .line 149
    iput-object p1, p0, Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;->this$0:Lcom/android/server/wm/FixedRotationAnimationController;

    .line 150
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 151
    iput-boolean p4, p0, Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;->mShow:Z

    .line 152
    iput-object p5, p0, Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;->mToken:Lcom/android/server/wm/WindowToken;

    .line 153
    return-void
.end method


# virtual methods
.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "endDeferFinishCallback"    # Ljava/lang/Runnable;

    .line 159
    iget-boolean v0, p0, Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;->mShow:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;->this$0:Lcom/android/server/wm/FixedRotationAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/FixedRotationAnimationController;->access$000(Lcom/android/server/wm/FixedRotationAnimationController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.class Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;
.super Ljava/lang/Object;
.source "DisplayRotation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayRotation$OrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRunnable"
.end annotation


# instance fields
.field final mRotation:I

.field final synthetic this$1:Lcom/android/server/wm/DisplayRotation$OrientationListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation$OrientationListener;I)V
    .locals 0
    .param p2, "rotation"    # I

    .line 1055
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;->this$1:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    iput p2, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;->mRotation:I

    .line 1057
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1062
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;->this$1:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->access$500(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1063
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;->this$1:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;->this$1:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object v2, v2, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->access$600(Lcom/android/server/wm/DisplayRotation;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayRotation;->access$700(Lcom/android/server/wm/DisplayRotation;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;->this$1:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;->mRotation:I

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayRotation;->access$800(Lcom/android/server/wm/DisplayRotation;I)Z

    move-result v0

    .line 1065
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;->this$1:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget v2, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;->mRotation:I

    invoke-static {v1, v2, v0}, Lcom/android/server/wm/DisplayRotation;->access$900(Lcom/android/server/wm/DisplayRotation;IZ)V

    .line 1066
    .end local v0    # "isValid":Z
    goto :goto_0

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;->this$1:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->access$500(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 1070
    :goto_0
    return-void
.end method

.class Lcom/android/server/wm/ActivityTaskManagerService$2;
.super Lcom/android/internal/policy/KeyguardDismissCallback;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field final synthetic val$enterPipRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4343
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$2;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$2;->val$enterPipRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 2

    .line 4346
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$2;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$2;->val$enterPipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 4347
    return-void
.end method

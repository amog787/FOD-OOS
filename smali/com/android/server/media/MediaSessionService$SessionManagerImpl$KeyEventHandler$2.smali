.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createSingleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZ)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field final synthetic val$asSystemService:Z

.field final synthetic val$keyEvent:Landroid/view/KeyEvent;

.field final synthetic val$musicOnly:Z

.field final synthetic val$needWakeLock:Z

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$overridden:Z

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pid:I

.field final synthetic val$stream:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;ZLandroid/view/KeyEvent;Ljava/lang/String;IIZZLjava/lang/String;IZ)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 2723
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$overridden:Z

    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$keyEvent:Landroid/view/KeyEvent;

    iput-object p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$packageName:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$pid:I

    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$uid:I

    iput-boolean p7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$asSystemService:Z

    iput-boolean p8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$needWakeLock:Z

    iput-object p9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$opPackageName:Ljava/lang/String;

    iput p10, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$stream:I

    iput-boolean p11, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$musicOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 2726
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->access$6000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V

    .line 2727
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$overridden:Z

    if-eqz v0, :cond_0

    .line 2728
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaKeyDispatcher;->onSingleTap(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 2730
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$pid:I

    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$uid:I

    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$asSystemService:Z

    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$keyEvent:Landroid/view/KeyEvent;

    iget-boolean v8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$needWakeLock:Z

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$opPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$stream:I

    iget-boolean v11, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;->val$musicOnly:Z

    invoke-static/range {v2 .. v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->access$6100(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    .line 2733
    :goto_0
    return-void
.end method

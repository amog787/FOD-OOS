.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createDoubleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZZ)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field final synthetic val$asSystemService:Z

.field final synthetic val$doubleTapOverridden:Z

.field final synthetic val$keyEvent:Landroid/view/KeyEvent;

.field final synthetic val$musicOnly:Z

.field final synthetic val$needWakeLock:Z

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pid:I

.field final synthetic val$singleTapOverridden:Z

.field final synthetic val$stream:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;ZLandroid/view/KeyEvent;ZLjava/lang/String;IIZZLjava/lang/String;IZ)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 2741
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$doubleTapOverridden:Z

    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    iput-boolean p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$singleTapOverridden:Z

    iput-object p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$packageName:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$pid:I

    iput p7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$uid:I

    iput-boolean p8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$asSystemService:Z

    iput-boolean p9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$needWakeLock:Z

    iput-object p10, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$opPackageName:Ljava/lang/String;

    iput p11, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$stream:I

    iput-boolean p12, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$musicOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .line 2744
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->access$6000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V

    .line 2745
    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$doubleTapOverridden:Z

    if-eqz v1, :cond_0

    .line 2746
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaKeyDispatcher;->onDoubleTap(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 2747
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$singleTapOverridden:Z

    if-eqz v1, :cond_1

    .line 2748
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaKeyDispatcher;->onSingleTap(Landroid/view/KeyEvent;)V

    .line 2749
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaKeyDispatcher;->onSingleTap(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 2751
    :cond_1
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$pid:I

    iget v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$uid:I

    iget-boolean v7, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$asSystemService:Z

    iget-object v8, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    iget-boolean v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$needWakeLock:Z

    iget-object v10, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$opPackageName:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$stream:I

    iget-boolean v12, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$musicOnly:Z

    invoke-static/range {v3 .. v12}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->access$6100(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    .line 2753
    iget-object v13, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v14, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$packageName:Ljava/lang/String;

    iget v15, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$pid:I

    iget v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$uid:I

    iget-boolean v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$asSystemService:Z

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    iget-boolean v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$needWakeLock:Z

    iget-object v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$opPackageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$stream:I

    iget-boolean v7, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$musicOnly:Z

    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    invoke-static/range {v13 .. v22}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->access$6100(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    .line 2756
    :goto_0
    return-void
.end method

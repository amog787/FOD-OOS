.class Lcom/android/server/am/ProcessList$1;
.super Ljava/lang/Object;
.source "ProcessList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ProcessList;

    .line 760
    iput-object p1, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 764
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->access$100(Lcom/android/server/am/ProcessList;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 765
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 766
    .local v2, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->access$200(Lcom/android/server/am/ProcessList;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 767
    return-void

    .line 769
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpORMServiceInjector;->getOMMKillEnable()Z

    move-result v2

    .line 770
    .local v2, "ommKillEnabled":Z
    sget-boolean v3, Lcom/android/server/am/ProcessList;->mOmmKillEnabled:Z

    if-eq v2, v3, :cond_1

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ommKillEnable status changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , and now will set the lowlevel and adj of oom"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v3, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_1

    .line 775
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 776
    .local v3, "p":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 777
    iget v4, v3, Landroid/graphics/Point;->x:I

    if-eqz v4, :cond_1

    iget v4, v3, Landroid/graphics/Point;->y:I

    if-eqz v4, :cond_1

    .line 778
    iget-object v4, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/ProcessList;->access$300(Lcom/android/server/am/ProcessList;IIZ)V

    .line 782
    .end local v3    # "p":Landroid/graphics/Point;
    :cond_1
    return-void
.end method

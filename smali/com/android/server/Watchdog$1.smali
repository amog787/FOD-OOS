.class Lcom/android/server/Watchdog$1;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Watchdog;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;

.field final synthetic val$finalStack:Ljava/io/File;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/Watchdog;
    .param p2, "x0"    # Ljava/lang/String;

    .line 710
    iput-object p1, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    iput-object p3, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/Watchdog$1;->val$finalStack:Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 714
    iget-object v0, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    iget-object v0, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    iget-object v1, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/Watchdog$1;->val$finalStack:Ljava/io/File;

    const/4 v11, 0x0

    const-string/jumbo v2, "watchdog"

    const-string/jumbo v4, "system_server"

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 719
    :cond_0
    const/16 v0, 0xb9

    iget-object v1, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(ILjava/lang/String;)I

    .line 720
    return-void
.end method

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

.field final synthetic val$report:Ljava/lang/StringBuilder;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/Watchdog;
    .param p2, "name"    # Ljava/lang/String;

    .line 751
    iput-object p1, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    iput-object p3, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/Watchdog$1;->val$report:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/Watchdog$1;->val$finalStack:Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 755
    iget-object v0, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    invoke-static {v0}, Lcom/android/server/Watchdog;->access$100(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    invoke-static {v0}, Lcom/android/server/Watchdog;->access$100(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/Watchdog$1;->val$report:Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/Watchdog$1;->val$finalStack:Ljava/io/File;

    const/4 v11, 0x0

    .line 756
    const-string/jumbo v2, "watchdog"

    const-string/jumbo v4, "system_server"

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 760
    :cond_0
    const/16 v0, 0xb9

    iget-object v1, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 762
    return-void
.end method

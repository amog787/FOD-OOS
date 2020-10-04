.class Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;
.super Ljava/lang/Thread;
.source "DynamicCodeLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DynamicCodeLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleLoggingThread"
.end annotation


# instance fields
.field private final mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/server/pm/DynamicCodeLoggingService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .line 142
    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 143
    const-string p1, "DynamicCodeLoggingService_IdleLoggingJob"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 144
    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    .line 145
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 153
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$000()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v0

    .line 154
    .local v0, "dynamicCodeLogger":Lcom/android/server/pm/dex/DynamicCodeLogger;
    invoke-virtual {v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    invoke-static {v3}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$100(Lcom/android/server/pm/DynamicCodeLoggingService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Stopping IdleLoggingJob run at scheduler request"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 160
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/server/pm/dex/DynamicCodeLogger;->logDynamicCodeLoading(Ljava/lang/String;)V

    .line 161
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-object v2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/DynamicCodeLoggingService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 167
    return-void
.end method
